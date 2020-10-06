EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 7
Title "MCU"
Date "2020-03-07"
Rev "1.00"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7650 900  7650 850 
Wire Wire Line
	7650 850  7850 850 
Wire Wire Line
	10050 850  10050 900 
Wire Wire Line
	9850 900  9850 850 
Connection ~ 9850 850 
Wire Wire Line
	9850 850  10050 850 
Wire Wire Line
	9650 900  9650 850 
Connection ~ 9650 850 
Wire Wire Line
	9650 850  9850 850 
Wire Wire Line
	9450 900  9450 850 
Connection ~ 9450 850 
Wire Wire Line
	9450 850  9650 850 
Wire Wire Line
	9250 900  9250 850 
Connection ~ 9250 850 
Wire Wire Line
	9250 850  9450 850 
Wire Wire Line
	9050 900  9050 850 
Connection ~ 9050 850 
Wire Wire Line
	9050 850  9250 850 
Wire Wire Line
	8850 900  8850 850 
Connection ~ 8850 850 
Wire Wire Line
	8850 850  9050 850 
Wire Wire Line
	8650 900  8650 850 
Connection ~ 8650 850 
Wire Wire Line
	8450 900  8450 850 
Connection ~ 8450 850 
Wire Wire Line
	8450 850  8650 850 
Wire Wire Line
	8250 900  8250 850 
Connection ~ 8250 850 
Wire Wire Line
	8250 850  8450 850 
Wire Wire Line
	8050 900  8050 850 
Connection ~ 8050 850 
Wire Wire Line
	8050 850  8250 850 
Wire Wire Line
	7850 900  7850 850 
Connection ~ 7850 850 
Wire Wire Line
	7850 850  8050 850 
Wire Wire Line
	8850 800  8850 850 
Wire Wire Line
	8050 9000 8050 9050
Wire Wire Line
	8050 9050 8250 9050
Wire Wire Line
	9650 9050 9650 9000
Wire Wire Line
	9450 9000 9450 9050
Connection ~ 9450 9050
Wire Wire Line
	9450 9050 9650 9050
Wire Wire Line
	9250 9000 9250 9050
Connection ~ 9250 9050
Wire Wire Line
	9250 9050 9450 9050
Wire Wire Line
	9050 9000 9050 9050
Connection ~ 9050 9050
Wire Wire Line
	9050 9050 9250 9050
Wire Wire Line
	8850 9000 8850 9050
Connection ~ 8850 9050
Wire Wire Line
	8850 9050 9050 9050
Wire Wire Line
	8650 9000 8650 9050
Connection ~ 8650 9050
Wire Wire Line
	8650 9050 8850 9050
Wire Wire Line
	8450 9000 8450 9050
Connection ~ 8450 9050
Wire Wire Line
	8450 9050 8650 9050
Wire Wire Line
	8250 9000 8250 9050
Connection ~ 8250 9050
Wire Wire Line
	8250 9050 8450 9050
Wire Wire Line
	8850 9050 8850 9100
$Comp
L power:GND #PWR?
U 1 1 5DAA3278
P 8850 9100
F 0 "#PWR?" H 8850 8850 50  0001 C CNN
F 1 "GND" H 8855 8927 50  0000 C CNN
F 2 "" H 8850 9100 50  0001 C CNN
F 3 "" H 8850 9100 50  0001 C CNN
	1    8850 9100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DAA6CE1
P 14600 8900
F 0 "R?" H 14670 8946 50  0000 L CNN
F 1 "10k" H 14670 8855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 14530 8900 50  0001 C CNN
F 3 "~" H 14600 8900 50  0001 C CNN
	1    14600 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14600 8750 14600 8700
Wire Wire Line
	14600 8700 14550 8700
$Comp
L Device:R R?
U 1 1 5DAA8BD1
P 15200 8100
F 0 "R?" H 15270 8146 50  0000 L CNN
F 1 "10k" H 15270 8055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 15130 8100 50  0001 C CNN
F 3 "~" H 15200 8100 50  0001 C CNN
	1    15200 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAA918D
P 15200 8500
F 0 "C?" H 15315 8546 50  0000 L CNN
F 1 "100n" H 15315 8455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 15238 8350 50  0001 C CNN
F 3 "~" H 15200 8500 50  0001 C CNN
	1    15200 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	15200 8300 15200 8350
Wire Wire Line
	15200 8250 15200 8300
Connection ~ 15200 8300
$Comp
L power:GND #PWR?
U 1 1 5DAAC0BD
P 15200 8650
F 0 "#PWR?" H 15200 8400 50  0001 C CNN
F 1 "GND" H 15205 8477 50  0000 C CNN
F 2 "" H 15200 8650 50  0001 C CNN
F 3 "" H 15200 8650 50  0001 C CNN
	1    15200 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DAACD0D
P 14600 9050
F 0 "#PWR?" H 14600 8800 50  0001 C CNN
F 1 "GND" H 14605 8877 50  0000 C CNN
F 2 "" H 14600 9050 50  0001 C CNN
F 3 "" H 14600 9050 50  0001 C CNN
	1    14600 9050
	1    0    0    -1  
$EndComp
Text HLabel 14600 2600 2    50   BiDi ~ 0
RMII_TXD1
Text HLabel 14600 2500 2    50   BiDi ~ 0
RMII_TXD0
Text HLabel 14600 2300 2    50   BiDi ~ 0
RMII_TXEN
Text HLabel 3100 5300 0    50   BiDi ~ 0
RMII_RXD0
Text HLabel 3100 5400 0    50   BiDi ~ 0
RMII_RXD1
Text HLabel 3100 3900 0    50   BiDi ~ 0
RMII_CRS_DV
Text HLabel 3100 3400 0    50   BiDi ~ 0
RMII_MDIO
Text HLabel 3100 5000 0    50   BiDi ~ 0
RMII_MDC
Text HLabel 3100 3300 0    50   BiDi ~ 0
REF_CLK
Wire Wire Line
	3150 3300 3100 3300
Wire Wire Line
	3150 3400 3100 3400
Wire Wire Line
	3150 3900 3100 3900
Wire Wire Line
	3150 5000 3100 5000
Wire Wire Line
	3150 5300 3100 5300
Wire Wire Line
	3150 5400 3100 5400
Wire Wire Line
	15700 8300 15200 8300
Wire Wire Line
	3150 8300 3100 8300
Wire Wire Line
	3100 8300 3100 8100
Wire Wire Line
	3100 8100 3150 8100
Wire Wire Line
	2650 8300 3100 8300
Connection ~ 3100 8300
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 5DA8679B
P 8250 10450
F 0 "J?" H 8300 10867 50  0000 C CNN
F 1 "20021111-00010T4LF" H 8300 10776 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 8250 10450 50  0001 C CNN
F 3 "~" H 8250 10450 50  0001 C CNN
	1    8250 10450
	1    0    0    -1  
$EndComp
NoConn ~ 8050 10550
NoConn ~ 8050 10650
Wire Wire Line
	8050 10450 7800 10450
Wire Wire Line
	7800 10450 7800 10350
Wire Wire Line
	7800 10350 8050 10350
$Comp
L power:GND #PWR?
U 1 1 5DAA5490
P 7800 10700
F 0 "#PWR?" H 7800 10450 50  0001 C CNN
F 1 "GND" H 7805 10527 50  0000 C CNN
F 2 "" H 7800 10700 50  0001 C CNN
F 3 "" H 7800 10700 50  0001 C CNN
	1    7800 10700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 10700 7800 10450
Connection ~ 7800 10450
Wire Wire Line
	7800 10150 7800 10250
Wire Wire Line
	7800 10250 8050 10250
Wire Wire Line
	8550 10250 9000 10250
Text Label 9000 10250 2    50   ~ 0
TMS_SWDIO
Wire Wire Line
	8550 10350 9000 10350
Text Label 9000 10350 2    50   ~ 0
TCK_SWCLK
Wire Wire Line
	8550 10650 9000 10650
Text Label 9000 10650 2    50   ~ 0
MCU_NRST
Text Label 15650 8300 2    50   ~ 0
MCU_NRST
Text Label 2650 8300 0    50   ~ 0
MCU_VDDA
$Comp
L power:GND #PWR?
U 1 1 5DACCD5C
P 3100 8500
F 0 "#PWR?" H 3100 8250 50  0001 C CNN
F 1 "GND" V 3105 8372 50  0000 R CNN
F 2 "" H 3100 8500 50  0001 C CNN
F 3 "" H 3100 8500 50  0001 C CNN
	1    3100 8500
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 8500 3150 8500
$Comp
L Device:C C?
U 1 1 5DAD0A63
P 3100 8950
F 0 "C?" H 3215 8996 50  0000 L CNN
F 1 "1u" H 3215 8905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3138 8800 50  0001 C CNN
F 3 "~" H 3100 8950 50  0001 C CNN
	1    3100 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 8700 3100 8700
Wire Wire Line
	3100 8800 3100 8700
Connection ~ 3100 8700
Wire Wire Line
	3100 8700 3150 8700
$Comp
L power:GND #PWR?
U 1 1 5DAD7BE9
P 3100 9100
F 0 "#PWR?" H 3100 8850 50  0001 C CNN
F 1 "GND" H 3105 8927 50  0000 C CNN
F 2 "" H 3100 9100 50  0001 C CNN
F 3 "" H 3100 9100 50  0001 C CNN
	1    3100 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 850  8850 850 
$Comp
L Device:C C?
U 1 1 5DAEBFB7
P 650 10700
F 0 "C?" H 765 10746 50  0000 L CNN
F 1 "100n" H 765 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 688 10550 50  0001 C CNN
F 3 "~" H 650 10700 50  0001 C CNN
	1    650  10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAECAD7
P 1150 10700
F 0 "C?" H 1265 10746 50  0000 L CNN
F 1 "100n" H 1265 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1188 10550 50  0001 C CNN
F 3 "~" H 1150 10700 50  0001 C CNN
	1    1150 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAEE29B
P 1650 10700
F 0 "C?" H 1765 10746 50  0000 L CNN
F 1 "100n" H 1765 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1688 10550 50  0001 C CNN
F 3 "~" H 1650 10700 50  0001 C CNN
	1    1650 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAEE2A1
P 2150 10700
F 0 "C?" H 2265 10746 50  0000 L CNN
F 1 "100n" H 2265 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2188 10550 50  0001 C CNN
F 3 "~" H 2150 10700 50  0001 C CNN
	1    2150 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAF1A5F
P 2650 10700
F 0 "C?" H 2765 10746 50  0000 L CNN
F 1 "100n" H 2765 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2688 10550 50  0001 C CNN
F 3 "~" H 2650 10700 50  0001 C CNN
	1    2650 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAF1A65
P 3150 10700
F 0 "C?" H 3265 10746 50  0000 L CNN
F 1 "100n" H 3265 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 10550 50  0001 C CNN
F 3 "~" H 3150 10700 50  0001 C CNN
	1    3150 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAF1A6B
P 3650 10700
F 0 "C?" H 3765 10746 50  0000 L CNN
F 1 "100n" H 3765 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3688 10550 50  0001 C CNN
F 3 "~" H 3650 10700 50  0001 C CNN
	1    3650 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAF1A71
P 4150 10700
F 0 "C?" H 4265 10746 50  0000 L CNN
F 1 "100n" H 4265 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4188 10550 50  0001 C CNN
F 3 "~" H 4150 10700 50  0001 C CNN
	1    4150 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAF5DB7
P 4650 10700
F 0 "C?" H 4765 10746 50  0000 L CNN
F 1 "100n" H 4765 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4688 10550 50  0001 C CNN
F 3 "~" H 4650 10700 50  0001 C CNN
	1    4650 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAF5DBD
P 5150 10700
F 0 "C?" H 5265 10746 50  0000 L CNN
F 1 "100n" H 5265 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5188 10550 50  0001 C CNN
F 3 "~" H 5150 10700 50  0001 C CNN
	1    5150 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAF5DC3
P 5650 10700
F 0 "C?" H 5765 10746 50  0000 L CNN
F 1 "100n" H 5765 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5688 10550 50  0001 C CNN
F 3 "~" H 5650 10700 50  0001 C CNN
	1    5650 10700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAF5DC9
P 6150 10700
F 0 "C?" H 6265 10746 50  0000 L CNN
F 1 "100n" H 6265 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6188 10550 50  0001 C CNN
F 3 "~" H 6150 10700 50  0001 C CNN
	1    6150 10700
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  10550 650  10500
Wire Wire Line
	650  10500 1150 10500
Wire Wire Line
	6150 10500 6150 10550
Wire Wire Line
	5650 10550 5650 10500
Connection ~ 5650 10500
Wire Wire Line
	5650 10500 6150 10500
Wire Wire Line
	5150 10550 5150 10500
Connection ~ 5150 10500
Wire Wire Line
	5150 10500 5650 10500
Wire Wire Line
	4650 10550 4650 10500
Connection ~ 4650 10500
Wire Wire Line
	4650 10500 5150 10500
Wire Wire Line
	4150 10550 4150 10500
Connection ~ 4150 10500
Wire Wire Line
	4150 10500 4650 10500
Wire Wire Line
	3650 10550 3650 10500
Connection ~ 3650 10500
Wire Wire Line
	3650 10500 4150 10500
Wire Wire Line
	3150 10550 3150 10500
Connection ~ 3150 10500
Wire Wire Line
	2650 10550 2650 10500
Connection ~ 2650 10500
Wire Wire Line
	2650 10500 3150 10500
Wire Wire Line
	2150 10550 2150 10500
Connection ~ 2150 10500
Wire Wire Line
	2150 10500 2650 10500
Wire Wire Line
	1650 10550 1650 10500
Connection ~ 1650 10500
Wire Wire Line
	1650 10500 2150 10500
Wire Wire Line
	1150 10550 1150 10500
Connection ~ 1150 10500
Wire Wire Line
	1150 10500 1650 10500
Wire Wire Line
	650  10850 650  10900
Wire Wire Line
	650  10900 1150 10900
Wire Wire Line
	6150 10900 6150 10850
Wire Wire Line
	5650 10850 5650 10900
Connection ~ 5650 10900
Wire Wire Line
	5650 10900 6150 10900
Wire Wire Line
	5150 10850 5150 10900
Connection ~ 5150 10900
Wire Wire Line
	5150 10900 5650 10900
Wire Wire Line
	4650 10850 4650 10900
Connection ~ 4650 10900
Wire Wire Line
	4650 10900 5150 10900
Wire Wire Line
	4150 10850 4150 10900
Connection ~ 4150 10900
Wire Wire Line
	4150 10900 4650 10900
Wire Wire Line
	3650 10850 3650 10900
Connection ~ 3650 10900
Wire Wire Line
	3150 10850 3150 10900
Connection ~ 3150 10900
Wire Wire Line
	2650 10850 2650 10900
Connection ~ 2650 10900
Wire Wire Line
	2650 10900 3150 10900
Wire Wire Line
	2150 10850 2150 10900
Connection ~ 2150 10900
Wire Wire Line
	2150 10900 2650 10900
Wire Wire Line
	1650 10850 1650 10900
Connection ~ 1650 10900
Wire Wire Line
	1650 10900 2150 10900
Wire Wire Line
	1150 10850 1150 10900
Connection ~ 1150 10900
Wire Wire Line
	1150 10900 1650 10900
$Comp
L power:GND #PWR?
U 1 1 5DB438B1
P 3650 10950
F 0 "#PWR?" H 3650 10700 50  0001 C CNN
F 1 "GND" H 3655 10777 50  0000 C CNN
F 2 "" H 3650 10950 50  0001 C CNN
F 3 "" H 3650 10950 50  0001 C CNN
	1    3650 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 10950 3650 10900
Wire Wire Line
	3650 10500 3650 10450
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DB6CBFD
P 6850 10500
F 0 "FB?" V 6576 10500 50  0000 C CNN
F 1 "742792031" V 6667 10500 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6780 10500 50  0001 C CNN
F 3 "~" H 6850 10500 50  0001 C CNN
	1    6850 10500
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DB6D4C6
P 7100 10700
F 0 "C?" H 7215 10746 50  0000 L CNN
F 1 "1u" H 7215 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7138 10550 50  0001 C CNN
F 3 "~" H 7100 10700 50  0001 C CNN
	1    7100 10700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 10500 7100 10550
$Comp
L power:GND #PWR?
U 1 1 5DB72CF5
P 7100 10950
F 0 "#PWR?" H 7100 10700 50  0001 C CNN
F 1 "GND" H 7105 10777 50  0000 C CNN
F 2 "" H 7100 10950 50  0001 C CNN
F 3 "" H 7100 10950 50  0001 C CNN
	1    7100 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 10950 7100 10850
Wire Wire Line
	6650 10500 6700 10500
Wire Wire Line
	7100 10500 7600 10500
Text Label 7600 10500 2    50   ~ 0
MCU_VDDA
$Comp
L Connector_Generic:Conn_02x01 J?
U 1 1 5DB87F87
P 650 8700
F 0 "J?" V 654 8780 50  0000 L CNN
F 1 "Conn_02x01" V 745 8780 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 650 8700 50  0001 C CNN
F 3 "~" H 650 8700 50  0001 C CNN
	1    650  8700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DB88AAB
P 650 9000
F 0 "#PWR?" H 650 8750 50  0001 C CNN
F 1 "GND" H 655 8827 50  0000 C CNN
F 2 "" H 650 9000 50  0001 C CNN
F 3 "" H 650 9000 50  0001 C CNN
	1    650  9000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DB8FF79
P 650 8250
F 0 "R?" H 580 8204 50  0000 R CNN
F 1 "10k" H 580 8295 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 580 8250 50  0001 C CNN
F 3 "~" H 650 8250 50  0001 C CNN
	1    650  8250
	-1   0    0    1   
$EndComp
Wire Wire Line
	650  8500 650  8450
Wire Wire Line
	650  8450 1200 8450
Connection ~ 650  8450
Wire Wire Line
	650  8450 650  8400
Text Label 1200 8450 2    50   ~ 0
MCU_DEFAULT
$Comp
L Device:C C?
U 1 1 5DBA6521
P 2400 8100
F 0 "C?" H 2515 8146 50  0000 L CNN
F 1 "2u2" H 2515 8055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2438 7950 50  0001 C CNN
F 3 "~" H 2400 8100 50  0001 C CNN
	1    2400 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 7900 2400 7900
Wire Wire Line
	2400 7900 2400 7950
$Comp
L Device:C C?
U 1 1 5DBADF01
P 1950 8100
F 0 "C?" H 2065 8146 50  0000 L CNN
F 1 "2u2" H 2065 8055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1988 7950 50  0001 C CNN
F 3 "~" H 1950 8100 50  0001 C CNN
	1    1950 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 8250 1950 8300
Wire Wire Line
	1950 8300 2200 8300
Wire Wire Line
	2400 8300 2400 8250
Wire Wire Line
	1950 7700 3150 7700
Wire Wire Line
	1950 7700 1950 7950
$Comp
L power:GND #PWR?
U 1 1 5DBC271D
P 2200 8350
F 0 "#PWR?" H 2200 8100 50  0001 C CNN
F 1 "GND" H 2205 8177 50  0000 C CNN
F 2 "" H 2200 8350 50  0001 C CNN
F 3 "" H 2200 8350 50  0001 C CNN
	1    2200 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 8350 2200 8300
Connection ~ 2200 8300
Wire Wire Line
	2200 8300 2400 8300
$Comp
L Device:Crystal Y?
U 1 1 5DBCE9A3
P 1750 1100
F 0 "Y?" V 1704 1231 50  0000 L CNN
F 1 "NX3225GD-8MHZ-STD-CRA-3" V 1795 1231 50  0000 L CNN
F 2 "ADC_TEST:NX3225GD" H 1750 1100 50  0001 C CNN
F 3 "~" H 1750 1100 50  0001 C CNN
	1    1750 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 1300 1750 1250
Wire Wire Line
	1750 950  1750 900 
Wire Wire Line
	1750 900  3100 900 
Wire Wire Line
	3100 900  3100 1200
Wire Wire Line
	3100 1200 3150 1200
$Comp
L Device:C C?
U 1 1 5DBE0849
P 1750 1500
F 0 "C?" H 1865 1546 50  0000 L CNN
F 1 "8p" H 1865 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1788 1350 50  0001 C CNN
F 3 "~" H 1750 1500 50  0001 C CNN
	1    1750 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DBE0C2D
P 1250 1500
F 0 "C?" H 1365 1546 50  0000 L CNN
F 1 "8p" H 1365 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1288 1350 50  0001 C CNN
F 3 "~" H 1250 1500 50  0001 C CNN
	1    1250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1350 1750 1300
Connection ~ 1750 1300
Wire Wire Line
	1750 900  1250 900 
Wire Wire Line
	1250 900  1250 1350
Connection ~ 1750 900 
Wire Wire Line
	1250 1650 1250 1700
Wire Wire Line
	1250 1700 1500 1700
Wire Wire Line
	1750 1700 1750 1650
$Comp
L power:GND #PWR?
U 1 1 5DC11C96
P 1500 1750
F 0 "#PWR?" H 1500 1500 50  0001 C CNN
F 1 "GND" H 1505 1577 50  0000 C CNN
F 2 "" H 1500 1750 50  0001 C CNN
F 3 "" H 1500 1750 50  0001 C CNN
	1    1500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1750 1500 1700
Connection ~ 1500 1700
Wire Wire Line
	1500 1700 1750 1700
Wire Wire Line
	3150 4500 2700 4500
Text Label 2700 4500 0    50   ~ 0
TMS_SWDIO
Wire Wire Line
	3150 4600 2700 4600
Text Label 2700 4600 0    50   ~ 0
TCK_SWCLK
Text Notes 7850 11150 0    50   ~ 0
PROGRAMMING CONNECTOR\nDESIGNED FOR JLINK
Wire Wire Line
	14550 2300 14600 2300
Wire Wire Line
	14600 2500 14550 2500
Wire Wire Line
	14550 2600 14600 2600
Text HLabel 15700 8300 2    50   BiDi ~ 0
NRST
Wire Wire Line
	14550 8300 15200 8300
Wire Wire Line
	1750 1300 3150 1300
NoConn ~ 3150 3500
NoConn ~ 3150 3600
NoConn ~ 3150 3800
NoConn ~ 3150 5200
NoConn ~ 14550 2400
NoConn ~ 14550 3100
NoConn ~ 14550 6700
NoConn ~ 14550 7000
NoConn ~ 14550 7100
$Comp
L Device:C C?
U 1 1 5DF2F119
P 6650 10700
F 0 "C?" H 6765 10746 50  0000 L CNN
F 1 "100n" H 6765 10655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6688 10550 50  0001 C CNN
F 3 "~" H 6650 10700 50  0001 C CNN
	1    6650 10700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 10550 6650 10500
Wire Wire Line
	6650 10500 6150 10500
Connection ~ 6150 10500
Wire Wire Line
	6150 10900 6650 10900
Wire Wire Line
	6650 10900 6650 10850
Connection ~ 6150 10900
Wire Wire Line
	3150 10500 3650 10500
Wire Wire Line
	3150 10900 3650 10900
Wire Wire Line
	3650 10900 4150 10900
Wire Wire Line
	3150 3200 2600 3200
Text Label 2600 3200 0    50   ~ 0
MCU_DEFAULT
Connection ~ 6650 10500
Wire Wire Line
	7100 10500 7000 10500
Connection ~ 7100 10500
$Comp
L Device:R R?
U 1 1 5E648C3B
P 2750 6550
F 0 "R?" V 2543 6550 50  0000 C CNN
F 1 "680" V 2634 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 6550 50  0001 C CNN
F 3 "~" H 2750 6550 50  0001 C CNN
	1    2750 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E64A32E
P 2750 6950
F 0 "R?" V 2543 6950 50  0000 C CNN
F 1 "560" V 2634 6950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 6950 50  0001 C CNN
F 3 "~" H 2750 6950 50  0001 C CNN
	1    2750 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E64A698
P 2750 7350
F 0 "R?" V 2543 7350 50  0000 C CNN
F 1 "680" V 2634 7350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 7350 50  0001 C CNN
F 3 "~" H 2750 7350 50  0001 C CNN
	1    2750 7350
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E66EF29
P 2400 6550
F 0 "D?" H 2393 6295 50  0000 C CNN
F 1 "RED" H 2393 6386 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2400 6550 50  0001 C CNN
F 3 "~" H 2400 6550 50  0001 C CNN
	1    2400 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E66FC1B
P 2400 6950
F 0 "D?" H 2393 6695 50  0000 C CNN
F 1 "GREEN" H 2393 6786 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2400 6950 50  0001 C CNN
F 3 "~" H 2400 6950 50  0001 C CNN
	1    2400 6950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5E69BE69
P 2400 7350
F 0 "D?" H 2393 7095 50  0000 C CNN
F 1 "BLUE" H 2393 7186 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2400 7350 50  0001 C CNN
F 3 "~" H 2400 7350 50  0001 C CNN
	1    2400 7350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 7350 2550 7350
Wire Wire Line
	2200 7350 2200 6950
Wire Wire Line
	2200 6550 2250 6550
Wire Wire Line
	2250 7350 2200 7350
Wire Wire Line
	2200 6950 2250 6950
Connection ~ 2200 6950
Wire Wire Line
	2200 6950 2200 6550
Wire Wire Line
	2550 6950 2600 6950
Wire Wire Line
	2550 6550 2600 6550
Wire Wire Line
	2150 6950 2200 6950
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E419507
P 8850 800
F 0 "#PWR?" H 8850 650 50  0001 C CNN
F 1 "+3.3VF" H 8865 973 50  0000 C CNN
F 2 "" H 8850 800 50  0001 C CNN
F 3 "" H 8850 800 50  0001 C CNN
	1    8850 800 
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E4217A1
P 3650 10450
F 0 "#PWR?" H 3650 10300 50  0001 C CNN
F 1 "+3.3VF" H 3665 10623 50  0000 C CNN
F 2 "" H 3650 10450 50  0001 C CNN
F 3 "" H 3650 10450 50  0001 C CNN
	1    3650 10450
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E422513
P 650 8100
F 0 "#PWR?" H 650 7950 50  0001 C CNN
F 1 "+3.3VF" H 665 8273 50  0000 C CNN
F 2 "" H 650 8100 50  0001 C CNN
F 3 "" H 650 8100 50  0001 C CNN
	1    650  8100
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E423A04
P 7800 10150
F 0 "#PWR?" H 7800 10000 50  0001 C CNN
F 1 "+3.3VF" H 7815 10323 50  0000 C CNN
F 2 "" H 7800 10150 50  0001 C CNN
F 3 "" H 7800 10150 50  0001 C CNN
	1    7800 10150
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E426FFF
P 15200 7950
F 0 "#PWR?" H 15200 7800 50  0001 C CNN
F 1 "+3.3VF" H 15215 8123 50  0000 C CNN
F 2 "" H 15200 7950 50  0001 C CNN
F 3 "" H 15200 7950 50  0001 C CNN
	1    15200 7950
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E4281F0
P 3050 8700
F 0 "#PWR?" H 3050 8550 50  0001 C CNN
F 1 "+3.3VF" V 3050 8850 50  0000 L CNN
F 2 "" H 3050 8700 50  0001 C CNN
F 3 "" H 3050 8700 50  0001 C CNN
	1    3050 8700
	0    -1   -1   0   
$EndComp
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E42C5D5
P 2150 6950
F 0 "#PWR?" H 2150 6800 50  0001 C CNN
F 1 "+3.3VF" V 2150 7100 50  0000 L CNN
F 2 "" H 2150 6950 50  0001 C CNN
F 3 "" H 2150 6950 50  0001 C CNN
	1    2150 6950
	0    -1   -1   0   
$EndComp
Text HLabel 14600 6900 2    50   BiDi ~ 0
~CS
Text HLabel 14600 6800 2    50   BiDi ~ 0
CKE
Text HLabel 14600 2000 2    50   BiDi ~ 0
CLK
Text HLabel 14600 2700 2    50   BiDi ~ 0
~CAS
Wire Wire Line
	14550 2000 14600 2000
Wire Wire Line
	14600 6900 14550 6900
Wire Wire Line
	14600 6800 14550 6800
Wire Wire Line
	14550 2700 14600 2700
Text HLabel 14600 1600 2    50   BiDi ~ 0
BA0
Text HLabel 14600 1700 2    50   BiDi ~ 0
BA1
Wire Wire Line
	14600 1700 14550 1700
Wire Wire Line
	14600 1600 14550 1600
NoConn ~ 8550 10450
NoConn ~ 8550 10550
NoConn ~ 14550 6600
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E4215B8
P 1150 9600
F 0 "#PWR?" H 1150 9450 50  0001 C CNN
F 1 "+3.3VF" H 1165 9773 50  0000 C CNN
F 2 "" H 1150 9600 50  0001 C CNN
F 3 "" H 1150 9600 50  0001 C CNN
	1    1150 9600
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+3.3VF #PWR?
U 1 1 5E41DE54
P 650 9600
F 0 "#PWR?" H 650 9450 50  0001 C CNN
F 1 "+3.3VF" H 665 9773 50  0000 C CNN
F 2 "" H 650 9600 50  0001 C CNN
F 3 "" H 650 9600 50  0001 C CNN
	1    650  9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 10100 1150 10000
$Comp
L power:GND #PWR?
U 1 1 5EFC3E57
P 1150 10100
F 0 "#PWR?" H 1150 9850 50  0001 C CNN
F 1 "GND" H 1155 9927 50  0000 C CNN
F 2 "" H 1150 10100 50  0001 C CNN
F 3 "" H 1150 10100 50  0001 C CNN
	1    1150 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 9700 1150 9600
$Comp
L Device:C C?
U 1 1 5EFA260C
P 1150 9850
F 0 "C?" H 1265 9896 50  0000 L CNN
F 1 "100n" H 1265 9805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1188 9700 50  0001 C CNN
F 3 "~" H 1150 9850 50  0001 C CNN
	1    1150 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  9700 650  9600
Wire Wire Line
	650  10100 650  10000
$Comp
L power:GND #PWR?
U 1 1 5E1764D7
P 650 10100
F 0 "#PWR?" H 650 9850 50  0001 C CNN
F 1 "GND" H 655 9927 50  0000 C CNN
F 2 "" H 650 10100 50  0001 C CNN
F 3 "" H 650 10100 50  0001 C CNN
	1    650  10100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E17592C
P 650 9850
F 0 "C?" H 765 9896 50  0000 L CNN
F 1 "100n" H 765 9805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 688 9700 50  0001 C CNN
F 3 "~" H 650 9850 50  0001 C CNN
	1    650  9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2100 3100 2100
Wire Wire Line
	3150 2200 3100 2200
Wire Wire Line
	3150 2300 3100 2300
Wire Wire Line
	3150 2400 3100 2400
Text HLabel 3100 2400 0    50   Output ~ 0
OCS_DIN
Text HLabel 3100 2300 0    50   Input ~ 0
OCS_SDO
Text HLabel 3100 2100 0    50   Output ~ 0
OCS_~SYNC
Text HLabel 3100 2200 0    50   Output ~ 0
OCS_SCLK
Wire Wire Line
	14550 2200 14600 2200
Text HLabel 14600 2200 2    50   Output ~ 0
FPGA_SPI1_NSS
Wire Wire Line
	14550 2100 14600 2100
Text HLabel 14600 2100 2    50   Input ~ 0
FPGA_SPI1_MISO
Wire Wire Line
	14550 3600 14600 3600
Text HLabel 14600 3600 2    50   Output ~ 0
FPGA_SPI1_MOSI
Text HLabel 3100 3700 0    50   Output ~ 0
FPGA_SPI1_SCK
Wire Wire Line
	3100 3700 3150 3700
Wire Wire Line
	14550 3200 14600 3200
Text HLabel 14600 3200 2    50   BiDi ~ 0
FPGA_IO1
Wire Wire Line
	14550 3300 14600 3300
Text HLabel 14600 3300 2    50   BiDi ~ 0
FPGA_IO2
Wire Wire Line
	14550 3500 14600 3500
Text HLabel 14600 3500 2    50   BiDi ~ 0
FPGA_UART2_RX_TTL
Text HLabel 14600 3400 2    50   BiDi ~ 0
FPGA_UART2_TX_TTL
Wire Wire Line
	14600 3400 14550 3400
$Comp
L ADC_TEST:STM32H743ZI U?
U 1 1 5E468D70
P 8850 4950
F 0 "U?" H 3500 8850 50  0000 C CNN
F 1 "STM32H743ZI/STM32F765ZGT6" H 13750 8850 50  0000 C CNN
F 2 "ADC_TEST:TQFP-144_20x20mm_P0.5mm" H 24750 6450 50  0001 C CNN
F 3 "" H 24750 6450 50  0001 C CNN
	1    8850 4950
	1    0    0    -1  
$EndComp
Text HLabel 3100 4200 0    50   Output ~ 0
DC_AMP2_MUX_A0
Text HLabel 3100 4300 0    50   Output ~ 0
DC_AMP2_MUX_A1
Text HLabel 3100 4400 0    50   Output ~ 0
DC_AMP2_MUX_EN
Text HLabel 3100 4100 0    50   Output ~ 0
AMPL_SEL
Wire Wire Line
	2900 6550 2950 6550
Wire Wire Line
	2950 6550 2950 6200
Wire Wire Line
	2950 6200 3150 6200
Wire Wire Line
	2900 6950 3000 6950
Wire Wire Line
	3000 6950 3000 6300
Wire Wire Line
	3000 6300 3150 6300
Wire Wire Line
	3050 7350 3050 6400
Wire Wire Line
	3050 6400 3150 6400
Wire Wire Line
	2900 7350 3050 7350
Wire Wire Line
	3100 4100 3150 4100
Wire Wire Line
	3100 4400 3150 4400
Wire Wire Line
	3150 4300 3100 4300
Wire Wire Line
	3100 4200 3150 4200
Text HLabel 14600 1900 2    50   Output ~ 0
CXN_REL5
Text HLabel 14600 1800 2    50   Output ~ 0
CXN_REL4
Text HLabel 14600 1500 2    50   Output ~ 0
CXN_REL3
Text HLabel 14600 1400 2    50   Output ~ 0
CXN_REL2
Text HLabel 14600 7800 2    50   Output ~ 0
CXN_REL1
Wire Wire Line
	14550 1900 14600 1900
Wire Wire Line
	14600 1800 14550 1800
Wire Wire Line
	14550 1500 14600 1500
Wire Wire Line
	14600 1400 14550 1400
Text HLabel 3100 4700 0    50   Output ~ 0
DC_AMP_10MEG
Wire Wire Line
	3100 4700 3150 4700
$Comp
L power:GND #PWR?
U 1 1 5F62AE15
P 12050 9600
F 0 "#PWR?" H 12050 9350 50  0001 C CNN
F 1 "GND" H 12055 9427 50  0000 C CNN
F 2 "" H 12050 9600 50  0001 C CNN
F 3 "" H 12050 9600 50  0001 C CNN
	1    12050 9600
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:DGNDF #PWR?
U 1 1 5F62B63A
P 12350 9600
F 0 "#PWR?" H 12350 9350 50  0001 C CNN
F 1 "DGNDF" H 12355 9427 50  0000 C CNN
F 2 "" H 12350 9600 50  0001 C CNN
F 3 "" H 12350 9600 50  0001 C CNN
	1    12350 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 9600 12350 9550
Wire Wire Line
	12350 9550 12050 9550
Wire Wire Line
	12050 9550 12050 9600
NoConn ~ 3150 6000
NoConn ~ 3150 6100
Wire Wire Line
	14600 7800 14550 7800
NoConn ~ 14550 7400
NoConn ~ 14550 7300
NoConn ~ 14550 6500
NoConn ~ 14550 6400
NoConn ~ 14550 6300
NoConn ~ 14550 7200
NoConn ~ 3150 5100
NoConn ~ 3150 2500
NoConn ~ 3150 2700
NoConn ~ 3150 2800
NoConn ~ 3150 2900
NoConn ~ 3150 3000
NoConn ~ 3150 1500
NoConn ~ 3150 1600
NoConn ~ 3150 1700
NoConn ~ 3150 1800
NoConn ~ 3150 1900
NoConn ~ 3150 2000
NoConn ~ 14550 1200
NoConn ~ 14550 1300
NoConn ~ 14550 2900
NoConn ~ 14550 3000
NoConn ~ 14550 3700
NoConn ~ 14550 3800
NoConn ~ 14550 3900
NoConn ~ 14550 4000
NoConn ~ 14550 4100
NoConn ~ 14550 4200
NoConn ~ 14550 4300
NoConn ~ 14550 4400
NoConn ~ 14550 4800
NoConn ~ 14550 4900
NoConn ~ 14550 5000
NoConn ~ 14550 5100
NoConn ~ 14550 5200
NoConn ~ 14550 5300
NoConn ~ 14550 5400
NoConn ~ 14550 5500
NoConn ~ 14550 5600
NoConn ~ 14550 5700
NoConn ~ 14550 5800
NoConn ~ 14550 5900
NoConn ~ 14550 6000
NoConn ~ 14550 6100
NoConn ~ 14550 7500
NoConn ~ 14550 7600
NoConn ~ 14550 7700
NoConn ~ 3150 5900
NoConn ~ 3150 5800
NoConn ~ 3150 5700
NoConn ~ 3150 5600
NoConn ~ 3150 5500
NoConn ~ 3150 4000
NoConn ~ 3150 2600
NoConn ~ 14550 4600
NoConn ~ 14550 4700
$EndSCHEMATC