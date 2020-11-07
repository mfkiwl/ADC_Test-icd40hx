/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED_RED_Pin GPIO_PIN_2
#define LED_RED_GPIO_Port GPIOE
#define LED_GREEN_Pin GPIO_PIN_3
#define LED_GREEN_GPIO_Port GPIOE
#define LED_BLUE_Pin GPIO_PIN_4
#define LED_BLUE_GPIO_Port GPIOE
#define SR_LAT_Pin GPIO_PIN_15
#define SR_LAT_GPIO_Port GPIOB
#define EEPROM_WP_Pin GPIO_PIN_11
#define EEPROM_WP_GPIO_Port GPIOD
#define EEPROM_SCL_Pin GPIO_PIN_12
#define EEPROM_SCL_GPIO_Port GPIOD
#define EEPROM_SDA_Pin GPIO_PIN_13
#define EEPROM_SDA_GPIO_Port GPIOD
#define SR_CLK_Pin GPIO_PIN_15
#define SR_CLK_GPIO_Port GPIOD
#define SR_DAT_Pin GPIO_PIN_7
#define SR_DAT_GPIO_Port GPIOG
#define SP3_NSS_Pin GPIO_PIN_15
#define SP3_NSS_GPIO_Port GPIOA
#define FPGA_IO3_Pin GPIO_PIN_1
#define FPGA_IO3_GPIO_Port GPIOD
#define FPGA_IO4_Pin GPIO_PIN_2
#define FPGA_IO4_GPIO_Port GPIOD
#define FPGA_IO1_Pin GPIO_PIN_3
#define FPGA_IO1_GPIO_Port GPIOD
#define FPGA_IO2_Pin GPIO_PIN_4
#define FPGA_IO2_GPIO_Port GPIOD
/* USER CODE BEGIN Private defines */

#define		CAL_PREDEF_1VO		- 0.000070
#define		CAL_PREDEF_1VG		0.9838070
#define		CAL_PREDEF_10VO		0.008033
#define		CAL_PREDEF_10VG		0.985334
#define		CAL_PREDEF_100VO	- 0.0009
#define		CAL_PREDEF_100VG	0.9839094
#define		CAL_PREDEF_1KO		- 0.001
#define		CAL_PREDEF_1KG		0.9379245
#define		CAL_PREDEF_10KO		- 0.0000
#define		CAL_PREDEF_10KG		0.9380175
#define		CAL_PREDEF_100KO	- 0.0000
#define		CAL_PREDEF_100KG	0.9381589
#define		CAL_PREDEF_1MO		- 0.0006
#define		CAL_PREDEF_1MG		0.9381589
#define		CAL_PREDEF_10MO		- 0.000
#define		CAL_PREDEF_10MG		0.9381589
#define		CAL_PREDEF_NZO		-170.0
#define		CAL_PREDEF_STEP		38500

#define	SR_M14		0x80
#define	SR_M13		0x40
#define	SR_M12		0x20
#define	SR_M11		0x10
#define	SR_M21		0x08
#define	SR_M22		0x04
#define	SR_M23		0x02
#define	SR_M24		0x01
#define	SR_K4		0x80
#define	SR_K1		0x20
#define	SR_K2		0x10

#define	SR_INVERT_MASK	0xFF


struct val_74hc595
{
	uint8_t ON;
	uint8_t OFF

};

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
	double	r_10M_offset;
	double	r_10M_gain;
};


struct cfg_struct
{
	uint32_t range;

};

double get_voltage (uint8_t * adc_arrray, uint8_t it_adc, float cf);

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
