#include "bsp_74hc595.h"

unsigned char  shiftRegisters[2] = {0x00}; //2 means 2 74HC595 IC

void ShiftRegister74HC595_dalay(void)
{
    unsigned int i;    
    for(i = 0; i < 10000; i ++);
}
//IO init
void ShiftRegister74HC595_init(void)
{
    //set your IO
}

void ShiftRegister74HC595_update(void)
{
    //Set and display registers
	//Only call AFTER all values are set how you would like 
    int i , j;
    LatchPinSet(LOW595);
    shiftRegisters[0] ^=SR_INVERT_MASK;
    shiftRegisters[1] ^=SR_INVERT_MASK;

    //iterate through the registers
    for(i = Number_of_Registers - 1; i >=  0; i--){
        
        //iterate through the bits in each registers
        for(j = 8 - 1; j >=  0; j--){
            
            ClockPinSet(LOW595);
            
            int val = shiftRegisters[i] & (1 << j);
            
            SerialDataPinSet((PinState595)val);
			//ShiftRegister74HC595_dalay();
					HAL_Delay(1);
            ClockPinSet(HIGH595);
            
        }
        
    }
		//ShiftRegister74HC595_dalay();
		HAL_Delay(1);
		LatchPinSet(HIGH595);

}

void ShiftRegister74HC595_setPin(int index, bool_t val)
{
    int byteIndex = index / 8;
    int bitIndex = index % 8;
    unsigned char current_byte = shiftRegisters[byteIndex];

    current_byte &= ~(1 << bitIndex);   //clear the bit need to be set
    current_byte |= val << bitIndex;    //set the bit

    shiftRegisters[byteIndex] = current_byte;
}

void ShiftRegister74HC595_setAll(bool_t val)
{
    int i;
    //set all register pins to val
    for(i = Number_of_Registers * 8 - 1; i >=  0; i--){
        ShiftRegister74HC595_setPin(i, val);
    }
		ShiftRegister74HC595_update();
}

void ShiftRegister74HC595_clear(void){
    ShiftRegister74HC595_setAll(LOW);
}

void LatchPinSet(PinState595 state)
{
    HAL_GPIO_WritePin(SR_LAT_GPIO_Port, SR_LAT_Pin, (GPIO_PinState)state);
}

void ClockPinSet(PinState595 state)
{
    HAL_GPIO_WritePin(SR_CLK_GPIO_Port, SR_CLK_Pin, (GPIO_PinState)state);
}

void SerialDataPinSet(PinState595 state)
{
    HAL_GPIO_WritePin(SR_DAT_GPIO_Port, SR_DAT_Pin, (GPIO_PinState)state);
}


