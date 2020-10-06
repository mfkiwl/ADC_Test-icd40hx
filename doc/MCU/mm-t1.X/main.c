#include "hw.h"
#include <xc.h>
#include <stdio.h>
#include <string.h>

volatile uint8_t rx_msg[10],rx_msg_ptr,rx_flag,adc_data[6];
double meas_act,meas_zero,meas_abs,cal_offset,cal_gain;
int8_t disp_arr[12],range_disp_arr[6];
uint8_t sv=0,meas_sm=0,meas_rdy,update_relay,relay_bitmap,imux_zero,imux_act,ohm_mux,gain_mux,range;
uint8_t function,disp_rfsh_force,range_update,range_max,dp_position;
key_var keys, keys_new,keys_old;
uint16_t i,j;
struct cal_struct	cal_data;


void __attribute__((interrupt, auto_psv)) _U1RXInterrupt(void)
{
volatile unsigned char tmp;
	IFS0bits.U1RXIF=0;
	tmp = U1RXREG;
    rx_msg[rx_msg_ptr++] = tmp;
    if (rx_msg_ptr>9) rx_msg_ptr = 9;
	LEDR = 1;
	TMR1 = 0;
	T1CONbits.TON = 1;
}

void __attribute__((interrupt, auto_psv)) _U2RXInterrupt(void)
{
volatile unsigned char tmp;
	IFS1bits.U2RXIF=0;
	tmp = U2RXREG;
	LEDR = ~LEDR;
}


void __attribute__((interrupt, auto_psv)) _T1Interrupt (void)
{
_T1IF = 0;
T1CONbits.TON = 0;
LEDR = 0;
if (rx_msg_ptr==6)
	{
	rx_flag=1;
	adc_data[0]=rx_msg[0];
	adc_data[1]=rx_msg[1];
	adc_data[2]=rx_msg[2];
	adc_data[3]=rx_msg[3];
	adc_data[4]=rx_msg[4];
	adc_data[5]=rx_msg[5];
	}
rx_msg_ptr=0;

}

double get_voltage (uint8_t * adc_arrray, uint8_t it_adc, float cf)
    {
    int64_t tmp1,tmp2;
    uint16_t adc_up, adc_total, adc_rundown;
    uint8_t adc_x;
    double retval;
    adc_up = (((uint16_t)(adc_arrray[0]))<<8)+(((uint16_t)(adc_arrray[1]))<<0);
    adc_total = (((uint16_t)(adc_arrray[2]&0x0F))<<8)+(((uint16_t)(adc_arrray[3]))<<0);
    adc_rundown = (((uint16_t)(adc_arrray[4]))<<8)+(((uint16_t)(adc_arrray[5]))<<0);
    adc_x = (adc_arrray[2]&0x80)>>7;
	tmp1 = adc_rundown;
    if (adc_x==1)
    	tmp1 = tmp1+(ADC_CAL_NZO);
    else
    	tmp1 = -tmp1;
    tmp2 = (adc_total+1)/2;
    tmp2 = tmp2-adc_up;
    tmp2 = tmp2*ADC_CAL_GAIN;
    tmp2 = tmp2 - tmp1;
    retval = tmp2;							//tmp2 now holds ADC counts
//	sprintf (disp_arr,"%d %u %u %10.0f\n",adc_x,adc_up,adc_rundown,retval);
//	usart_send_str(disp_arr);
    retval = retval/-3477.0;					//roughly map ADC counts to voltage
    retval = retval/((double)(it_adc));
    retval = retval / cf;
    return retval;
    }



int main(void)
	{
	hw_init();
	disp_main_init();
	delay_ms(200);
	
	set_disp(0,0,0x00);
	set_disp(1,0,0x00);
	set_disp(2,0,0x00);
	set_disp(3,0,0x00);
	CON_START = 0;
	delay_ms(1);
	CON_START = 1;
	SER_SEL_0 = 1;
	SER_SEL_1 = 1;
	imux_act = IMUX_VOLT;
	imux_zero = IMUX_ZERO;
	relay_bitmap = REL_10M_OFF | REL_OHM_OFF  | REL_CUR_LO | REL_VIN_HI ;
	update_relay = 1;
	ohm_mux = 1;
	gain_mux = GMUX_1;
	
	
	cal_data.adc_step = CAL_PREDEF_STEP;
    cal_data.adc_z_offset = CAL_PREDEF_NZO;
    cal_data.v_1V_offset = CAL_PREDEF_1VO;
    cal_data.v_1V_gain = CAL_PREDEF_1VG;
    cal_data.v_10V_offset = CAL_PREDEF_10VO;
    cal_data.v_10V_gain = CAL_PREDEF_10VG;
    cal_data.v_100V_offset = CAL_PREDEF_100VO;
    cal_data.v_100V_gain = CAL_PREDEF_100VG;
    cal_data.r_1k_offset = CAL_PREDEF_1KO;
    cal_data.r_1k_gain = CAL_PREDEF_1KG;
    cal_data.r_10k_offset = CAL_PREDEF_10KO;
    cal_data.r_10k_gain = CAL_PREDEF_10KG;
    cal_data.r_100k_offset = CAL_PREDEF_100KO;
    cal_data.r_100k_gain = CAL_PREDEF_100KG;
    cal_data.r_1M_offset = CAL_PREDEF_1MO;
    cal_data.r_1M_gain = CAL_PREDEF_1MG;
	cal_data.i_100uA_offset = CAL_PREDEF_100uAO;
	cal_data.i_100uA_gain = CAL_PREDEF_100uAG;
	cal_data.i_10mA_offset = CAL_PREDEF_10mAO;
	cal_data.i_10mA_gain = CAL_PREDEF_10mAG;
	cal_data.i_1A_offset = CAL_PREDEF_1AO;
	cal_data.i_1A_gain = CAL_PREDEF_1AG;
	
	while (1)
		{
		if (IFS0bits.T2IF)
			{
			IFS0bits.T2IF = 0;
			LEDG = ~ LEDG;
			keys_new.INT = get_keys();
	    	keys.INT = keys.INT | ((keys_new.INT^keys_old.INT)&keys_new.INT);
			keys_old.INT =keys_new.INT;
			disp_rfsh_force=1;
			}
		if (keys.k1)
			{
			keys.k1 = 0;
			if (range<range_max) range++;
			range_update=1;
			}
		if (keys.k2)
			{
			keys.k2 = 0;
			if (range>0) range--;
			range_update=1;
			}
		if (keys.k5)
			{
			keys.k5=0;
			function = FUN_VOLT;
			range_update=1;
			range_max = 2;
			range = range_max;
			}
		if (keys.k6)
			{
			keys.k6=0;
			function = FUN_AMP;
			range_update=1;
			range_max = 0;
			range = range_max;
			}
		if (keys.k7)
			{
			keys.k7=0;
			function = FUN_MAMP;
			range_update=1;
			range_max = 1;
			range = range_max;
			}
		if (keys.k8)
			{
			keys.k8=0;
			function = FUN_OHM2;
			range_update=1;
			range_max = 3;
			}
		if (keys.k9)
			{
			keys.k9=0;
			function = FUN_OHM4;
			range_update=1;
			range_max = 3;
			}
		if (disp_rfsh_force==1)
			{
			disp_rfsh_force=0;
			set_disp(3,1,range_disp_arr[0]);
			set_disp(2,1,range_disp_arr[1]);
			set_disp(1,1,range_disp_arr[2]);
			set_disp(0,1,range_disp_arr[3]);
			}
		if (range_update==1)
			{
			range_update=0;
			disp_rfsh_force=1;
			update_relay = 1;
			if (function==FUN_VOLT)
				{
				ohm_mux = 2;
				imux_zero = IMUX_ZERO;
				imux_act = IMUX_VOLT;
				strcpy(range_disp_arr,"V DC");
				if (range==0)
					{
					relay_bitmap = REL_10M_OFF | REL_OHM_OFF  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_10;
					dp_position = 1;
					cal_offset = cal_data.v_10V_offset;
					cal_gain = cal_data.v_1V_gain;
					}
				if (range==1)
					{
					relay_bitmap = REL_10M_OFF | REL_OHM_OFF  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_1;
					dp_position = 2;
					cal_offset = cal_data.v_10V_offset;
					cal_gain = cal_data.v_10V_gain;
					}
				if (range==2)
					{
					relay_bitmap = REL_10M_OFF | REL_OHM_OFF  | REL_CUR_LO | REL_VIN_HI ;
					gain_mux = GMUX_1;
					dp_position = 3;
					cal_offset = cal_data.v_100V_offset;
					cal_gain = cal_data.v_100V_gain;
					}
				}
			if (function==FUN_AMP)
				{
				ohm_mux = 2;
				imux_act = IMUX_CUR_A;
				imux_zero = IMUX_ZERO;
				strcpy(range_disp_arr,"A DC");
				if (range==0)
					{
					relay_bitmap = REL_10M_OFF | REL_OHM_OFF  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_10;
					dp_position = 1;
					cal_offset = cal_data.i_1A_offset;
					cal_gain = cal_data.i_1A_gain;
					}
				}
			if (function==FUN_MAMP)
				{
				ohm_mux = 2;
				imux_act = IMUX_CUR_mA;
				imux_zero = IMUX_ZERO;
				gain_mux = GMUX_10;
				if (range==0)
					{
					relay_bitmap = REL_10M_OFF | REL_OHM_OFF  | REL_CUR_LO | REL_VIN_LO ;
					strcpy(range_disp_arr,"uADC");
					dp_position = 3;
					cal_offset = cal_data.i_100uA_offset;
					cal_gain = cal_data.i_100uA_gain;
					}
				if (range==1)
					{
					relay_bitmap = REL_10M_OFF | REL_OHM_OFF  | REL_CUR_HI | REL_VIN_LO ;
					strcpy(range_disp_arr,"mADC");
					dp_position = 2;
					cal_offset = cal_data.i_10mA_offset;
					cal_gain = cal_data.i_10mA_gain;
					}
				}
			if (function==FUN_OHM2)
				{
				imux_act = IMUX_VOLT;
				imux_zero = IMUX_ZERO;
				if (range==0)
					{
					ohm_mux = 0;
					relay_bitmap = REL_10M_OFF | REL_OHM_ON  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_10;
					strcpy(range_disp_arr,"Ohm2");
					dp_position = 4;
					}
				if (range==1)
					{
					ohm_mux = 0;
					relay_bitmap = REL_10M_OFF | REL_OHM_ON  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_1;
					strcpy(range_disp_arr,"Ohm2");
					dp_position = 5;
					}
				if (range==2)
					{
					ohm_mux = 1;
					relay_bitmap = REL_10M_OFF | REL_OHM_ON  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_1;
					strcpy(range_disp_arr,"kOm2");
					dp_position = 3;
					}
				if (range==3)
					{
					ohm_mux = 2;
					relay_bitmap = REL_10M_OFF | REL_OHM_ON  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_1;
					strcpy(range_disp_arr,"kOm2");
					dp_position = 4;
					}
				}
			if (function==FUN_OHM4)
				{
				imux_act = IMUX_RSHI;
				imux_zero = IMUX_RSLO;
				if (range==0)
					{
					ohm_mux = 0;
					relay_bitmap = REL_10M_OFF | REL_OHM_ON  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_10;
					strcpy(range_disp_arr,"Ohm4");
					dp_position = 4;
					}
				if (range==1)
					{
					ohm_mux = 0;
					relay_bitmap = REL_10M_OFF | REL_OHM_ON  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_1;
					strcpy(range_disp_arr,"Ohm4");
					dp_position = 5;
					}
				if (range==2)
					{
					ohm_mux = 1;
					relay_bitmap = REL_10M_OFF | REL_OHM_ON  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_1;
					strcpy(range_disp_arr,"kOm4");
					dp_position = 3;
					}
				if (range==3)
					{
					ohm_mux = 2;
					relay_bitmap = REL_10M_OFF | REL_OHM_ON  | REL_CUR_LO | REL_VIN_LO ;
					gain_mux = GMUX_1;
					strcpy(range_disp_arr,"kOm4");
					dp_position = 4;
					}
				}
			}
		
		if (rx_flag==1)
			{
			rx_flag=0;		
			CON_START = 0;
			if (meas_sm==0)
				{
				if (update_relay==1)
					{
					update_relay=0;
					set_relay(relay_bitmap);
					}
				set_input_mux(imux_zero,gain_mux);
				//delay_us(300);
				set_ohm_mux(ohm_mux);
//				LEDG = 1;
				}
			if (meas_sm==1)
				{
				meas_zero = get_voltage(adc_data,1,1.0);
				meas_zero = meas_zero * 1000.0;
				}
			if (meas_sm==2)
				{
				set_input_mux(imux_act,gain_mux);
				write_u1(0x59);
//				LEDG = 0;
				}
			if (meas_sm==3)
				{
				meas_act = get_voltage(adc_data,1,1.0);
				meas_act = meas_act * 1000.0;
				meas_abs = meas_act - meas_zero;
				meas_rdy = 1;
				}
			delay_ms(1);
			CON_START = 1;			
			meas_sm++;
			if (meas_sm==4) meas_sm=0;

			if (meas_rdy)
				{
				meas_rdy = 0;
				sprintf (disp_arr,"%+09.0f %x",meas_abs,keys);
				meas_abs = meas_abs + cal_offset;
				meas_abs = meas_abs * cal_gain;
				sprintf (disp_arr,"%+09.0f %x",meas_abs,keys);
				usart_send_str(disp_arr);
				usart_send_str("\n");
				if (disp_arr[0]==0x2D) 
					disp_data(0,0x0A);
				else
					disp_data(0,0x0F);
				if ((meas_abs>11000000.0)|(meas_abs<-11000000.0))
					{
					for (i=1;i<8;i++) 
						{
						if (i==dp_position) disp_data(i,0x80|0x0A);
						else disp_data(i,0x0A);
						}
					}
				else
					{
					for (i=1;i<8;i++) 
						{
						if (i==dp_position) disp_data(i,0x80|disp_arr[i]-'0');
						else disp_data(i,disp_arr[i]-'0');
						}
					}
				}
			}
		
		}
	}

