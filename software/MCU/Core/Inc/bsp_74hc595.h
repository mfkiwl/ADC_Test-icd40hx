#ifndef __74HC595_h__
#define __74HC595_h__

#include "main.h"


#define Number_of_Registers    2

typedef enum
{
  LOW595 = 0,
  HIGH595
}PinState595;

typedef enum
{
  LOW = 0,
  HIGH
}bool_t;

extern unsigned char  shiftRegisters[];

void SerialDataPinSet(PinState595 state);
void ClockPinSet(PinState595 state);
void LatchPinSet(PinState595 state);
void ShiftRegister74HC595_clear(void);
void ShiftRegister74HC595_setAll(bool_t val);
void ShiftRegister74HC595_setPin(int index, bool_t val);
void ShiftRegister74HC595_update(void);
void ShiftRegister74HC595_init(void);
#endif
