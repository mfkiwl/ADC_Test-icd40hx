EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 8 8
Title "ADC"
Date "2020-03-07"
Rev "1.00"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADC_TEST:DG211CJD U401
U 5 1 5E3A0375
P 900 10200
F 0 "U401" H 1180 10246 50  0000 L CNN
F 1 "DG211CJD" H 1180 10155 50  0000 L CNN
F 2 "" H 900 10100 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 900 10200 50  0001 C CNN
	5    900  10200
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:OPA2192 U403
U 3 1 5E45E9E4
P 1750 10250
F 0 "U403" H 1878 10296 50  0000 L CNN
F 1 "OPA2192" H 1878 10205 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1750 10400 50  0001 C CNN
F 3 "" H 1750 10400 50  0001 C CNN
	3    1750 10250
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:DG419xY U404
U 2 1 5E5E2DE0
P 2500 10200
F 0 "U404" H 2050 10250 50  0000 L CNN
F 1 "DG419xY" H 2000 10150 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2500 9900 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG417-DG419.pdf" H 2500 10200 50  0001 C CNN
	2    2500 10200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 9650 2650 9700
Wire Wire Line
	2650 9700 2500 9700
$Comp
L ADC_TEST:+5VF #PWR0423
U 1 1 5E604217
P 2250 9650
F 0 "#PWR0423" H 2250 9500 50  0001 C CNN
F 1 "+5VF" H 2265 9823 50  0000 C CNN
F 2 "" H 2250 9650 50  0001 C CNN
F 3 "" H 2250 9650 50  0001 C CNN
	1    2250 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 9650 2250 9700
Wire Wire Line
	2250 9700 2400 9700
Wire Wire Line
	2250 10750 2250 10700
Wire Wire Line
	2250 10700 2400 10700
$Comp
L ADC_TEST:AGNDF #PWR0426
U 1 1 5E6136A6
P 2650 10750
F 0 "#PWR0426" H 2650 10500 50  0001 C CNN
F 1 "AGNDF" H 2655 10577 50  0000 C CNN
F 2 "" H 2650 10750 50  0001 C CNN
F 3 "" H 2650 10750 50  0001 C CNN
	1    2650 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 10700 2500 10700
Wire Wire Line
	2650 10750 2650 10700
Wire Wire Line
	1150 10750 1150 10700
Wire Wire Line
	1150 10700 1000 10700
$Comp
L ADC_TEST:AGNDF #PWR0405
U 1 1 5E62B88E
P 750 10750
F 0 "#PWR0405" H 750 10500 50  0001 C CNN
F 1 "AGNDF" H 755 10577 50  0000 C CNN
F 2 "" H 750 10750 50  0001 C CNN
F 3 "" H 750 10750 50  0001 C CNN
	1    750  10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  10750 750  10700
Wire Wire Line
	750  10700 900  10700
NoConn ~ 6150 7000
Wire Wire Line
	8200 7800 8700 7800
Wire Wire Line
	7200 8550 7200 8000
Wire Wire Line
	5850 8550 7200 8550
Wire Wire Line
	7550 7700 7500 7700
$Comp
L ADC_TEST:OPA2192 U403
U 1 1 5E45E095
P 7800 7800
F 0 "U403" H 7850 8167 50  0000 C CNN
F 1 "OPA2192" H 7850 8076 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7800 7950 50  0001 C CNN
F 3 "" H 7800 7950 50  0001 C CNN
	1    7800 7800
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:OPA2192 U403
U 2 1 5E45E5A5
P 9950 7900
F 0 "U403" H 10000 7550 50  0000 C CNN
F 1 "OPA2192" H 10000 7650 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9950 8050 50  0001 C CNN
F 3 "" H 9950 8050 50  0001 C CNN
	2    9950 7900
	1    0    0    1   
$EndComp
Wire Wire Line
	7550 7900 7450 7900
Wire Wire Line
	7450 8150 8200 8150
Wire Wire Line
	8200 8150 8200 7800
Wire Wire Line
	8200 7800 8150 7800
$Comp
L ADC_TEST:LT5400-10k-10k U412
U 1 1 5E3AB8F0
P 9100 7650
F 0 "U412" H 9100 8215 50  0000 C CNN
F 1 "LT5400-10k-10k" H 9100 8124 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.73x1.85mm_ThermalVias" H 9100 7750 50  0001 C CNN
F 3 "" H 9100 7750 50  0001 C CNN
	1    9100 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 7800 8700 7800
Connection ~ 8200 7800
Wire Wire Line
	8750 7650 8700 7650
Wire Wire Line
	8700 7650 8700 7800
Connection ~ 8700 7800
$Comp
L ADC_TEST:AGNDF #PWR0465
U 1 1 5E3B4577
P 8700 8100
F 0 "#PWR0465" H 8700 7850 50  0001 C CNN
F 1 "AGNDF" H 8705 7927 50  0000 C CNN
F 2 "" H 8700 8100 50  0001 C CNN
F 3 "" H 8700 8100 50  0001 C CNN
	1    8700 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 8100 8700 8000
Wire Wire Line
	8700 8000 8750 8000
Wire Wire Line
	8750 7500 8700 7500
Wire Wire Line
	8700 7500 8700 7350
Wire Wire Line
	8700 7350 8750 7350
Wire Wire Line
	9500 7350 9450 7350
Wire Wire Line
	9500 7350 9500 7500
Wire Wire Line
	9500 7800 9450 7800
Wire Wire Line
	9450 7650 9500 7650
Connection ~ 9500 7650
Wire Wire Line
	9500 7650 9500 7800
Wire Wire Line
	9450 7500 9500 7500
Connection ~ 9500 7500
Wire Wire Line
	9500 7500 9500 7650
Wire Wire Line
	9700 7800 9500 7800
Connection ~ 9500 7800
$Comp
L ADC_TEST:AGNDF #PWR0467
U 1 1 5E3CD606
P 9650 8050
F 0 "#PWR0467" H 9650 7800 50  0001 C CNN
F 1 "AGNDF" H 9655 7877 50  0000 C CNN
F 2 "" H 9650 8050 50  0001 C CNN
F 3 "" H 9650 8050 50  0001 C CNN
	1    9650 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 8050 9650 8000
Wire Wire Line
	9650 8000 9700 8000
Wire Wire Line
	8700 7350 8700 7000
Wire Wire Line
	10350 7000 10350 7900
Wire Wire Line
	10350 7900 10300 7900
Connection ~ 8700 7350
Wire Wire Line
	8200 7800 8200 7450
Wire Wire Line
	10350 7900 10750 7900
Connection ~ 10350 7900
Text Label 10750 7900 2    50   ~ 0
VREF+
Text Label 8200 7450 3    50   ~ 0
VREF-
Wire Wire Line
	7450 7900 7450 8150
Wire Wire Line
	8700 7000 10350 7000
Text HLabel 5850 8550 0    50   Input ~ 0
FPGA_SW_VRH
Wire Wire Line
	6750 7800 6750 8050
Connection ~ 6750 7800
Wire Wire Line
	6900 7800 6750 7800
Wire Wire Line
	6100 7600 6900 7600
Connection ~ 6100 7600
Connection ~ 5400 6600
Wire Wire Line
	6750 8050 6000 8050
$Comp
L ADC_TEST:AGNDF #PWR0456
U 1 1 5E480564
P 6000 7900
F 0 "#PWR0456" H 6000 7650 50  0001 C CNN
F 1 "AGNDF" V 6005 7772 50  0000 R CNN
F 2 "" H 6000 7900 50  0001 C CNN
F 3 "" H 6000 7900 50  0001 C CNN
	1    6000 7900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 7600 6000 7600
Wire Wire Line
	6100 7750 6100 7600
Wire Wire Line
	6000 7750 6100 7750
Wire Wire Line
	5250 7750 5300 7750
Wire Wire Line
	5250 7900 5250 7750
Wire Wire Line
	5300 7900 5250 7900
Wire Wire Line
	5150 8050 5300 8050
Wire Wire Line
	5150 7600 5150 8050
Wire Wire Line
	5300 7600 5150 7600
$Comp
L ADC_TEST:AGNDF #PWR0453
U 1 1 5E478B64
P 5300 8250
F 0 "#PWR0453" H 5300 8000 50  0001 C CNN
F 1 "AGNDF" V 5305 8122 50  0000 R CNN
F 2 "" H 5300 8250 50  0001 C CNN
F 3 "" H 5300 8250 50  0001 C CNN
	1    5300 8250
	0    1    1    0   
$EndComp
$Comp
L ADC_TEST:LT5400-5k-1k U408
U 1 1 5E476E36
P 5650 7900
F 0 "U408" H 5650 8465 50  0000 C CNN
F 1 "LT5400-5k-1k" H 5650 8374 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.73x1.85mm_ThermalVias" H 5650 8000 50  0001 C CNN
F 3 "" H 5650 8000 50  0001 C CNN
	1    5650 7900
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:DG419xY U404
U 1 1 5E46086F
P 7200 7600
F 0 "U404" H 7100 7850 50  0000 L CNN
F 1 "DG419xY" H 7050 7750 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7200 7300 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG417-DG419.pdf" H 7200 7600 50  0001 C CNN
	1    7200 7600
	-1   0    0    -1  
$EndComp
$Comp
L ADC_TEST:AGNDF #PWR0460
U 1 1 5E45C679
P 7000 6650
F 0 "#PWR0460" H 7000 6400 50  0001 C CNN
F 1 "AGNDF" H 7005 6477 50  0000 C CNN
F 2 "" H 7000 6650 50  0001 C CNN
F 3 "" H 7000 6650 50  0001 C CNN
	1    7000 6650
	1    0    0    -1  
$EndComp
Connection ~ 8400 6200
Wire Wire Line
	8400 5550 8400 6200
Wire Wire Line
	8050 5550 8400 5550
Wire Wire Line
	7600 6100 7650 6100
Wire Wire Line
	8400 6200 8250 6200
Wire Wire Line
	8400 7050 8400 6200
Wire Wire Line
	8000 7050 8400 7050
Wire Wire Line
	7600 7050 7600 6300
Wire Wire Line
	7700 7050 7600 7050
NoConn ~ 7950 6500
Wire Wire Line
	7000 6300 7000 6350
Wire Wire Line
	7650 6300 7600 6300
$Comp
L Device:R R406
U 1 1 5E43CAB7
P 7000 6500
F 0 "R406" H 7070 6546 50  0000 L CNN
F 1 "6k95/.05%" H 7070 6455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6930 6500 50  0001 C CNN
F 3 "~" H 7000 6500 50  0001 C CNN
	1    7000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 7100 5400 7000
Wire Wire Line
	5400 6600 5250 6600
Wire Wire Line
	5400 6700 5400 6600
$Comp
L Device:C C421
U 1 1 5E4356FE
P 5400 6850
F 0 "C421" H 5515 6896 50  0000 L CNN
F 1 "100n" H 5515 6805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5438 6700 50  0001 C CNN
F 3 "~" H 5400 6850 50  0001 C CNN
	1    5400 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6600 4750 6650
Wire Wire Line
	4950 6600 4750 6600
$Comp
L Device:R R404
U 1 1 5E43326B
P 5100 6600
F 0 "R404" V 4893 6600 50  0000 C CNN
F 1 "62" V 4984 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5030 6600 50  0001 C CNN
F 3 "~" H 5100 6600 50  0001 C CNN
	1    5100 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 7050 4750 7100
$Comp
L ADC_TEST:LM399H U406
U 1 1 5E3D78A3
P 4650 6850
F 0 "U406" H 4878 6896 50  0000 L CNN
F 1 "LM399H" H 4878 6805 50  0000 L CNN
F 2 "ADC_TEST:LMx99" H 3750 7300 50  0001 C CNN
F 3 "" H 3750 7300 50  0001 C CNN
	1    4650 6850
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 1600 4050 4100
Wire Wire Line
	6300 3400 6300 3050
Wire Wire Line
	6150 3400 6300 3400
Connection ~ 5750 3400
Wire Wire Line
	5850 3400 5750 3400
$Comp
L Device:C C415
U 1 1 5E3E8F7C
P 6000 3400
F 0 "C415" V 5748 3400 50  0000 C CNN
F 1 "23PS222" V 5839 3400 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L12.0mm_D6.5mm_P15.00mm_Horizontal" H 6038 3250 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3400
	0    1    1    0   
$EndComp
Text HLabel 4800 3750 0    50   Input ~ 0
FGPA_AD_IRN
Wire Wire Line
	5100 4100 4050 4100
Wire Wire Line
	5100 4050 5100 4100
Connection ~ 5750 2350
Wire Wire Line
	5750 3400 5750 2350
Wire Wire Line
	5100 3400 5750 3400
Wire Wire Line
	5100 3450 5100 3400
Wire Wire Line
	5100 3000 5100 3050
Text HLabel 4800 2700 0    50   Input ~ 0
FGPA_AD_ID
Connection ~ 5100 2350
Wire Wire Line
	5100 2400 5100 2350
Text HLabel 4750 2000 0    50   Input ~ 0
FGPA_AD_IRP
Text HLabel 4800 1150 0    50   Input ~ 0
FGPA_AD_IIN
Wire Wire Line
	5100 2350 5100 2300
Wire Wire Line
	5750 2350 5100 2350
Wire Wire Line
	5750 1500 5750 2350
Wire Wire Line
	5100 1500 5750 1500
Wire Wire Line
	5100 1450 5100 1500
Wire Wire Line
	5100 1650 5100 1700
Wire Wire Line
	4350 1650 5100 1650
Wire Wire Line
	4350 1450 4350 1650
Wire Wire Line
	5100 800  5100 850 
Wire Wire Line
	4150 800  5100 800 
Wire Wire Line
	4150 1300 4150 800 
$Comp
L ADC_TEST:DG211CJD U401
U 1 1 5E3B05D5
P 5100 1150
F 0 "U401" V 5054 1280 50  0000 L CNN
F 1 "DG211CJD" V 5145 1280 50  0000 L CNN
F 2 "" H 5100 1050 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 5100 1150 50  0001 C CNN
	1    5100 1150
	0    1    1    0   
$EndComp
$Comp
L ADC_TEST:DG211CJD U401
U 4 1 5E39DB94
P 5100 3750
F 0 "U401" V 5054 3880 50  0000 L CNN
F 1 "DG211CJD" V 5145 3880 50  0000 L CNN
F 2 "" H 5100 3650 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 5100 3750 50  0001 C CNN
	4    5100 3750
	0    1    1    0   
$EndComp
$Comp
L ADC_TEST:DG211CJD U401
U 3 1 5E39C04E
P 5100 2000
F 0 "U401" V 5054 2130 50  0000 L CNN
F 1 "DG211CJD" V 5145 2130 50  0000 L CNN
F 2 "" H 5100 1900 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 5100 2000 50  0001 C CNN
	3    5100 2000
	0    1    1    0   
$EndComp
$Comp
L ADC_TEST:DG211CJD U401
U 2 1 5E39AB01
P 5100 2700
F 0 "U401" V 5054 2830 50  0000 L CNN
F 1 "DG211CJD" V 5145 2830 50  0000 L CNN
F 2 "" H 5100 2600 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 5100 2700 50  0001 C CNN
	2    5100 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1800 3250 1800
Text Label 2900 1600 0    50   ~ 0
VREF+
Wire Wire Line
	3250 1600 2900 1600
Text Label 2900 1450 0    50   ~ 0
VREF-
Wire Wire Line
	3250 1450 2900 1450
Wire Wire Line
	3150 1300 3250 1300
Wire Wire Line
	3150 800  3150 1300
Wire Wire Line
	4050 1150 4050 800 
Wire Wire Line
	3950 1150 4050 1150
$Comp
L ADC_TEST:AGNDF #PWR0407
U 1 1 5E3957BE
P 3200 1800
F 0 "#PWR0407" H 3200 1550 50  0001 C CNN
F 1 "AGNDF" V 3205 1672 50  0000 R CNN
F 2 "" H 3200 1800 50  0001 C CNN
F 3 "" H 3200 1800 50  0001 C CNN
	1    3200 1800
	0    1    1    0   
$EndComp
Text HLabel 2900 1150 0    50   Input ~ 0
ADIN
Wire Wire Line
	3250 1150 2900 1150
Wire Wire Line
	4050 800  3150 800 
$Comp
L ADC_TEST:LT5400-100k-100k U402
U 1 1 5E3943C8
P 3600 1450
F 0 "U402" H 3600 2000 50  0000 C CNN
F 1 "LT5400-100k-100k" H 3600 1900 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.73x1.85mm_ThermalVias" H 3600 1450 50  0001 C CNN
F 3 "" H 3600 1450 50  0001 C CNN
	1    3600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 6300 7600 6300
Connection ~ 7600 6300
Wire Wire Line
	7600 5550 7750 5550
Wire Wire Line
	7600 5550 7600 6100
Wire Wire Line
	5400 6600 5850 6600
Wire Wire Line
	5850 6800 5800 6800
Wire Wire Line
	5800 6800 5800 7250
Wire Wire Line
	5800 7250 6500 7250
Wire Wire Line
	6500 7250 6500 6700
Wire Wire Line
	6500 6700 6450 6700
Wire Wire Line
	6500 6700 6750 6700
Connection ~ 6500 6700
Wire Wire Line
	6750 6700 6750 7100
$Comp
L Device:C C416
U 1 1 5FDAF846
P 6000 3850
F 0 "C416" V 5748 3850 50  0000 C CNN
F 1 "2n2/SMD" V 5839 3850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6038 3700 50  0001 C CNN
F 3 "~" H 6000 3850 50  0001 C CNN
	1    6000 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3850 5750 3850
Wire Wire Line
	5750 3850 5750 3400
Wire Wire Line
	6150 3850 6300 3850
Wire Wire Line
	6300 3850 6300 3400
Connection ~ 6300 3400
Wire Wire Line
	3950 1300 4150 1300
Wire Wire Line
	3950 1450 4350 1450
Wire Wire Line
	3950 1600 4050 1600
Wire Wire Line
	8400 6200 8500 6200
$Comp
L Device:R R410
U 1 1 5E441B0E
P 8650 6200
F 0 "R410" V 8443 6200 50  0000 C CNN
F 1 "0" V 8534 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8580 6200 50  0001 C CNN
F 3 "~" H 8650 6200 50  0001 C CNN
	1    8650 6200
	0    1    1    0   
$EndComp
NoConn ~ 8800 6200
$Comp
L Device:R R317
U 1 1 5FCDD291
P 4600 2350
F 0 "R317" V 4807 2350 50  0000 C CNN
F 1 "1M" V 4716 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 2350 50  0001 C CNN
F 3 "~" H 4600 2350 50  0001 C CNN
	1    4600 2350
	0    1    -1   0   
$EndComp
Wire Wire Line
	4750 2000 4800 2000
Connection ~ 4800 2000
Wire Wire Line
	4750 2350 4800 2350
Wire Wire Line
	4800 2000 4800 2350
$Comp
L ADC_TEST:AGNDF #PWR0328
U 1 1 5FD29DCE
P 4450 2350
F 0 "#PWR0328" H 4450 2100 50  0001 C CNN
F 1 "AGNDF" V 4455 2222 50  0000 R CNN
F 2 "" H 4450 2350 50  0001 C CNN
F 3 "" H 4450 2350 50  0001 C CNN
	1    4450 2350
	0    1    1    0   
$EndComp
$Comp
L ADC_TEST:+18VF #PWR0810
U 1 1 60157FA2
P 4550 7050
F 0 "#PWR0810" H 4550 6900 50  0001 C CNN
F 1 "+18VF" H 4565 7223 50  0000 C CNN
F 2 "" H 4550 7050 50  0001 C CNN
F 3 "" H 4550 7050 50  0001 C CNN
	1    4550 7050
	-1   0    0    1   
$EndComp
$Comp
L ADC_TEST:-18VF #PWR0809
U 1 1 60158C16
P 4550 6650
F 0 "#PWR0809" H 4550 6500 50  0001 C CNN
F 1 "-18VF" H 4565 6823 50  0000 C CNN
F 2 "" H 4550 6650 50  0001 C CNN
F 3 "" H 4550 6650 50  0001 C CNN
	1    4550 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7100 5050 7100
$Comp
L ADC_TEST:AGNDF #PWR0811
U 1 1 60166210
P 5050 7150
F 0 "#PWR0811" H 5050 6900 50  0001 C CNN
F 1 "AGNDF" H 5055 6977 50  0000 C CNN
F 2 "" H 5050 7150 50  0001 C CNN
F 3 "" H 5050 7150 50  0001 C CNN
	1    5050 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 7150 5050 7100
Connection ~ 5050 7100
Wire Wire Line
	5050 7100 5400 7100
$Comp
L ADC_TEST:AGNDF #PWR0817
U 1 1 601797FC
P 7850 5900
F 0 "#PWR0817" H 7850 5650 50  0001 C CNN
F 1 "AGNDF" H 7855 5727 50  0000 C CNN
F 2 "" H 7850 5900 50  0001 C CNN
F 3 "" H 7850 5900 50  0001 C CNN
	1    7850 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R408
U 1 1 5E458119
P 7900 5550
F 0 "R408" V 7693 5550 50  0000 C CNN
F 1 "1k96/.1%" V 7784 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7830 5550 50  0001 C CNN
F 3 "~" H 7900 5550 50  0001 C CNN
	1    7900 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R407
U 1 1 5E451054
P 7850 7050
F 0 "R407" V 7643 7050 50  0000 C CNN
F 1 "3k01/.1%" V 7734 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7780 7050 50  0001 C CNN
F 3 "~" H 7850 7050 50  0001 C CNN
	1    7850 7050
	0    1    1    0   
$EndComp
$Comp
L ADC_TEST:OPA140 U802
U 1 1 601E11FB
P 6650 2250
F 0 "U802" H 6850 2500 50  0000 L CNN
F 1 "OPA140" H 6750 2400 50  0000 L CNN
F 2 "" H 6700 2300 50  0001 C CNN
F 3 "" H 6800 2400 50  0001 C CNN
	1    6650 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R805
U 1 1 601E3268
P 6550 1700
F 0 "R805" H 6620 1746 50  0000 L CNN
F 1 "10" H 6620 1655 50  0000 L CNN
F 2 "" V 6480 1700 50  0001 C CNN
F 3 "~" H 6550 1700 50  0001 C CNN
	1    6550 1700
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+18VF #PWR0815
U 1 1 601E6CB2
P 6550 1550
F 0 "#PWR0815" H 6550 1400 50  0001 C CNN
F 1 "+18VF" H 6565 1723 50  0000 C CNN
F 2 "" H 6550 1550 50  0001 C CNN
F 3 "" H 6550 1550 50  0001 C CNN
	1    6550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1850 6550 1950
NoConn ~ 6650 2550
NoConn ~ 6750 2550
$Comp
L ADC_TEST:AGNDF #PWR0814
U 1 1 60201449
P 6350 2150
F 0 "#PWR0814" H 6350 1900 50  0001 C CNN
F 1 "AGNDF" V 6355 2022 50  0000 R CNN
F 2 "" H 6350 2150 50  0001 C CNN
F 3 "" H 6350 2150 50  0001 C CNN
	1    6350 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3050 6300 3050
Wire Wire Line
	5750 2350 6350 2350
$Comp
L Device:R R806
U 1 1 6025D386
P 6550 2750
F 0 "R806" H 6620 2796 50  0000 L CNN
F 1 "10" H 6620 2705 50  0000 L CNN
F 2 "" V 6480 2750 50  0001 C CNN
F 3 "~" H 6550 2750 50  0001 C CNN
	1    6550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3400 7000 2700
Wire Wire Line
	7000 2250 6950 2250
Wire Wire Line
	6300 3400 7000 3400
Wire Wire Line
	6550 2600 6550 2550
$Comp
L ADC_TEST:OPA177 U803
U 1 1 602ADB44
P 7950 6200
F 0 "U803" H 8150 6450 50  0000 L CNN
F 1 "OPA177" H 8050 6350 50  0000 L CNN
F 2 "" H 8000 6250 50  0001 C CNN
F 3 "" H 8000 6350 50  0001 C CNN
	1    7950 6200
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:-14VF #PWR0818
U 1 1 602DEF22
P 7850 6500
F 0 "#PWR0818" H 7850 6350 50  0001 C CNN
F 1 "-14VF" H 7865 6673 50  0000 C CNN
F 2 "" H 7850 6500 50  0001 C CNN
F 3 "" H 7850 6500 50  0001 C CNN
	1    7850 6500
	-1   0    0    1   
$EndComp
NoConn ~ 7950 5900
$Comp
L ADC_TEST:OPA177 U801
U 1 1 602EA97D
P 6150 6700
F 0 "U801" H 6350 6950 50  0000 L CNN
F 1 "OPA177" H 6250 6850 50  0000 L CNN
F 2 "" H 6200 6750 50  0001 C CNN
F 3 "" H 6200 6850 50  0001 C CNN
	1    6150 6700
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:-14VF #PWR0813
U 1 1 602F41AA
P 6050 7000
F 0 "#PWR0813" H 6050 6850 50  0001 C CNN
F 1 "-14VF" H 6065 7173 50  0000 C CNN
F 2 "" H 6050 7000 50  0001 C CNN
F 3 "" H 6050 7000 50  0001 C CNN
	1    6050 7000
	-1   0    0    1   
$EndComp
$Comp
L ADC_TEST:+18VF #PWR0812
U 1 1 602F4E13
P 6050 6400
F 0 "#PWR0812" H 6050 6250 50  0001 C CNN
F 1 "+18VF" H 6065 6573 50  0000 C CNN
F 2 "" H 6050 6400 50  0001 C CNN
F 3 "" H 6050 6400 50  0001 C CNN
	1    6050 6400
	1    0    0    -1  
$EndComp
NoConn ~ 6150 6400
$Comp
L ADC_TEST:+18VF #PWR0803
U 1 1 6031E5C5
P 1750 9950
F 0 "#PWR0803" H 1750 9800 50  0001 C CNN
F 1 "+18VF" H 1765 10123 50  0000 C CNN
F 2 "" H 1750 9950 50  0001 C CNN
F 3 "" H 1750 9950 50  0001 C CNN
	1    1750 9950
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:-14VF #PWR0804
U 1 1 6031F617
P 1750 10550
F 0 "#PWR0804" H 1750 10400 50  0001 C CNN
F 1 "-14VF" H 1765 10723 50  0000 C CNN
F 2 "" H 1750 10550 50  0001 C CNN
F 3 "" H 1750 10550 50  0001 C CNN
	1    1750 10550
	-1   0    0    1   
$EndComp
$Comp
L ADC_TEST:-14VF #PWR0805
U 1 1 603327FE
P 2250 10750
F 0 "#PWR0805" H 2250 10600 50  0001 C CNN
F 1 "-14VF" H 2265 10923 50  0000 C CNN
F 2 "" H 2250 10750 50  0001 C CNN
F 3 "" H 2250 10750 50  0001 C CNN
	1    2250 10750
	-1   0    0    1   
$EndComp
$Comp
L ADC_TEST:-14VF #PWR0802
U 1 1 60332EC6
P 1150 10750
F 0 "#PWR0802" H 1150 10600 50  0001 C CNN
F 1 "-14VF" H 1165 10923 50  0000 C CNN
F 2 "" H 1150 10750 50  0001 C CNN
F 3 "" H 1150 10750 50  0001 C CNN
	1    1150 10750
	-1   0    0    1   
$EndComp
$Comp
L ADC_TEST:+18VF #PWR0806
U 1 1 603339C7
P 2650 9650
F 0 "#PWR0806" H 2650 9500 50  0001 C CNN
F 1 "+18VF" H 2665 9823 50  0000 C CNN
F 2 "" H 2650 9650 50  0001 C CNN
F 3 "" H 2650 9650 50  0001 C CNN
	1    2650 9650
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+18VF #PWR0801
U 1 1 603341AE
P 900 9700
F 0 "#PWR0801" H 900 9550 50  0001 C CNN
F 1 "+18VF" H 915 9873 50  0000 C CNN
F 2 "" H 900 9700 50  0001 C CNN
F 3 "" H 900 9700 50  0001 C CNN
	1    900  9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6600 5400 6300
$Comp
L Device:R R804
U 1 1 60360271
P 4150 6300
F 0 "R804" V 3943 6300 50  0000 C CNN
F 1 "12k" V 4034 6300 50  0000 C CNN
F 2 "" V 4080 6300 50  0001 C CNN
F 3 "~" H 4150 6300 50  0001 C CNN
	1    4150 6300
	0    1    1    0   
$EndComp
$Comp
L Device:D D801
U 1 1 603612D4
P 3850 6300
F 0 "D801" H 3850 6517 50  0000 C CNN
F 1 "BAV103" H 3850 6426 50  0000 C CNN
F 2 "" H 3850 6300 50  0001 C CNN
F 3 "~" H 3850 6300 50  0001 C CNN
	1    3850 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R803
U 1 1 60362EE0
P 3550 6700
F 0 "R803" H 3620 6746 50  0000 L CNN
F 1 "120k" H 3620 6655 50  0000 L CNN
F 2 "" V 3480 6700 50  0001 C CNN
F 3 "~" H 3550 6700 50  0001 C CNN
	1    3550 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6550 3550 6300
Wire Wire Line
	3550 6300 3700 6300
$Comp
L ADC_TEST:AGNDF #PWR0808
U 1 1 6036CC9F
P 3550 7000
F 0 "#PWR0808" H 3550 6750 50  0001 C CNN
F 1 "AGNDF" H 3555 6827 50  0000 C CNN
F 2 "" H 3550 7000 50  0001 C CNN
F 3 "" H 3550 7000 50  0001 C CNN
	1    3550 7000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847W Q801
U 1 1 60387261
P 2850 6550
F 0 "Q801" H 3040 6596 50  0000 L CNN
F 1 "BC847W" H 3040 6505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 3050 6475 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 2850 6550 50  0001 L CNN
	1    2850 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6600 4750 6100
Wire Wire Line
	4750 6100 7600 6100
Connection ~ 4750 6600
Connection ~ 7600 6100
Wire Wire Line
	2950 6350 2950 6300
Wire Wire Line
	2950 6300 3550 6300
Connection ~ 3550 6300
$Comp
L ADC_TEST:-14VF #PWR0807
U 1 1 60459E84
P 2950 7000
F 0 "#PWR0807" H 2950 6850 50  0001 C CNN
F 1 "-14VF" H 2965 7173 50  0000 C CNN
F 2 "" H 2950 7000 50  0001 C CNN
F 3 "" H 2950 7000 50  0001 C CNN
	1    2950 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 6750 2950 6950
$Comp
L Device:R R802
U 1 1 60463885
P 2500 6750
F 0 "R802" H 2570 6796 50  0000 L CNN
F 1 "620k" H 2570 6705 50  0000 L CNN
F 2 "" V 2430 6750 50  0001 C CNN
F 3 "~" H 2500 6750 50  0001 C CNN
	1    2500 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6900 2500 6950
Wire Wire Line
	2500 6950 2950 6950
Connection ~ 2950 6950
Wire Wire Line
	2950 6950 2950 7000
Wire Wire Line
	2500 6600 2500 6550
Wire Wire Line
	2500 6550 2650 6550
$Comp
L Device:R R801
U 1 1 60480498
P 2250 6550
F 0 "R801" V 2043 6550 50  0000 C CNN
F 1 "120k" V 2134 6550 50  0000 C CNN
F 2 "" V 2180 6550 50  0001 C CNN
F 3 "~" H 2250 6550 50  0001 C CNN
	1    2250 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 6300 5400 6300
Wire Wire Line
	3550 7000 3550 6850
Wire Wire Line
	2500 6550 2400 6550
Connection ~ 2500 6550
$Comp
L ADC_TEST:-14VF #PWR0816
U 1 1 605351CB
P 6550 2900
F 0 "#PWR0816" H 6550 2750 50  0001 C CNN
F 1 "-14VF" H 6565 3073 50  0000 C CNN
F 2 "" H 6550 2900 50  0001 C CNN
F 3 "" H 6550 2900 50  0001 C CNN
	1    6550 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R807
U 1 1 605467D1
P 7300 2250
F 0 "R807" V 7093 2250 50  0000 C CNN
F 1 "12k" V 7184 2250 50  0000 C CNN
F 2 "" V 7230 2250 50  0001 C CNN
F 3 "~" H 7300 2250 50  0001 C CNN
	1    7300 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 2250 7150 2250
Connection ~ 7000 2250
$Comp
L ADC_TEST:OPA192 U804
U 1 1 60561E40
P 8200 2150
F 0 "U804" H 8400 2400 50  0000 L CNN
F 1 "OPA192" H 8300 2300 50  0000 L CNN
F 2 "" H 8250 2200 50  0001 C CNN
F 3 "" H 8250 2300 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:AGNDF #PWR0819
U 1 1 60572BE4
P 7900 2050
F 0 "#PWR0819" H 7900 1800 50  0001 C CNN
F 1 "AGNDF" V 7905 1922 50  0000 R CNN
F 2 "" H 7900 2050 50  0001 C CNN
F 3 "" H 7900 2050 50  0001 C CNN
	1    7900 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C802
U 1 1 605730A7
P 8500 2600
F 0 "C802" V 8248 2600 50  0000 C CNN
F 1 "DNP" V 8339 2600 50  0000 C CNN
F 2 "" H 8538 2450 50  0001 C CNN
F 3 "~" H 8500 2600 50  0001 C CNN
	1    8500 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2450 8200 2600
Wire Wire Line
	8200 2600 8350 2600
Wire Wire Line
	8650 2600 8750 2600
Wire Wire Line
	8750 2600 8750 1750
Wire Wire Line
	8750 1750 8200 1750
Wire Wire Line
	8200 1750 8200 1850
$Comp
L Device:D D802
U 1 1 6059415F
P 7900 3500
F 0 "D802" H 7900 3283 50  0000 C CNN
F 1 "BAV103" H 7900 3374 50  0000 C CNN
F 2 "" H 7900 3500 50  0001 C CNN
F 3 "~" H 7900 3500 50  0001 C CNN
	1    7900 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:D D803
U 1 1 605951EA
P 7900 3850
F 0 "D803" H 7900 4067 50  0000 C CNN
F 1 "BAV103" H 7900 3976 50  0000 C CNN
F 2 "" H 7900 3850 50  0001 C CNN
F 3 "~" H 7900 3850 50  0001 C CNN
	1    7900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3850 7700 3850
Wire Wire Line
	7700 3850 7700 3500
$Comp
L Device:R R808
U 1 1 605A03FD
P 7900 4200
F 0 "R808" V 7693 4200 50  0000 C CNN
F 1 "63k" V 7784 4200 50  0000 C CNN
F 2 "" V 7830 4200 50  0001 C CNN
F 3 "~" H 7900 4200 50  0001 C CNN
	1    7900 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4200 7700 4200
Wire Wire Line
	7700 4200 7700 3850
Connection ~ 7700 3850
Wire Wire Line
	7700 3500 7750 3500
Wire Wire Line
	8100 3500 8100 3850
Wire Wire Line
	8100 4200 8050 4200
Wire Wire Line
	8050 3500 8100 3500
Connection ~ 7700 3500
Wire Wire Line
	8050 3850 8100 3850
Connection ~ 8100 3850
Wire Wire Line
	8100 3850 8100 4200
Wire Wire Line
	8100 3500 8900 3500
Wire Wire Line
	8900 2150 8500 2150
Connection ~ 8100 3500
$Comp
L Device:C C801
U 1 1 605CE304
P 7900 4600
F 0 "C801" V 7648 4600 50  0000 C CNN
F 1 "33p" V 7739 4600 50  0000 C CNN
F 2 "" H 7938 4450 50  0001 C CNN
F 3 "~" H 7900 4600 50  0001 C CNN
	1    7900 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4600 7700 4600
Wire Wire Line
	7700 4600 7700 4200
Connection ~ 7700 4200
Wire Wire Line
	8050 4600 8100 4600
Wire Wire Line
	8100 4600 8100 4200
Connection ~ 8100 4200
$Comp
L Device:R R810
U 1 1 605EDF01
P 8100 2800
F 0 "R810" H 8170 2846 50  0000 L CNN
F 1 "10" H 8170 2755 50  0000 L CNN
F 2 "" V 8030 2800 50  0001 C CNN
F 3 "~" H 8100 2800 50  0001 C CNN
	1    8100 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R809
U 1 1 605F2B7D
P 8100 1600
F 0 "R809" H 8170 1646 50  0000 L CNN
F 1 "10" H 8170 1555 50  0000 L CNN
F 2 "" V 8030 1600 50  0001 C CNN
F 3 "~" H 8100 1600 50  0001 C CNN
	1    8100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1850 8100 1750
$Comp
L ADC_TEST:+18VF #PWR0820
U 1 1 60602B78
P 8100 1450
F 0 "#PWR0820" H 8100 1300 50  0001 C CNN
F 1 "+18VF" H 8115 1623 50  0000 C CNN
F 2 "" H 8100 1450 50  0001 C CNN
F 3 "" H 8100 1450 50  0001 C CNN
	1    8100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2250 7700 2250
Wire Wire Line
	7700 2250 7700 3500
Connection ~ 7700 2250
Wire Wire Line
	7700 2250 7900 2250
Wire Wire Line
	8100 2650 8100 2450
$Comp
L ADC_TEST:-14VF #PWR0821
U 1 1 60637C0F
P 8100 2950
F 0 "#PWR0821" H 8100 2800 50  0001 C CNN
F 1 "-14VF" H 8115 3123 50  0000 C CNN
F 2 "" H 8100 2950 50  0001 C CNN
F 3 "" H 8100 2950 50  0001 C CNN
	1    8100 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 2150 8900 3500
$Comp
L Device:R R812
U 1 1 6064EC75
P 9450 2150
F 0 "R812" V 9243 2150 50  0000 C CNN
F 1 "3k9" V 9334 2150 50  0000 C CNN
F 2 "" V 9380 2150 50  0001 C CNN
F 3 "~" H 9450 2150 50  0001 C CNN
	1    9450 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 2150 8900 2150
Connection ~ 8900 2150
$Comp
L Comparator:LM311 U805
U 1 1 6065D0D7
P 10050 2250
F 0 "U805" H 10300 2500 50  0000 L CNN
F 1 "LM311" H 10250 2400 50  0000 L CNN
F 2 "" H 10050 2250 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm311.pdf" H 10050 2250 50  0001 C CNN
	1    10050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2150 9600 2150
$Comp
L Device:R R811
U 1 1 606989E7
P 9350 2550
F 0 "R811" H 9420 2596 50  0000 L CNN
F 1 "620" H 9420 2505 50  0000 L CNN
F 2 "" V 9280 2550 50  0001 C CNN
F 3 "~" H 9350 2550 50  0001 C CNN
	1    9350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2350 9350 2350
Wire Wire Line
	9350 2350 9350 2400
$Comp
L ADC_TEST:AGNDF #PWR0822
U 1 1 606A487B
P 9350 2750
F 0 "#PWR0822" H 9350 2500 50  0001 C CNN
F 1 "AGNDF" H 9355 2577 50  0000 C CNN
F 2 "" H 9350 2750 50  0001 C CNN
F 3 "" H 9350 2750 50  0001 C CNN
	1    9350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2750 9350 2700
$Comp
L ADC_TEST:DGNDF #PWR0826
U 1 1 606B0C2A
P 10250 2600
F 0 "#PWR0826" H 10250 2350 50  0001 C CNN
F 1 "DGNDF" H 10255 2427 50  0000 C CNN
F 2 "" H 10250 2600 50  0001 C CNN
F 3 "" H 10250 2600 50  0001 C CNN
	1    10250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2600 10250 2550
Wire Wire Line
	10250 2550 10050 2550
$Comp
L Device:R R813
U 1 1 606BB3E1
P 9950 3400
F 0 "R813" H 10020 3446 50  0000 L CNN
F 1 "10" H 10020 3355 50  0000 L CNN
F 2 "" V 9880 3400 50  0001 C CNN
F 3 "~" H 9950 3400 50  0001 C CNN
	1    9950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3250 9950 3150
$Comp
L Device:C C803
U 1 1 606C60D6
P 10250 3150
F 0 "C803" V 9998 3150 50  0000 C CNN
F 1 "100n" V 10089 3150 50  0000 C CNN
F 2 "" H 10288 3000 50  0001 C CNN
F 3 "~" H 10250 3150 50  0001 C CNN
	1    10250 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 3150 9950 3150
Connection ~ 9950 3150
Wire Wire Line
	9950 3150 9950 2550
$Comp
L ADC_TEST:+3.3VF #PWR0827
U 1 1 606DD4C4
P 10450 3150
F 0 "#PWR0827" H 10450 3000 50  0001 C CNN
F 1 "+3.3VF" V 10465 3278 50  0000 L CNN
F 2 "" H 10450 3150 50  0001 C CNN
F 3 "" H 10450 3150 50  0001 C CNN
	1    10450 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	10450 3150 10400 3150
$Comp
L ADC_TEST:-14VF #PWR0824
U 1 1 606E9D72
P 9950 3550
F 0 "#PWR0824" H 9950 3400 50  0001 C CNN
F 1 "-14VF" H 9965 3723 50  0000 C CNN
F 2 "" H 9950 3550 50  0001 C CNN
F 3 "" H 9950 3550 50  0001 C CNN
	1    9950 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R815
U 1 1 606ECDEA
P 10050 1600
F 0 "R815" H 10120 1646 50  0000 L CNN
F 1 "39k" H 10120 1555 50  0000 L CNN
F 2 "" V 9980 1600 50  0001 C CNN
F 3 "~" H 10050 1600 50  0001 C CNN
	1    10050 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R814
U 1 1 606EE66A
P 10050 1200
F 0 "R814" H 10120 1246 50  0000 L CNN
F 1 "62" H 10120 1155 50  0000 L CNN
F 2 "" V 9980 1200 50  0001 C CNN
F 3 "~" H 10050 1200 50  0001 C CNN
	1    10050 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R816
U 1 1 606EFF49
P 10600 1600
F 0 "R816" H 10670 1646 50  0000 L CNN
F 1 "3k9" H 10670 1555 50  0000 L CNN
F 2 "" V 10530 1600 50  0001 C CNN
F 3 "~" H 10600 1600 50  0001 C CNN
	1    10600 1600
	1    0    0    -1  
$EndComp
NoConn ~ 10150 1950
Wire Wire Line
	10050 1950 10050 1750
Wire Wire Line
	10050 1450 10050 1400
Wire Wire Line
	10600 1400 10600 1450
Connection ~ 10050 1400
Wire Wire Line
	10050 1400 10050 1350
Wire Wire Line
	10050 1400 10600 1400
Wire Wire Line
	10600 2250 10350 2250
Wire Wire Line
	10600 1750 10600 2250
$Comp
L ADC_TEST:+3.3VF #PWR0825
U 1 1 6073FFA9
P 10050 1050
F 0 "#PWR0825" H 10050 900 50  0001 C CNN
F 1 "+3.3VF" H 10065 1223 50  0000 C CNN
F 2 "" H 10050 1050 50  0001 C CNN
F 3 "" H 10050 1050 50  0001 C CNN
	1    10050 1050
	1    0    0    -1  
$EndComp
$Comp
L ADC_TEST:+3.3VF #PWR0823
U 1 1 607403BE
P 9750 1850
F 0 "#PWR0823" H 9750 1700 50  0001 C CNN
F 1 "+3.3VF" H 9765 2023 50  0000 C CNN
F 2 "" H 9750 1850 50  0001 C CNN
F 3 "" H 9750 1850 50  0001 C CNN
	1    9750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1850 9750 1900
Wire Wire Line
	9750 1900 9950 1900
Wire Wire Line
	9950 1900 9950 1950
Text HLabel 11200 2250 2    50   Output ~ 0
AD_COMP
Wire Wire Line
	11200 2250 10700 2250
Connection ~ 10600 2250
$Comp
L Connector:TestPoint TP801
U 1 1 607BA93B
P 7050 2700
F 0 "TP801" V 7004 2888 50  0000 L CNN
F 1 "TestPoint" V 7095 2888 50  0000 L CNN
F 2 "" H 7250 2700 50  0001 C CNN
F 3 "~" H 7250 2700 50  0001 C CNN
	1    7050 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 2700 7000 2700
Connection ~ 7000 2700
Wire Wire Line
	7000 2700 7000 2250
$Comp
L Connector:TestPoint TP802
U 1 1 607D44DE
P 8900 2100
F 0 "TP802" H 8958 2218 50  0000 L CNN
F 1 "TestPoint" H 8958 2127 50  0000 L CNN
F 2 "" H 9100 2100 50  0001 C CNN
F 3 "~" H 9100 2100 50  0001 C CNN
	1    8900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2100 8900 2150
$Comp
L Connector:TestPoint TP803
U 1 1 607EF355
P 10700 2200
F 0 "TP803" H 10758 2318 50  0000 L CNN
F 1 "TestPoint" H 10758 2227 50  0000 L CNN
F 2 "" H 10900 2200 50  0001 C CNN
F 3 "~" H 10900 2200 50  0001 C CNN
	1    10700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 2200 10700 2250
Connection ~ 10700 2250
Wire Wire Line
	10700 2250 10600 2250
Text HLabel 2050 6550 0    50   Input ~ 0
FPGA_AD_RFS
Wire Wire Line
	2050 6550 2100 6550
Text HLabel 6850 7100 2    50   Output ~ 0
VR_-7V
Wire Wire Line
	6850 7100 6750 7100
Connection ~ 6750 7100
Wire Wire Line
	6750 7100 6750 7800
$EndSCHEMATC
