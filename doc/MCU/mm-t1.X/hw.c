#include "hw.h"
#include <xc.h>

// FOSC
#pragma config FOSFPR = HS2_PLL4        //9.216MIPS at 18.432MHz crystal
#pragma config FCKSMEN = CSW_FSCM_OFF   // Clock Switching and Monitor (Sw Disabled, Mon Disabled)

// FWDT
#pragma config FWPSB = WDTPSB_16        // WDT Prescaler B (1:16)
#pragma config FWPSA = WDTPSA_512       // WDT Prescaler A (1:512)
#pragma config WDT = WDT_OFF            // Watchdog Timer (Disabled)

// FBORPOR
#pragma config FPWRT = PWRT_OFF         // POR Timer Value (Timer Disabled)
#pragma config BODENV = NONE            // Brown Out Voltage (Reserved)
#pragma config BOREN = PBOR_ON          // PBOR Enable (Enabled)
#pragma config MCLRE = MCLR_EN          // Master Clear Enable (Enabled)

// FBS
#pragma config BWRP = WR_PROTECT_BOOT_OFF// Boot Segment Program Memory Write Protect (Boot Segment Program Memory may be written)
#pragma config BSS = NO_BOOT_CODE       // Boot Segment Program Flash Memory Code Protection (No Boot Segment)
#pragma config EBS = NO_BOOT_EEPROM     // Boot Segment Data EEPROM Protection (No Boot EEPROM)
#pragma config RBS = NO_BOOT_RAM        // Boot Segment Data RAM Protection (No Boot RAM)

// FSS
#pragma config SWRP = WR_PROT_SEC_OFF   // Secure Segment Program Write Protect (Disabled)
#pragma config SSS = NO_SEC_CODE        // Secure Segment Program Flash Memory Code Protection (No Secure Segment)
#pragma config ESS = NO_SEC_EEPROM      // Secure Segment Data EEPROM Protection (No Segment Data EEPROM)
#pragma config RSS = NO_SEC_RAM         // Secure Segment Data RAM Protection (No Secure RAM)

// FGS
#pragma config GWRP = GWRP_OFF          // General Code Segment Write Protect (Disabled)
#pragma config GCP = GSS_OFF            // General Segment Code Protection (Disabled)

// FICD
#pragma config ICS = ICS_PGD            // Comm Channel Select (Use PGC/EMUC and PGD/EMUD)/




unsigned char se_read()
{
	unsigned char data;
 	idle_iic();
  	start_iic();
	while(SEN_BIT);
	master_write_iic(0x4F);
	idle_iic();
	data = master_read_iic();
	not_ack_iic();
 	idle_iic();
	stop_iic();
	  /* Wait till stop sequence is completed */
	while(PEN_BIT);
	return (data);
  }

void se_write (unsigned char data)
{
 	idle_iic();
  	start_iic();
	while(SEN_BIT);
	idle_iic();
	master_write_iic(0x4E);
	idle_iic();
	master_write_iic(data);
 	idle_iic();
	stop_iic();
	  /* Wait till stop sequence is completed */
	while(PEN_BIT);
}


void disp_word (unsigned int data)
{
unsigned char i;
delay_us(10);
D_LD = 0;
for (i=0;i<16;i++)
	{
	if (data&0x8000)
		D_DI = 1;
	else
		D_DI = 0;
	data = data << 1;
	delay_us(10);
	D_CK = 1;
	delay_us(10);
	D_CK = 0;
	}
delay_us(10);
D_LD = 1;
}

void disp_data (unsigned char pos, unsigned char data)
	{
	unsigned int temp;
	temp = pos+1;
	temp = temp << 8;
	temp = temp + data;
	disp_word(temp);
	}

void update_sr (unsigned char data)
  {
  unsigned char i;
  for (i=0;i<8;i++) 
      {
      if (data&0x80)
        DS_DA = 1;
      else
        DS_DA = 0;
	  delay_us(10);
      DS_CK = 1;
      data = data << 1;
      DS_CK = 0;
	  delay_us(10);
      }
      DS_CK = 1;
	  delay_us(10);
      DS_CK = 0;
  }

void set_disp (unsigned char addr, unsigned char cu, unsigned char data)
{
  unsigned char data_tmp=0;
  if (data&0x01) data_tmp |= 0x01;
  if (data&0x02) data_tmp |= 0x02;
  if (data&0x04) data_tmp |= 0x04;
  if (data&0x08) data_tmp |= 0x08;
  if (data&0x10) data_tmp |= 0x40;
  if (data&0x20) data_tmp |= 0x20;
  if (data&0x40) data_tmp |= 0x10;
  data_tmp = data_tmp << 1;
  if (addr&0x01)
    data_tmp = data_tmp | 0x01;
  update_sr(data_tmp);
  if (addr&0x02)
     DS_DA = 1;
   else
     DS_DA = 0;
  if (cu)
    DS_CU = 1;
  else
    DS_CU = 0;
  delay_us(10);
  DS_EN = 0;  
  delay_us(10);
  DS_EN = 1;  
  }


void write_u1 (unsigned char data)
{
U1TXREG = data;
while (U1STAbits.TRMT==0);
}

void write_u2 (unsigned char data)
{
U2TXREG = data;
while (U2STAbits.TRMT==0);
}


void usart_send_str (char * data)
    {
    while (*data) write_u2(*data++);
    }



void set_relay (uint8_t state)
	{
	write_u1(0x20+((state>>4)&0x0F));
	delay_ms(6);
	write_u1(0x20);
	delay_ms(6);
	write_u1(0x10+((state>>0)&0x0F));
	delay_ms(6);
	write_u1(0x10);
	}

void set_input_mux (uint8_t data, uint8_t gain)
	{
	if (gain==0)
		write_u1(0x38+(data&0x07));
	else
		write_u1(0x30+(data&0x07));
	}

void set_ohm_mux (uint8_t data)
	{
	write_u1(0x40+(data&0x03));
	}


uint16_t get_keys (void)
	{
	unsigned char dat1,dat2;
	uint16_t retval;
	se_write(0b10111111);
	dat1 = 0xFF^se_read();
	se_write(0b11011111);
	dat2 = 0xFF^se_read();
	retval = 0;
	if (dat2&0x01) retval|=0x001;
	if (dat2&0x02) retval|=0x002;
	if (dat2&0x08) retval|=0x004;
	if (dat2&0x04) retval|=0x008;
	if (dat2&0x10) retval|=0x010;
	
	if (dat1&0x01) retval|=0x020;
	if (dat1&0x02) retval|=0x040;
	if (dat1&0x08) retval|=0x080;
	if (dat1&0x04) retval|=0x100;
	if (dat1&0x10) retval|=0x200;
	
	if (dat1&0x80) retval|=0x400;
	return retval;
	}


void hw_init (void)
	{
	I2CBRG = 100;
	I2CCON = 0x8000; 
	
	/* Start Timer2 in interval time of 1ms */
	PR1 = (FCY / 8 / 1000)*3;
	T1CONbits.TCKPS0 = 1;	/* Select prescaler Fcy/8 */
	IEC0bits.T1IE = 1;
	//T1CONbits.TON = 1;

	/* Start Timer2 in interval time of 1ms */
	PR2 = (FCY / 8 / 1000)*10;
	T2CONbits.TCKPS0 = 1;	/* Select prescaler Fcy/8 */
	T2CONbits.TON = 1;

	
	U1BRG = (FCY / 16 / 62500) - 1;
	U1MODEbits.UARTEN = 1;
	U1MODEbits.STSEL = 1;
	_U1RXIE = 1;
	U1STAbits.UTXEN = 1;

	U2BRG = (FCY / 16 / 57600) - 1;
	U2MODEbits.UARTEN = 1;
	_U2RXIE = 1;
	U2STAbits.UTXEN = 1;
	
	TRISFbits.TRISF6 = 0;
	CON_START = 1;
	TRISBbits.TRISB15 = 0;
	TRISBbits.TRISB14 = 0;
	TRISBbits.TRISB13 = 0;
	TRISBbits.TRISB12 = 0;
	TRISBbits.TRISB4 = 0;
	TRISBbits.TRISB2 = 0;
	TRISDbits.TRISD8 = 0;
	TRISDbits.TRISD9 = 0;
	TRISDbits.TRISD10 = 0;
	TRISBbits.TRISB8 = 0;
	TRISBbits.TRISB9 = 0;
	__delay_us(100);
	}



void disp_main_init (void)
	{
    disp_word(0x0B07);
	disp_word(0x0FFF);
    delay_ms(500);
    disp_word(0x0FF0);
    disp_word(0x0C01);
    disp_word(0x0B07);
    disp_word(0x0A05);
    disp_word(0x09FF);
	
	}

