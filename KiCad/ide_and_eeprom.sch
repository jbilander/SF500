EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SF500:ide_ata_44_pin J4
U 1 1 60786FB8
P 3700 3100
F 0 "J4" H 3700 4365 50  0000 C CNN
F 1 "ide_ata_44_pin" H 3700 4274 50  0000 C CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_2x22_P2.00mm_Horizontal" H 3700 3150 50  0001 C CNN
F 3 "" H 3700 3150 50  0001 C CNN
	1    3700 3100
	1    0    0    -1  
$EndComp
Text GLabel 3300 2100 0    50   Input ~ 0
RESET
Text GLabel 4100 2100 2    50   Input ~ 0
GND
Text GLabel 4100 2900 2    50   Input ~ 0
D7
Text GLabel 4100 2800 2    50   Input ~ 0
D6
Text GLabel 4100 2700 2    50   Input ~ 0
D5
Text GLabel 4100 2600 2    50   Input ~ 0
D4
Text GLabel 4100 2500 2    50   Input ~ 0
D3
Text GLabel 4100 2400 2    50   Input ~ 0
D2
Text GLabel 4100 2300 2    50   Input ~ 0
D1
Text GLabel 4100 2200 2    50   Input ~ 0
D0
Text GLabel 3300 2900 0    50   Input ~ 0
D8
Text GLabel 3300 2800 0    50   Input ~ 0
D9
Text GLabel 3300 2700 0    50   Input ~ 0
D10
Text GLabel 3300 2600 0    50   Input ~ 0
D11
Text GLabel 3300 2500 0    50   Input ~ 0
D12
Text GLabel 3300 2400 0    50   Input ~ 0
D13
Text GLabel 3300 2300 0    50   Input ~ 0
D14
Text GLabel 3300 2200 0    50   Input ~ 0
D15
Text GLabel 3300 3000 0    50   Input ~ 0
GND
Text GLabel 4100 3200 2    50   Input ~ 0
GND
Text GLabel 3100 4100 0    50   Input ~ 0
VCC
Text GLabel 3100 4300 3    50   Input ~ 0
GND
Text GLabel 4100 4000 2    50   Input ~ 0
GND
Wire Wire Line
	4100 3100 4100 3200
Connection ~ 4100 3200
Wire Wire Line
	4100 3200 4100 3300
Text GLabel 3300 3200 0    50   Input ~ 0
IDE_IOW
Text GLabel 3300 3300 0    50   Input ~ 0
IDE_IOR
Text GLabel 2750 3400 0    50   Output ~ 0
IDE_IORDY
Text GLabel 4100 3500 2    50   Input ~ 0
GND
Text GLabel 2750 3600 0    50   Output ~ 0
IDE_IRQ
NoConn ~ 4100 3600
Text GLabel 3300 3900 0    50   Input ~ 0
IDE_CS0
Text GLabel 4100 3900 2    50   Input ~ 0
IDE_CS1
NoConn ~ 3300 3100
NoConn ~ 3300 3500
NoConn ~ 4100 3400
NoConn ~ 4100 3700
Text GLabel 4100 4200 2    50   Input ~ 0
GND
$Comp
L Device:C_Small C?
U 1 1 6086157C
P 3100 4200
AR Path="/6086157C" Ref="C?"  Part="1" 
AR Path="/6077D7EA/6086157C" Ref="C14"  Part="1" 
F 0 "C14" H 2850 4200 50  0000 L CNN
F 1 "10uF" H 2850 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3100 4200 50  0001 C CNN
F 3 "~" H 3100 4200 50  0001 C CNN
	1    3100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4100 3200 4100
Wire Wire Line
	3200 4100 3200 4550
Wire Wire Line
	3200 4550 4400 4550
Wire Wire Line
	4400 4550 4400 4100
Wire Wire Line
	4400 4100 4100 4100
Connection ~ 3200 4100
Wire Wire Line
	3200 4100 3300 4100
Text GLabel 3300 4200 3    50   Input ~ 0
GND
NoConn ~ 3300 4000
$Comp
L Device:R_Small R?
U 1 1 603E8F86
P 2650 3800
AR Path="/603E8F86" Ref="R?"  Part="1" 
AR Path="/6077D7EA/603E8F86" Ref="R7"  Part="1" 
F 0 "R7" V 2750 3800 50  0000 C CNN
F 1 "1k" V 2650 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2650 3800 50  0001 C CNN
F 3 "~" H 2650 3800 50  0001 C CNN
	1    2650 3800
	0    1    1    0   
$EndComp
Text GLabel 2550 3200 0    50   Input ~ 0
VCC
$Comp
L Device:R_Small R?
U 1 1 603E91C9
P 2650 3200
AR Path="/603E91C9" Ref="R?"  Part="1" 
AR Path="/6077D7EA/603E91C9" Ref="R6"  Part="1" 
F 0 "R6" V 2550 3200 50  0000 C CNN
F 1 "4.7k" V 2650 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2650 3200 50  0001 C CNN
F 3 "~" H 2650 3200 50  0001 C CNN
	1    2650 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3400 2850 3400
Wire Wire Line
	2750 3200 2850 3200
Wire Wire Line
	2850 3200 2850 3400
Connection ~ 2850 3400
Wire Wire Line
	2850 3400 2750 3400
Wire Wire Line
	3300 3600 2850 3600
Text GLabel 2550 3800 0    50   Input ~ 0
GND
Wire Wire Line
	2750 3800 2850 3800
Wire Wire Line
	2850 3800 2850 3600
Connection ~ 2850 3600
Wire Wire Line
	2850 3600 2750 3600
$Comp
L SF500:29F040-PLCC-32 U10
U 1 1 6041B2F4
P 6150 3000
F 0 "U10" H 6150 3000 50  0000 C CNN
F 1 "29F040-PLCC-32" H 6600 1900 50  0000 C CNN
F 2 "Package_LCC:PLCC-32_11.4x14.0mm_P1.27mm" H 6150 3000 50  0001 C CNN
F 3 "https://datasheet.octopart.com/AM29F040B-70JC-AMD-datasheet-3650.pdf" H 6150 3100 50  0001 C CNN
	1    6150 3000
	1    0    0    -1  
$EndComp
Text GLabel 6600 2800 2    50   Input ~ 0
D7
Text GLabel 6600 2700 2    50   Input ~ 0
D6
Text GLabel 6600 2600 2    50   Input ~ 0
D5
Text GLabel 6600 2500 2    50   Input ~ 0
D4
Text GLabel 6600 2400 2    50   Input ~ 0
D3
Text GLabel 6600 2300 2    50   Input ~ 0
D2
Text GLabel 6600 2200 2    50   Input ~ 0
D1
Text GLabel 6600 2100 2    50   Input ~ 0
D0
Text GLabel 6600 3000 2    50   Input ~ 0
GND
Text GLabel 6600 3100 2    50   Input ~ 0
ROM_OE
Text GLabel 5700 2100 0    50   Input ~ 0
A1
Text GLabel 5700 2200 0    50   Input ~ 0
A2
Text GLabel 5700 2300 0    50   Input ~ 0
A3
Text GLabel 5700 2400 0    50   Input ~ 0
A4
Text GLabel 5700 2500 0    50   Input ~ 0
A5
Text GLabel 5700 2600 0    50   Input ~ 0
A6
Text GLabel 5700 2700 0    50   Input ~ 0
A7
Text GLabel 5700 2800 0    50   Input ~ 0
A8
Text GLabel 5700 2900 0    50   Input ~ 0
A9
Text GLabel 5700 3000 0    50   Input ~ 0
A10
Text GLabel 5700 3100 0    50   Input ~ 0
A11
Text GLabel 5700 3200 0    50   Input ~ 0
A12
Text GLabel 5700 3300 0    50   Input ~ 0
A13
Text GLabel 5700 3400 0    50   Input ~ 0
A14
Text GLabel 5700 3500 0    50   Input ~ 0
A15
Text GLabel 6150 1900 1    50   Input ~ 0
VCC
$Comp
L Device:C_Small C?
U 1 1 60420D17
P 6250 1900
AR Path="/60420D17" Ref="C?"  Part="1" 
AR Path="/6077D7EA/60420D17" Ref="C15"  Part="1" 
F 0 "C15" V 6050 1950 50  0000 L CNN
F 1 "0.1uF" V 6150 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6250 1900 50  0001 C CNN
F 3 "~" H 6250 1900 50  0001 C CNN
	1    6250 1900
	0    1    1    0   
$EndComp
Text GLabel 6150 4100 3    50   Input ~ 0
GND
Text GLabel 6600 3200 2    50   Input ~ 0
VCC
Text GLabel 5700 3900 0    50   Input ~ 0
GND
$Comp
L Jumper:Jumper_2_Open JP?
U 1 1 604310A7
P 5300 3800
AR Path="/604310A7" Ref="JP?"  Part="1" 
AR Path="/6077D7EA/604310A7" Ref="JP3"  Part="1" 
F 0 "JP3" V 5300 3750 50  0000 C CNN
F 1 "Jumper_2_Open" H 5300 3944 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5300 3800 50  0001 C CNN
F 3 "~" H 5300 3800 50  0001 C CNN
	1    5300 3800
	0    1    1    0   
$EndComp
Text GLabel 5300 3400 1    50   Input ~ 0
VCC
$Comp
L Device:R_Small R?
U 1 1 60432112
P 5300 3500
AR Path="/60432112" Ref="R?"  Part="1" 
AR Path="/6077D7EA/60432112" Ref="R5"  Part="1" 
F 0 "R5" H 5400 3500 50  0000 C CNN
F 1 "10k" V 5300 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5300 3500 50  0001 C CNN
F 3 "~" H 5300 3500 50  0001 C CNN
	1    5300 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 3600 5300 3600
Connection ~ 5300 3600
Text GLabel 5300 4000 3    50   Input ~ 0
GND
Text GLabel 6350 1900 2    50   Input ~ 0
GND
Wire Wire Line
	5700 3700 5700 3800
Connection ~ 5700 3800
Wire Wire Line
	5700 3800 5700 3900
Text GLabel 4100 3800 2    50   Input ~ 0
A11
Text GLabel 3300 3700 0    50   Input ~ 0
A10
Text GLabel 3300 3800 0    50   Input ~ 0
A9
$Comp
L Device:R_Small R?
U 1 1 605B56E1
P 7750 2850
AR Path="/605B56E1" Ref="R?"  Part="1" 
AR Path="/6077D7EA/605B56E1" Ref="R13"  Part="1" 
F 0 "R13" H 7600 2850 50  0000 C CNN
F 1 "10k" V 7750 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7750 2850 50  0001 C CNN
F 3 "~" H 7750 2850 50  0001 C CNN
	1    7750 2850
	-1   0    0    1   
$EndComp
Text GLabel 7750 2750 1    50   Input ~ 0
VCC
Text GLabel 7850 3600 3    50   Input ~ 0
GND
$Comp
L Switch:SW_SPDT SW1
U 1 1 605B8DB5
P 7750 3400
F 0 "SW1" V 7704 3548 50  0000 L CNN
F 1 "SW_SPDT" V 7795 3548 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7750 3400 50  0001 C CNN
F 3 "~" H 7750 3400 50  0001 C CNN
	1    7750 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 3200 7750 3050
$Comp
L Device:R_Small R?
U 1 1 605BE301
P 8050 3050
AR Path="/605BE301" Ref="R?"  Part="1" 
AR Path="/6077D7EA/605BE301" Ref="R14"  Part="1" 
F 0 "R14" V 7950 3050 50  0000 C CNN
F 1 "10k" V 8050 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8050 3050 50  0001 C CNN
F 3 "~" H 8050 3050 50  0001 C CNN
	1    8050 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 3050 7750 3050
Connection ~ 7750 3050
Wire Wire Line
	7750 3050 7750 2950
NoConn ~ 7650 3600
$Comp
L Device:C_Small C?
U 1 1 605BFF56
P 8400 3150
AR Path="/605BFF56" Ref="C?"  Part="1" 
AR Path="/6077D7EA/605BFF56" Ref="C16"  Part="1" 
F 0 "C16" H 8150 3150 50  0000 L CNN
F 1 "0.1uF" H 8100 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8400 3150 50  0001 C CNN
F 3 "~" H 8400 3150 50  0001 C CNN
	1    8400 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 3050 8400 3050
Text GLabel 8400 3350 3    50   Input ~ 0
GND
Text GLabel 9750 3050 2    50   Output ~ 0
SW1
Wire Wire Line
	8850 3050 8400 3050
Connection ~ 8400 3050
Wire Wire Line
	8400 3250 8400 3350
Wire Wire Line
	8850 3250 8850 3350
Wire Wire Line
	8850 3350 8400 3350
Wire Wire Line
	8850 3450 8850 3350
Connection ~ 8850 3350
Text GLabel 9900 3250 2    50   Input ~ 0
VCC
NoConn ~ 9750 3450
$Comp
L Device:C_Small C?
U 1 1 605D16ED
P 9900 3350
AR Path="/605D16ED" Ref="C?"  Part="1" 
AR Path="/6077D7EA/605D16ED" Ref="C17"  Part="1" 
F 0 "C17" H 10000 3350 50  0000 L CNN
F 1 "0.1uF" H 10000 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9900 3350 50  0001 C CNN
F 3 "~" H 9900 3350 50  0001 C CNN
	1    9900 3350
	1    0    0    -1  
$EndComp
Text GLabel 9900 3450 3    50   Input ~ 0
GND
Wire Wire Line
	9900 3250 9750 3250
$Comp
L SF500:74HCT2G14 U11
U 1 1 605D92EF
P 9300 3250
F 0 "U11" H 9300 3765 50  0000 C CNN
F 1 "74HCT2G14" H 9300 3674 50  0000 C CNN
F 2 "Package_SO:TSOP-6_1.65x3.05mm_P0.95mm" H 9800 4200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT2G14.pdf" H 9800 4200 50  0001 C CNN
	1    9300 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
