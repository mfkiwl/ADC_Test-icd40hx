#include <xc.h>
#include <i2c.h>


#define		LEDG	LATBbits.LATB2
#define		LEDR	LATBbits.LATB4

//9.2MIPS
#define FCY 9216000
#include <libpic30.h>
#define	delay_us __delay_us
#define	delay_ms __delay_ms


#define	D_LD	LATDbits.LATD9
#define	D_CK	LATDbits.LATD8
#define	D_DI	LATDbits.LATD10

#define   DS_DA  LATBbits.LATB15
#define   DS_CU  LATBbits.LATB14
#define   DS_CK  LATBbits.LATB13
#define   DS_EN  LATBbits.LATB12

#define		SER_SEL_0	LATBbits.LATB8
#define		SER_SEL_1	LATBbits.LATB9

#define	CON_START	LATFbits.LATF6

#define	ADC_CAL_NZO		-105.0
#define	ADC_CAL_GAIN	38430

#define	REL_10M_ON	0x02
#define	REL_10M_OFF	0x01
#define	REL_VIN_HI	0x08
#define	REL_VIN_LO	0x04
#define	REL_OHM_ON	0x40
#define	REL_OHM_OFF	0x10
#define	REL_CUR_HI	0x80
#define	REL_CUR_LO	0x20

#define	IMUX_CUR_A	0
#define	IMUX_CUR_mA	1
#define	IMUX_ZERO	2
#define	IMUX_REF	3
#define	IMUX_RSLO	5
#define	IMUX_RSHI	4
#define	IMUX_VOLT	7

#define	GMUX_1		0
#define	GMUX_10		1

#define	FUN_VOLT	0
#define	FUN_MAMP	1
#define	FUN_AMP		2
#define	FUN_OHM2	3
#define	FUN_OHM4	4




typedef union
{
struct
 {
    unsigned k1:1;
    unsigned k2:1;
    unsigned k3:1;
    unsigned k4:1;
    unsigned k5:1;
    unsigned k6:1;
    unsigned k7:1;
 	unsigned k8:1;
	unsigned k9:1;
	unsigned k10:1;
	unsigned k11:1;
 };
uint16_t INT;
}key_var;


void hw_init (void);
void disp_main_init (void);
uint16_t get_keys (void);
void set_ohm_mux (uint8_t data);
void set_input_mux (uint8_t data, uint8_t gain);
void set_relay (uint8_t state);
void usart_send_str (char * data);
void set_disp (unsigned char addr, unsigned char cu, unsigned char data);
void write_u1 (unsigned char data);
void disp_data (unsigned char pos, unsigned char data);


#define	idle_iic			IdleI2C
#define	start_iic			StartI2C
#define	master_write_iic	MasterWriteI2C
#define	master_read_iic		MasterReadI2C
#define	not_ack_iic			NotAckI2C
#define	stop_iic			StopI2C
#define	rstart_iic			RestartI2C
#define	ack_iic				AckI2C
#define	PEN_BIT				I2CCONbits.PEN
#define	SEN_BIT				I2CCONbits.SEN
#define	RSEN_BIT			I2CCONbits.RSEN


struct cal_struct
	{
	int32_t	adc_z_offset;
	int32_t	adc_step;
	double	v_1V_offset;
	double	v_1V_gain;
	double	v_10V_offset;
	double	v_10V_gain;
	double	v_100V_offset;
	double	v_100V_gain;
	double	r_1k_offset;
	double	r_1k_gain;
	double	r_10k_offset;
	double	r_10k_gain;
	double	r_100k_offset;
	double	r_100k_gain;
	double	r_1M_offset;
	double	r_1M_gain;
	double	i_1A_offset;
	double	i_1A_gain;
	double	i_10mA_offset;
	double	i_10mA_gain;
	double	i_100uA_offset;
	double	i_100uA_gain;
	};

	
#define		CAL_PREDEF_1VO		320.0
#define		CAL_PREDEF_1VG		1.109974
#define		CAL_PREDEF_10VO		30.0
#define		CAL_PREDEF_10VG		1.0020479
#define		CAL_PREDEF_100VO	200.0
#define		CAL_PREDEF_100VG	1.002438
#define		CAL_PREDEF_1KO		0.0
#define		CAL_PREDEF_1KG		1.0897
#define		CAL_PREDEF_10KO		0.0
#define		CAL_PREDEF_10KG		1.022
#define		CAL_PREDEF_100KO	0.0
#define		CAL_PREDEF_100KG	1.16669
#define		CAL_PREDEF_1MO		0.0
#define		CAL_PREDEF_1MG		0.9662
#define		CAL_PREDEF_1AO		0.0
#define		CAL_PREDEF_1AG		1.1085
#define		CAL_PREDEF_10mAO	40.0
#define		CAL_PREDEF_10mAG	1.1042
#define		CAL_PREDEF_100uAO	40.0
#define		CAL_PREDEF_100uAG	1.097786

#define		CAL_PREDEF_NZO		-105.0
#define		CAL_PREDEF_STEP		38430