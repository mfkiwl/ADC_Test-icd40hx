/*-
 * Copyright (c) 2012-2013 Jan Breuer,
 *
 * All Rights Reserved
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHORS ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
 * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * @file   scpi-def.c
 * @date   Thu Nov 15 10:58:45 UTC 2012
 *
 * @brief  SCPI parser test
 *
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "scpi_def.h"
#include "scpi/scpi.h"
#include "main.h"
#include "cmsis_os.h"
#include "bsp_74hc595.h"


extern uint8_t log_status;
extern volatile uint8_t rx_data[6];
extern unsigned char  shiftRegisters[2];
extern struct cfg_struct dmm_cfg;
extern struct cal_struct cal_data;

extern UART_HandleTypeDef huart2;

scpi_choice_def_t boolean_select[] =
{
    {"OFF", 0},
    {"ON", 1},
	{"0", 0},
	{"1", 1},
    SCPI_CHOICE_LIST_END
};

long result, num;


long adc_get_raw (unsigned char * input_data)
{
    long res,num;

    unsigned int adc_runup, adc_rundown, adc_rundown_neg;
    unsigned int coeff_N;
    adc_rundown_neg = 1;
    if (input_data[0]&0x40) adc_rundown_neg = 0;
    adc_runup = ((((unsigned int)(input_data[0]))<<8) | (((unsigned int)(input_data[1]))<<0))&0x3FFF;
    adc_rundown = (((unsigned int)(input_data[2]))<<8) | (((unsigned int)(input_data[3]))<<0);
    num = adc_runup;
    num = num * 100000;
    num = num + adc_rundown;
    res = adc_runup;
    coeff_N = 50000;
    res = res - 100;
    res = res * coeff_N;
    res = res/1;
    if (adc_rundown_neg==0) res = res + adc_rundown;
    else res = res - adc_rundown;
    return res;
}

static scpi_result_t SCPI_ConfigureVoltageDC(scpi_t * context)
{
	scpi_number_t param_range;
		float valid_ranges[4] = {1, 10, 100};
		uint8_t is_valid = 0;
		uint16_t switch_path = 0;


		if(!SCPI_ParamNumber(context, scpi_special_numbers_def, &param_range, TRUE)){
			return SCPI_RES_ERR;
		}

		if(param_range.special){
			switch(param_range.content.tag)	{
			case SCPI_NUM_MIN: dmm_cfg.range = 1; break;
			case SCPI_NUM_MAX: dmm_cfg.range = 100; break;
			case SCPI_NUM_DEF: dmm_cfg.range = 100; break;
			default: SCPI_ErrorPush(context, SCPI_ERROR_ILLEGAL_PARAMETER_VALUE); return SCPI_RES_ERR;
			}
		}
		else{
			if((SCPI_UNIT_VOLT == param_range.unit) && (SCPI_UNIT_NONE == param_range.unit)){
				for(uint8_t i = 0; i < 3; i++){
					if(valid_ranges[i] == param_range.content.value){
						is_valid = 1;
						break;
					}
					else{
						is_valid = 0;
					}
				}

				if(is_valid){

				}
				else{
					SCPI_ErrorPush(context, SCPI_ERROR_DATA_OUT_OF_RANGE);
					return SCPI_RES_ERR;
				}
			}
			else{
				SCPI_ErrorPush(context, SCPI_ERROR_INVALID_SUFFIX);
				return SCPI_RES_ERR;
			}
		}

		switch(dmm_cfg.range )
		{
		case 1:   shiftRegisters[0] = SR_K1; shiftRegisters[1] = SR_M11 | SR_M24 | SR_M21; break;
		case 10:  shiftRegisters[0] = SR_K1; shiftRegisters[1] = SR_M11 | SR_M24 | SR_M22; break;
		case 100: shiftRegisters[0] = SR_K2 | SR_K4; shiftRegisters[1] = SR_M11 | SR_M24 | SR_M22; break;
		}

		 ShiftRegister74HC595_update();

	return SCPI_RES_OK;
}

static scpi_result_t SCPI_MeasureVoltageDCQ(scpi_t * context)
{
	double adc_in =0;
	uint8_t test[6] = {0x83,0x2f, 0xc3,0xef,0x0F,0xF0};
	adc_in = get_voltage(rx_data,10,1.0);
	char str[64] = {0x00};

	switch (dmm_cfg.range)
	{
	case 1: break;
	case 10:
		{
			adc_in = adc_in * 1.0;
			adc_in = adc_in + cal_data.v_10V_offset;
			adc_in = adc_in * cal_data.v_10V_gain;
			sprintf(str,"%+9.4f", adc_in);

		}break;
	case 100:
		{
			adc_in *=10.0;
			adc_in = adc_in + cal_data.v_100V_offset;
			adc_in = adc_in * cal_data.v_100V_gain;
			sprintf(str,"%+9.4f", adc_in);

		}break;
	}
	SCPI_ResultCharacters(context, str, 64);
	return SCPI_RES_OK;
}

static scpi_result_t TEST_TSQ(scpi_t * context)
{
	char str[64] = {0x00};
/*
	uint8_t tx_data[1] = {0x77};


	HAL_UART_Init(&huart2);
	HAL_UART_Transmit(&huart2, tx_data, 1, 1000);
	HAL_UART_DeInit(&huart2);
*/
	sprintf(str,"%02X,%02X,%02X,%02X,%02X,%02X", rx_data[0],rx_data[1],rx_data[2],rx_data[3],rx_data[4],rx_data[5]);
	SCPI_ResultCharacters(context, str, 32);
	return SCPI_RES_OK;
}


/**
 * @brief
 * parses lists
 * channel numbers > 0.
 * no checks yet.
 * valid: (@1), (@3!1:1!3), ...
 * (@1!1:3!2) would be 1!1, 1!2, 2!1, 2!2, 3!1, 3!2.
 * (@3!1:1!3) would be 3!1, 3!2, 3!3, 2!1, 2!2, 2!3, ... 1!3.
 *
 * @param channel_list channel list, compare to SCPI99 Vol 1 Ch. 8.3.2
 */

/**
 * Reimplement IEEE488.2 *TST?
 *
 * Result should be 0 if everything is ok
 * Result should be 1 if something goes wrong
 *
 * Return SCPI_RES_OK
 */
static scpi_result_t My_CoreTstQ(scpi_t * context) {

    SCPI_ResultInt32(context, 0);

    return SCPI_RES_OK;
}

const scpi_command_t scpi_commands[] = {
    /* IEEE Mandated Commands (SCPI std V1999.0 4.1.1) */
    { .pattern = "*CLS", .callback = SCPI_CoreCls,},
    { .pattern = "*ESE", .callback = SCPI_CoreEse,},
    { .pattern = "*ESE?", .callback = SCPI_CoreEseQ,},
    { .pattern = "*ESR?", .callback = SCPI_CoreEsrQ,},
    { .pattern = "*IDN?", .callback = SCPI_CoreIdnQ,},
    { .pattern = "*OPC", .callback = SCPI_CoreOpc,},
    { .pattern = "*OPC?", .callback = SCPI_CoreOpcQ,},
    { .pattern = "*RST", .callback = SCPI_CoreRst,},
    { .pattern = "*SRE", .callback = SCPI_CoreSre,},
    { .pattern = "*SRE?", .callback = SCPI_CoreSreQ,},
    { .pattern = "*STB?", .callback = SCPI_CoreStbQ,},
    { .pattern = "*TST?", .callback = My_CoreTstQ,},
    { .pattern = "*WAI", .callback = SCPI_CoreWai,},

    {.pattern = "STATus:QUEStionable[:EVENt]?", .callback = SCPI_StatusQuestionableEventQ,},
    /* {.pattern = "STATus:QUEStionable:CONDition?", .callback = scpi_stub_callback,}, */
    {.pattern = "STATus:QUEStionable:ENABle", .callback = SCPI_StatusQuestionableEnable,},
    {.pattern = "STATus:QUEStionable:ENABle?", .callback = SCPI_StatusQuestionableEnableQ,},

    {.pattern = "STATus:PRESet", .callback = SCPI_StatusPreset,},

    /* Required SCPI commands (SCPI std V1999.0 4.2.1) */
    {.pattern = "SYSTem:ERRor[:NEXT]?", .callback = SCPI_SystemErrorNextQ,},
    {.pattern = "SYSTem:ERRor:COUNt?", .callback = SCPI_SystemErrorCountQ,},
    {.pattern = "SYSTem:VERSion?", .callback = SCPI_SystemVersionQ,},

	{.pattern = "CONFigure[:VOLTage]:DC", .callback = SCPI_ConfigureVoltageDC,},
	{.pattern = "MEASure[:VOLTage]:DC?", .callback = SCPI_MeasureVoltageDCQ,},

	{.pattern = "TS?", .callback = TEST_TSQ,},

		SCPI_CMD_LIST_END
};

scpi_interface_t scpi_interface = {
    .error = SCPI_Error,
    .write = SCPI_Write,
    .control = SCPI_Control,
    .flush = SCPI_Flush,
    .reset = SCPI_Reset,
};

char scpi_input_buffer[SCPI_INPUT_BUFFER_LENGTH];
scpi_error_t scpi_error_queue_data[SCPI_ERROR_QUEUE_SIZE];

scpi_t scpi_context;
