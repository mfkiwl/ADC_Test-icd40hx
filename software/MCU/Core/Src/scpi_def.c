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
#include "ee24Config.h"

extern uint8_t log_status;
extern uint8_t rx_data[6];
extern unsigned char  shiftRegisters[2];
extern struct cfg_struct dmm;


extern osThreadId_t LogDataHandle;

extern UART_HandleTypeDef huart2;

scpi_choice_def_t boolean_select[] =
{
    {"OFF", 0},
    {"ON", 1},
	{"0", 0},
	{"1", 1},
    SCPI_CHOICE_LIST_END
};

extern uint8_t valid_data;

double get_voltage(uint8_t* adc_array, uint8_t it_adc, double cf)
{
  int64_t tmp1,tmp2;
  uint16_t adc_up, adc_total, adc_rundown;
  uint8_t adc_x;
  double retval;
  adc_up = (((uint16_t)(adc_array[0]))<<8)+(((uint16_t)(adc_array[1]))<<0);
  adc_total = (((uint16_t)(adc_array[2]&0x0F))<<8)+(((uint16_t)(adc_array[3]))<<0);
  adc_rundown = (((uint16_t)(adc_array[4]))<<8)+(((uint16_t)(adc_array[5]))<<0);
  adc_x = (adc_array[2]&0x80)>>7;

  if (adc_x==1)
  {
	  tmp1 = adc_rundown+(dmm.calibration.structure.adc_z_offset);
  }
  else
  {
	  tmp1 = -adc_rundown;
  }

  tmp2 = (adc_total+1)/2;
  tmp2 = tmp2-adc_up;
  tmp2 = tmp2*dmm.calibration.structure.adc_step;
  tmp2 = tmp2 - tmp1;
  retval = tmp2;							//tmp2 now holds ADC counts
  retval = retval/338.10;					//roughly map ADC counts to voltage
  retval = retval/((double)(it_adc));		//correction to integration time
  retval = retval / cf;
  return retval;
}


void meas_path(uint8_t range, uint8_t mode)
{
	shiftRegisters[0] = 0;
	shiftRegisters[1] = 0;
	ShiftRegister74HC595_update();

	if(AUTO_ZERO == mode)
	{
		switch(range)
		{
			case 1:   shiftRegisters[0] = 0; shiftRegisters[1] = SR_M14 | SR_M24 | SR_M21; break;
			case 10:  shiftRegisters[0] = 0; shiftRegisters[1] = SR_M14 | SR_M24 | SR_M22; break;
			case 100: shiftRegisters[0] = 0; shiftRegisters[1] = SR_M14 | SR_M24 | SR_M22; break;
		}
	}
	else if(NORM_MEAS == mode)
	{
		switch(range)
		{
			case 1:   shiftRegisters[0] = SR_K1; shiftRegisters[1] = SR_M11 | SR_M24 | SR_M21; break;
			case 10:  shiftRegisters[0] = SR_K1; shiftRegisters[1] = SR_M11 | SR_M24 | SR_M22; break;
			case 100: shiftRegisters[0] = SR_K2 | SR_K4; shiftRegisters[1] = SR_M11 | SR_M24 | SR_M22; break;
		}
	}
	else if(ADC_MEAS == mode)
	{
		switch(range)
		{
			case 1:   shiftRegisters[0] = 0; shiftRegisters[1] = SR_M14 | SR_M23 | SR_M21; break;
			case 10:  shiftRegisters[0] = 0; shiftRegisters[1] = SR_M14 | SR_M23 | SR_M22; break;
			case 100: shiftRegisters[0] = 0; shiftRegisters[1] = SR_M14 | SR_M23 | SR_M22; break;
		}
	}

	ShiftRegister74HC595_update();

}

double zero_measure(uint8_t adc_it, double adc_cf, uint8_t nplc)
{

	return 0.0;
}

double get_measure(uint8_t adc_it, double adc_cf, uint8_t nplc)
{
	double sum = 0.0;
	double result = 0.0;
	uint8_t loop_max = 0;

	if(nplc > 3)
	{
		loop_max = (uint8_t)(nplc/10);
		for(uint32_t x = 0; x < loop_max; x++)
		{
			sum+= get_voltage(rx_data, adc_it, adc_cf);
		}

		result = sum/(double)loop_max;
	}
	else
	{
		result = get_voltage(rx_data, adc_it, adc_cf);
	}

	return result;
}

static scpi_result_t SCPI_SenseVoltageDC(scpi_t * context)
{
	scpi_number_t param_range;
	uint8_t valid_ranges[4] = {1, 10, 100};
	uint8_t is_valid = 0;

	if(!SCPI_ParamNumber(context, scpi_special_numbers_def, &param_range, TRUE)){
		return SCPI_RES_ERR;
	}

		if(param_range.special){
			switch(param_range.content.tag)	{
			case SCPI_NUM_MIN: dmm.range = 1; break;
			case SCPI_NUM_MAX: dmm.range = 100; break;
			case SCPI_NUM_DEF: dmm.range = 100; break;
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

		switch(dmm.range)
		{
		case 1:   dmm.range_index = 0; break;
		case 10:  dmm.range_index = 1; break;
		case 100: dmm.range_index = 2;break;
		}

		meas_path(dmm.range, NORM_MEAS);

	return SCPI_RES_OK;
}



static scpi_result_t SCPI_MeasureVoltageDCQ(scpi_t * context)
{
	double adc_in = 0.0;
	char str[24] = {0x00};

	adc_in = get_measure(dmm.adc_raw[dmm.nplc_index], dmm.adc_cf[dmm.nplc_index], dmm.nplc_index);

	while(dmm.samples--)
	{
		switch (dmm.range)
		{
		case 1:{
			adc_in = adc_in/(double)1000;
			adc_in = adc_in + dmm.calibration.structure.v_1V_offset;
			adc_in = adc_in * dmm.calibration.structure.v_1V_gain;
			adc_in = adc_in + dmm.zero_val;
			sprintf(str,"%f", adc_in);

		}break;
		case 10:{
				adc_in = adc_in/(double)1000;
				adc_in = adc_in + dmm.calibration.structure.v_10V_offset;
				adc_in = adc_in * dmm.calibration.structure.v_10V_gain;
				adc_in = adc_in + dmm.zero_val;
				sprintf(str,"%f", adc_in);

			}break;
		case 100:{
			adc_in = adc_in/(double)1000;
				adc_in = adc_in + dmm.calibration.structure.v_100V_offset;
				adc_in = adc_in * dmm.calibration.structure.v_100V_gain;
				adc_in = adc_in + dmm.zero_val;
				sprintf(str,"%f", adc_in);

			}break;
		}
		SCPI_ResultCharacters(context, str, 24);
	}


	return SCPI_RES_OK;
}

static scpi_result_t SCPI_SampleCount(scpi_t * context)
{

	int32_t value;
	if(!SCPI_ParamInt32(context, &value, TRUE)){
		return SCPI_RES_ERR;
	}

	dmm.samples = value;

	return SCPI_RES_OK;
}

static scpi_result_t SCPI_SampleCountQ(scpi_t * context)
{
	SCPI_ResultInt32(context, dmm.samples);
	return SCPI_RES_OK;
}


void set_nplc(uint8_t index)
{
	uint8_t tx_data[1] = {0x00};
	tx_data[0] = 0x50 + (dmm.adc_raw[index] - 1);

	osThreadSuspend(LogDataHandle);

	HAL_GPIO_WritePin(FPGA_IO1_GPIO_Port, FPGA_IO1_Pin, 0);

	HAL_UART_Init(&huart2);

	HAL_UART_Transmit(&huart2, tx_data, 1, 300);
	HAL_UART_DeInit(&huart2);

	HAL_GPIO_WritePin(FPGA_IO1_GPIO_Port, FPGA_IO1_Pin, 1);

	osThreadResume(LogDataHandle);
}

static scpi_result_t SCPI_SenseVoltageDCNPLC(scpi_t * context)
{
	uint8_t is_valid = 0;
	int32_t nplc = 0;


	if(!SCPI_ParamInt32(context, &nplc, TRUE))
	{
			return SCPI_RES_ERR;
	}

	for(uint8_t x = 0; x < 7; x++)
	{
		if(dmm.adc_nplc[x] == nplc)
		{
			dmm.nplc_index = x;
			dmm.nplc = nplc;
			is_valid = 1;
			break;
		}
		else
		{
			is_valid = 0;
		}
	}

	if(is_valid)
	{
		set_nplc(dmm.nplc_index);
		return SCPI_RES_OK;
	}
	else
	{
		SCPI_ErrorPush(context, SCPI_ERROR_DATA_OUT_OF_RANGE);
		return SCPI_RES_ERR;
	}
}


static scpi_result_t SCPI_SenseVoltageDCNPLCQ(scpi_t * context)
{
	SCPI_ResultInt32(context, dmm.nplc);
	return SCPI_RES_OK;
}

static scpi_result_t SCPI_CalibrationValue(scpi_t * context)
{
	double value = 0.0;
	double measure = 0.0;

	if(!SCPI_ParamDouble(context, &value, TRUE))
	{
		return SCPI_RES_ERR;
	}

	if(0.0 == value)
	{
		set_nplc(dmm.nplc_index);
		measure = get_measure(dmm.adc_raw[dmm.nplc_index], dmm.adc_cf[dmm.nplc_index], 6);
	}



	return SCPI_RES_OK;
}

static scpi_result_t SCPI_CalibrationStore(scpi_t * context)
{
	eeprom_write(dmm.calibration.bytes, STRUCT_SIZE);

	return SCPI_RES_OK;
}

static scpi_result_t TEST_TSQ(scpi_t * context)
{
	char str[64] = {0x00};

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

	{.pattern = "[SENSe:]VOLTage:DC", .callback = SCPI_SenseVoltageDC,},
//	{.pattern = "[SENSe:]VOLTage:DC?", .callback = SCPI_SenseVoltageDCQ,},

	{.pattern = "[SENSe:]VOLTage[:DC]:NPLC", .callback = SCPI_SenseVoltageDCNPLC,},
	{.pattern = "[SENSe:]VOLTage[:DC]:NPLC?", .callback = SCPI_SenseVoltageDCNPLCQ,},

//	{.pattern = "[SENSe:]VOLTage[:DC]:ZERO:AUTO", .callback = SCPI_SenseVoltageDCZeroAuto,},
//	{.pattern = "[SENSe:]VOLTage[:DC]:ZERO:AUTO?", .callback = SCPI_SenseVoltageDCZeroAutoQ,},

	{.pattern = "SAMPle:COUNt", .callback = SCPI_SampleCount,},
	{.pattern = "SAMPle:COUNt?", .callback = SCPI_SampleCountQ,},

//	{.pattern = "CALibration:ADC?", .callback = SCPI_CalibrationADCQ,},
	{.pattern = "CALibration:VALue", .callback = SCPI_CalibrationValue,},
//	{.pattern = "CALibration:VALue?", .callback = SCPI_CalibrationValueQ,},
//	{.pattern = "CALibration[:ALL]?", .callback = SCPI_CalibrationAllQ,},
	{.pattern = "CALibration:STORe", .callback = SCPI_CalibrationStore,},

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
