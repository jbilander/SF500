EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 6250 900  0    50   Input ~ 0
VCC
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F5FABCD
P 6250 950
F 0 "#FLG0101" H 6250 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 6250 1123 50  0000 C CNN
F 2 "" H 6250 950 50  0001 C CNN
F 3 "~" H 6250 950 50  0001 C CNN
	1    6250 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 950  6250 850 
$Comp
L power:GND #PWR0102
U 1 1 5F5FD417
P 6600 950
F 0 "#PWR0102" H 6600 700 50  0001 C CNN
F 1 "GND" H 6605 777 50  0000 C CNN
F 2 "" H 6600 950 50  0001 C CNN
F 3 "" H 6600 950 50  0001 C CNN
	1    6600 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 850  6600 950 
Text GLabel 6600 900  0    50   Input ~ 0
GND
$Comp
L Oscillator:NB3N502 U4
U 1 1 5F7DAC4C
P 6300 3350
F 0 "U4" V 6300 3350 50  0000 C CNN
F 1 "NB3N502" V 6300 2800 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6350 2800 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NB3N502-D.PDF" H 6350 2500 50  0001 C CNN
	1    6300 3350
	0    -1   -1   0   
$EndComp
Text GLabel 6150 3750 3    50   Input ~ 0
C7M_RAW
Text GLabel 6250 4200 3    50   Input ~ 0
VCC
$Comp
L Device:C_Small C4
U 1 1 5F7DBBBE
P 6350 4000
F 0 "C4" H 6150 4000 50  0000 L CNN
F 1 "100nF" H 6442 3955 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6350 4000 50  0001 C CNN
F 3 "~" H 6350 4000 50  0001 C CNN
	1    6350 4000
	0    -1   -1   0   
$EndComp
Text GLabel 6450 4200 3    50   Input ~ 0
GND
Wire Wire Line
	6250 4200 6250 4000
Connection ~ 6250 4000
Wire Wire Line
	6250 4000 6250 3750
Wire Wire Line
	6450 4200 6450 4000
Wire Wire Line
	6450 3900 6350 3900
Wire Wire Line
	6350 3900 6350 3750
Connection ~ 6450 4000
Wire Wire Line
	6450 4000 6450 3900
Text GLabel 6600 3750 3    50   Output ~ 0
C7M
Wire Wire Line
	6450 3750 6600 3750
Text GLabel 6450 2950 1    50   Output ~ 0
C14M
NoConn ~ 6150 2950
Text GLabel 6250 2950 1    50   Input ~ 0
GND
$Comp
L power:+5V #PWR0101
U 1 1 5F5FB66E
P 6250 850
F 0 "#PWR0101" H 6250 700 50  0001 C CNN
F 1 "+5V" H 6265 1023 50  0000 C CNN
F 2 "" H 6250 850 50  0001 C CNN
F 3 "" H 6250 850 50  0001 C CNN
	1    6250 850 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F5FCC7B
P 6600 850
F 0 "#FLG0102" H 6600 925 50  0001 C CNN
F 1 "PWR_FLAG" H 6600 1023 50  0000 C CNN
F 2 "" H 6600 850 50  0001 C CNN
F 3 "~" H 6600 850 50  0001 C CNN
	1    6600 850 
	1    0    0    -1  
$EndComp
$Comp
L SF500:CY62167G-48TSOP-I U6
U 1 1 5F89642E
P 7900 4800
F 0 "U6" H 7900 6125 50  0000 C CNN
F 1 "CY62167G-48TSOP-I" H 7900 6034 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 7900 5350 50  0001 C CNN
F 3 "https://www.cypress.com/file/139521/download" H 7900 5350 50  0001 C CNN
	1    7900 4800
	1    0    0    -1  
$EndComp
$Comp
L SF500:CY62167G-48TSOP-I U5
U 1 1 5F8963F2
P 10150 4800
F 0 "U5" H 10150 6125 50  0000 C CNN
F 1 "CY62167G-48TSOP-I" H 10150 6034 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 10150 5350 50  0001 C CNN
F 3 "https://www.cypress.com/file/139521/download" H 10150 5350 50  0001 C CNN
	1    10150 4800
	1    0    0    -1  
$EndComp
$Comp
L SF500:CY62167G-48TSOP-I U8
U 1 1 5F8274AA
P 7900 1950
F 0 "U8" H 7900 3275 50  0000 C CNN
F 1 "CY62167G-48TSOP-I" H 7900 3184 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 7900 2500 50  0001 C CNN
F 3 "https://www.cypress.com/file/139521/download" H 7900 2500 50  0001 C CNN
	1    7900 1950
	1    0    0    -1  
$EndComp
$Comp
L SF500:CY62167G-48TSOP-I U7
U 1 1 5F80D380
P 10150 1950
F 0 "U7" H 10150 3275 50  0000 C CNN
F 1 "CY62167G-48TSOP-I" H 10150 3184 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 10150 2500 50  0001 C CNN
F 3 "https://www.cypress.com/file/139521/download" H 10150 2500 50  0001 C CNN
	1    10150 1950
	1    0    0    -1  
$EndComp
Text Notes 9300 3550 2    50   ~ 0
BANK0 (4 MB)
Wire Wire Line
	8800 4800 8400 4800
NoConn ~ 8400 5500
NoConn ~ 8400 5300
NoConn ~ 8400 5100
NoConn ~ 8400 4900
NoConn ~ 8400 4600
NoConn ~ 8400 4400
NoConn ~ 8400 4200
Text GLabel 8400 4100 2    50   Input ~ 0
D15
Text GLabel 8400 4300 2    50   Input ~ 0
D14
Text GLabel 8400 4500 2    50   Input ~ 0
D13
Text GLabel 8400 4700 2    50   Input ~ 0
D12
Text GLabel 8400 5000 2    50   Input ~ 0
D11
Text GLabel 8400 5200 2    50   Input ~ 0
D10
Text GLabel 8400 5400 2    50   Input ~ 0
D9
Text GLabel 8400 5600 2    50   Input ~ 0
D8
NoConn ~ 7400 5000
NoConn ~ 7400 5100
Text GLabel 8800 4600 1    50   Input ~ 0
GND
$Comp
L Device:C_Small C6
U 1 1 5F896451
P 8800 4700
F 0 "C6" H 8892 4700 50  0000 L CNN
F 1 "0.1uF" H 8900 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8800 4700 50  0001 C CNN
F 3 "~" H 8800 4700 50  0001 C CNN
	1    8800 4700
	1    0    0    -1  
$EndComp
Text GLabel 8800 4800 3    50   Input ~ 0
VCC
Text GLabel 8400 2850 2    50   Input ~ 0
OE_BANK1
Text GLabel 8400 5800 2    50   Input ~ 0
GND
Text GLabel 8400 6000 2    50   Input ~ 0
A1
Text GLabel 8400 3800 2    50   Input ~ 0
GND
Text GLabel 8400 3900 2    50   Input ~ 0
GND
Text GLabel 8400 4000 2    50   Input ~ 0
A21
Text GLabel 8400 3700 2    50   Input ~ 0
A17
Text GLabel 7400 4800 0    50   Input ~ 0
VCC
Text GLabel 7400 4500 0    50   Input ~ 0
A20
Text GLabel 7400 3700 0    50   Input ~ 0
A16
Text GLabel 7400 5400 0    50   Input ~ 0
A8
Text GLabel 7400 5500 0    50   Input ~ 0
A7
Text GLabel 7400 5600 0    50   Input ~ 0
A6
Text GLabel 7400 5700 0    50   Input ~ 0
A5
Text GLabel 7400 5800 0    50   Input ~ 0
A4
Text GLabel 7400 5900 0    50   Input ~ 0
A3
Text GLabel 7400 6000 0    50   Input ~ 0
A2
Text GLabel 7400 5300 0    50   Input ~ 0
A18
Text GLabel 7400 5200 0    50   Input ~ 0
A19
Text GLabel 7400 4400 0    50   Input ~ 0
A9
Text GLabel 7400 4300 0    50   Input ~ 0
A10
Text GLabel 7400 4200 0    50   Input ~ 0
A11
Text GLabel 7400 4100 0    50   Input ~ 0
A12
Text GLabel 7400 4000 0    50   Input ~ 0
A13
Text GLabel 7400 3900 0    50   Input ~ 0
A14
Text GLabel 7400 3800 0    50   Input ~ 0
A15
Wire Wire Line
	10650 4800 11000 4800
Text GLabel 11000 4600 1    50   Input ~ 0
GND
$Comp
L Device:C_Small C5
U 1 1 5F896426
P 11000 4700
F 0 "C5" H 11092 4700 50  0000 L CNN
F 1 "0.1uF" H 11100 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11000 4700 50  0001 C CNN
F 3 "~" H 11000 4700 50  0001 C CNN
	1    11000 4700
	1    0    0    -1  
$EndComp
Text GLabel 10650 2850 2    50   Input ~ 0
OE_BANK1
Text GLabel 9650 1850 0    50   Input ~ 0
WE_BANK1_ODD
Text GLabel 9650 4800 0    50   Input ~ 0
VCC
Text GLabel 10650 3800 2    50   Input ~ 0
GND
NoConn ~ 9650 5100
NoConn ~ 9650 5000
Text GLabel 11000 4800 3    50   Input ~ 0
VCC
Text GLabel 10650 5800 2    50   Input ~ 0
GND
Text GLabel 10650 3900 2    50   Input ~ 0
GND
Text GLabel 10650 4100 2    50   Input ~ 0
D7
Text GLabel 10650 4300 2    50   Input ~ 0
D6
Text GLabel 10650 4500 2    50   Input ~ 0
D5
Text GLabel 10650 4700 2    50   Input ~ 0
D4
Text GLabel 10650 5000 2    50   Input ~ 0
D3
Text GLabel 10650 5200 2    50   Input ~ 0
D2
Text GLabel 10650 5400 2    50   Input ~ 0
D1
Text GLabel 10650 5600 2    50   Input ~ 0
D0
NoConn ~ 10650 4200
NoConn ~ 10650 4400
NoConn ~ 10650 4600
NoConn ~ 10650 4900
NoConn ~ 10650 5100
NoConn ~ 10650 5300
NoConn ~ 10650 5500
Text GLabel 10650 4000 2    50   Input ~ 0
A21
Text GLabel 9650 4500 0    50   Input ~ 0
A20
Text GLabel 10650 3700 2    50   Input ~ 0
A17
Text GLabel 9650 3700 0    50   Input ~ 0
A16
Text GLabel 9650 5400 0    50   Input ~ 0
A8
Text GLabel 9650 5500 0    50   Input ~ 0
A7
Text GLabel 9650 5600 0    50   Input ~ 0
A6
Text GLabel 9650 5700 0    50   Input ~ 0
A5
Text GLabel 9650 5800 0    50   Input ~ 0
A4
Text GLabel 9650 5900 0    50   Input ~ 0
A3
Text GLabel 9650 6000 0    50   Input ~ 0
A2
Text GLabel 10650 6000 2    50   Input ~ 0
A1
Text GLabel 9650 5300 0    50   Input ~ 0
A18
Text GLabel 9650 5200 0    50   Input ~ 0
A19
Text GLabel 9650 4400 0    50   Input ~ 0
A9
Text GLabel 9650 4300 0    50   Input ~ 0
A10
Text GLabel 9650 4200 0    50   Input ~ 0
A11
Text GLabel 9650 4100 0    50   Input ~ 0
A12
Text GLabel 9650 4000 0    50   Input ~ 0
A13
Text GLabel 9650 3900 0    50   Input ~ 0
A14
Text GLabel 9650 3800 0    50   Input ~ 0
A15
Text Notes 9300 700  2    50   ~ 0
BANK1 (4 MB)
Wire Wire Line
	8800 1950 8400 1950
NoConn ~ 8400 2650
NoConn ~ 8400 2450
NoConn ~ 8400 2250
NoConn ~ 8400 2050
NoConn ~ 8400 1750
NoConn ~ 8400 1550
NoConn ~ 8400 1350
Text GLabel 8400 1250 2    50   Input ~ 0
D15
Text GLabel 8400 1450 2    50   Input ~ 0
D14
Text GLabel 8400 1650 2    50   Input ~ 0
D13
Text GLabel 8400 1850 2    50   Input ~ 0
D12
Text GLabel 8400 2150 2    50   Input ~ 0
D11
Text GLabel 8400 2350 2    50   Input ~ 0
D10
Text GLabel 8400 2550 2    50   Input ~ 0
D9
Text GLabel 8400 2750 2    50   Input ~ 0
D8
NoConn ~ 7400 2150
NoConn ~ 7400 2250
Text GLabel 8800 1750 1    50   Input ~ 0
GND
$Comp
L Device:C_Small C8
U 1 1 5F830C86
P 8800 1850
F 0 "C8" H 8892 1850 50  0000 L CNN
F 1 "0.1uF" H 8900 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8800 1850 50  0001 C CNN
F 3 "~" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
Text GLabel 8800 1950 3    50   Input ~ 0
VCC
Text GLabel 8400 5700 2    50   Input ~ 0
OE_BANK0
Text GLabel 8400 2950 2    50   Input ~ 0
GND
Text GLabel 8400 3150 2    50   Input ~ 0
A1
Text GLabel 8400 950  2    50   Input ~ 0
GND
Text GLabel 8400 1050 2    50   Input ~ 0
GND
Text GLabel 8400 1150 2    50   Input ~ 0
A21
Text GLabel 8400 850  2    50   Input ~ 0
A17
Text GLabel 7400 4700 0    50   Input ~ 0
WE_BANK0_EVEN
Text GLabel 7400 1650 0    50   Input ~ 0
A20
Text GLabel 7400 850  0    50   Input ~ 0
A16
Text GLabel 7400 2550 0    50   Input ~ 0
A8
Text GLabel 7400 2650 0    50   Input ~ 0
A7
Text GLabel 7400 2750 0    50   Input ~ 0
A6
Text GLabel 7400 2850 0    50   Input ~ 0
A5
Text GLabel 7400 2950 0    50   Input ~ 0
A4
Text GLabel 7400 3050 0    50   Input ~ 0
A3
Text GLabel 7400 3150 0    50   Input ~ 0
A2
Text GLabel 7400 2450 0    50   Input ~ 0
A18
Text GLabel 7400 2350 0    50   Input ~ 0
A19
Text GLabel 7400 1550 0    50   Input ~ 0
A9
Text GLabel 7400 1450 0    50   Input ~ 0
A10
Text GLabel 7400 1350 0    50   Input ~ 0
A11
Text GLabel 7400 1250 0    50   Input ~ 0
A12
Text GLabel 7400 1150 0    50   Input ~ 0
A13
Text GLabel 7400 1050 0    50   Input ~ 0
A14
Text GLabel 7400 950  0    50   Input ~ 0
A15
Wire Wire Line
	10650 1950 11000 1950
Text GLabel 11000 1750 1    50   Input ~ 0
GND
$Comp
L Device:C_Small C7
U 1 1 5F822C5B
P 11000 1850
F 0 "C7" H 11092 1850 50  0000 L CNN
F 1 "0.1uF" H 11100 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11000 1850 50  0001 C CNN
F 3 "~" H 11000 1850 50  0001 C CNN
	1    11000 1850
	1    0    0    -1  
$EndComp
Text GLabel 10650 5700 2    50   Input ~ 0
OE_BANK0
Text GLabel 9650 4700 0    50   Input ~ 0
WE_BANK0_ODD
Text GLabel 9650 1950 0    50   Input ~ 0
VCC
Text GLabel 10650 950  2    50   Input ~ 0
GND
NoConn ~ 9650 2250
NoConn ~ 9650 2150
Text GLabel 11000 1950 3    50   Input ~ 0
VCC
Text GLabel 10650 2950 2    50   Input ~ 0
GND
Text GLabel 10650 1050 2    50   Input ~ 0
GND
Text GLabel 10650 1250 2    50   Input ~ 0
D7
Text GLabel 10650 1450 2    50   Input ~ 0
D6
Text GLabel 10650 1650 2    50   Input ~ 0
D5
Text GLabel 10650 1850 2    50   Input ~ 0
D4
Text GLabel 10650 2150 2    50   Input ~ 0
D3
Text GLabel 10650 2350 2    50   Input ~ 0
D2
Text GLabel 10650 2550 2    50   Input ~ 0
D1
Text GLabel 10650 2750 2    50   Input ~ 0
D0
NoConn ~ 10650 1350
NoConn ~ 10650 1550
NoConn ~ 10650 1750
NoConn ~ 10650 2050
NoConn ~ 10650 2250
NoConn ~ 10650 2450
NoConn ~ 10650 2650
Text GLabel 10650 1150 2    50   Input ~ 0
A21
Text GLabel 9650 1650 0    50   Input ~ 0
A20
Text GLabel 10650 850  2    50   Input ~ 0
A17
Text GLabel 9650 850  0    50   Input ~ 0
A16
Text GLabel 9650 2550 0    50   Input ~ 0
A8
Text GLabel 9650 2650 0    50   Input ~ 0
A7
Text GLabel 9650 2750 0    50   Input ~ 0
A6
Text GLabel 9650 2850 0    50   Input ~ 0
A5
Text GLabel 9650 2950 0    50   Input ~ 0
A4
Text GLabel 9650 3050 0    50   Input ~ 0
A3
Text GLabel 9650 3150 0    50   Input ~ 0
A2
Text GLabel 10650 3150 2    50   Input ~ 0
A1
Text GLabel 9650 2450 0    50   Input ~ 0
A18
Text GLabel 9650 2350 0    50   Input ~ 0
A19
Text GLabel 9650 1550 0    50   Input ~ 0
A9
Text GLabel 9650 1450 0    50   Input ~ 0
A10
Text GLabel 9650 1350 0    50   Input ~ 0
A11
Text GLabel 9650 1250 0    50   Input ~ 0
A12
Text GLabel 9650 1150 0    50   Input ~ 0
A13
Text GLabel 9650 1050 0    50   Input ~ 0
A14
Text GLabel 9650 950  0    50   Input ~ 0
A15
Text GLabel 3500 4250 0    50   BiDi ~ 0
RESET
Text GLabel 3500 4150 0    50   BiDi ~ 0
HALT
Text GLabel 5500 5150 2    50   Output ~ 0
RW
Text GLabel 5500 5050 2    50   Output ~ 0
LDS
Text GLabel 5500 4950 2    50   Output ~ 0
UDS
Text GLabel 5500 4850 2    50   Output ~ 0
AS_CPU
Text GLabel 5500 4650 2    50   BiDi ~ 0
D15
Text GLabel 5500 4550 2    50   BiDi ~ 0
D14
Text GLabel 5500 4450 2    50   BiDi ~ 0
D13
Text GLabel 5500 4350 2    50   BiDi ~ 0
D12
Text GLabel 5500 4250 2    50   BiDi ~ 0
D11
Text GLabel 5500 4150 2    50   BiDi ~ 0
D10
Text GLabel 5500 4050 2    50   BiDi ~ 0
D9
Text GLabel 5500 3950 2    50   BiDi ~ 0
D8
Text GLabel 5500 3850 2    50   BiDi ~ 0
D7
Text GLabel 5500 3750 2    50   BiDi ~ 0
D6
Text GLabel 5500 3650 2    50   BiDi ~ 0
D5
Text GLabel 5500 3550 2    50   BiDi ~ 0
D4
Text GLabel 5500 3450 2    50   BiDi ~ 0
D3
Text GLabel 5500 3350 2    50   BiDi ~ 0
D2
Text GLabel 5500 3250 2    50   BiDi ~ 0
D1
Text GLabel 5500 3150 2    50   BiDi ~ 0
D0
Text GLabel 5500 2950 2    50   Output ~ 0
A23
Text GLabel 5500 2850 2    50   Output ~ 0
A22
Text GLabel 5500 2750 2    50   Output ~ 0
A21
Text GLabel 5500 2650 2    50   Output ~ 0
A20
Text GLabel 5500 2550 2    50   Output ~ 0
A19
Text GLabel 5500 2450 2    50   Output ~ 0
A18
Text GLabel 5500 2350 2    50   Output ~ 0
A17
Text GLabel 5500 2250 2    50   Output ~ 0
A16
Text GLabel 5500 2150 2    50   Output ~ 0
A15
Text GLabel 5500 2050 2    50   Output ~ 0
A14
Text GLabel 5500 1950 2    50   Output ~ 0
A13
Text GLabel 5500 1850 2    50   Output ~ 0
A12
Text GLabel 5500 1750 2    50   Output ~ 0
A11
Text GLabel 5500 1650 2    50   Output ~ 0
A10
Text GLabel 5500 1550 2    50   Output ~ 0
A9
Text GLabel 5500 1450 2    50   Output ~ 0
A8
Text GLabel 5500 1350 2    50   Output ~ 0
A7
Text GLabel 5500 1250 2    50   Output ~ 0
A6
Text GLabel 5500 1150 2    50   Output ~ 0
A5
Text GLabel 5500 1050 2    50   Output ~ 0
A4
Text GLabel 5500 950  2    50   Output ~ 0
A3
Text GLabel 5500 850  2    50   Output ~ 0
A2
Text GLabel 5500 750  2    50   Output ~ 0
A1
Text GLabel 6450 6500 2    50   Input ~ 0
GND
Text GLabel 3500 750  0    50   Input ~ 0
CLKCPU
Text GLabel 3500 1950 0    50   Output ~ 0
FC0
Text GLabel 3500 2050 0    50   Output ~ 0
FC1
Text GLabel 3500 2150 0    50   Output ~ 0
FC2
Text GLabel 3500 3550 1    50   Input ~ 0
BERR
Text GLabel 3300 3750 1    50   Input ~ 0
DTACK_CPU
Text GLabel 3500 1050 0    50   Input ~ 0
IPL0
Text GLabel 3500 1150 0    50   Input ~ 0
IPL1
Text GLabel 3500 1250 0    50   Input ~ 0
IPL2
Text GLabel 3500 1450 0    50   Input ~ 0
BGACK
Text GLabel 3500 1650 0    50   Input ~ 0
BR
Text GLabel 3500 1550 0    50   Output ~ 0
BG
$Comp
L CPU_NXP_68000:68000D U2
U 1 1 5F7C541F
P 4500 2950
F 0 "U2" H 4500 2850 50  0000 C CNN
F 1 "68000D_CPU_socket" H 4500 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-64_W22.86mm_LongPads" H 4500 2950 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/reference-manual/MC68000UM.pdf" H 4500 2950 50  0001 C CNN
	1    4500 2950
	1    0    0    -1  
$EndComp
Text GLabel 900  2450 0    50   Input ~ 0
VMA
Text GLabel 900  2550 0    50   Input ~ 0
E
Text GLabel 2550 7600 3    50   BiDi ~ 0
RESET
Text GLabel 1050 6600 0    50   Input ~ 0
3V3
Text GLabel 7400 1950 0    50   Input ~ 0
VCC
$Comp
L SF500:68000D_socket U1
U 1 1 6035E401
P 1900 2950
F 0 "U1" H 1900 2850 50  0000 C CNN
F 1 "68000D_MB_socket" H 1900 2950 50  0000 C CNN
F 2 "Package_DIP:DIP-64_W22.86mm_LongPads" H 1900 2950 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/reference-manual/MC68000UM.pdf" H 1900 2950 50  0001 C CNN
	1    1900 2950
	1    0    0    -1  
$EndComp
Text GLabel 900  1050 0    50   Output ~ 0
IPL0
Text GLabel 900  1150 0    50   Output ~ 0
IPL1
Text GLabel 900  1250 0    50   Output ~ 0
IPL2
Text GLabel 2900 4650 2    50   BiDi ~ 0
D15
Text GLabel 2900 4550 2    50   BiDi ~ 0
D14
Text GLabel 2900 4450 2    50   BiDi ~ 0
D13
Text GLabel 2900 4350 2    50   BiDi ~ 0
D12
Text GLabel 2900 4250 2    50   BiDi ~ 0
D11
Text GLabel 2900 4150 2    50   BiDi ~ 0
D10
Text GLabel 2900 4050 2    50   BiDi ~ 0
D9
Text GLabel 2900 3950 2    50   BiDi ~ 0
D8
Text GLabel 2900 3850 2    50   BiDi ~ 0
D7
Text GLabel 2900 3750 2    50   BiDi ~ 0
D6
Text GLabel 2900 3650 2    50   BiDi ~ 0
D5
Text GLabel 2900 3550 2    50   BiDi ~ 0
D4
Text GLabel 2900 3450 2    50   BiDi ~ 0
D3
Text GLabel 2900 3350 2    50   BiDi ~ 0
D2
Text GLabel 2900 3250 2    50   BiDi ~ 0
D1
Text GLabel 2900 3150 2    50   BiDi ~ 0
D0
Wire Wire Line
	6250 2950 6350 2950
Text GLabel 2900 2950 2    50   Input ~ 0
A23
Text GLabel 2900 2850 2    50   Input ~ 0
A22
Text GLabel 2900 2750 2    50   Input ~ 0
A21
Text GLabel 2900 2650 2    50   Input ~ 0
A20
Text GLabel 2900 2550 2    50   Input ~ 0
A19
Text GLabel 2900 2450 2    50   Input ~ 0
A18
Text GLabel 2900 2350 2    50   Input ~ 0
A17
Text GLabel 2900 2250 2    50   Input ~ 0
A16
Text GLabel 2900 2150 2    50   Input ~ 0
A15
Text GLabel 2900 2050 2    50   Input ~ 0
A14
Text GLabel 2900 1950 2    50   Input ~ 0
A13
Text GLabel 2900 1850 2    50   Input ~ 0
A12
Text GLabel 2900 1750 2    50   Input ~ 0
A11
Text GLabel 2900 1650 2    50   Input ~ 0
A10
Text GLabel 2900 1550 2    50   Input ~ 0
A9
Text GLabel 2900 1450 2    50   Input ~ 0
A8
Text GLabel 2900 1350 2    50   Input ~ 0
A7
Text GLabel 2900 1250 2    50   Input ~ 0
A6
Text GLabel 2900 1150 2    50   Input ~ 0
A5
Text GLabel 2900 1050 2    50   Input ~ 0
A4
Text GLabel 2900 950  2    50   Input ~ 0
A3
Text GLabel 2900 850  2    50   Input ~ 0
A2
Text GLabel 2900 750  2    50   Input ~ 0
A1
Text GLabel 900  1450 0    50   Output ~ 0
BGACK
Text GLabel 900  1550 0    50   Input ~ 0
BG
Text GLabel 900  1650 0    50   Output ~ 0
BR
Text GLabel 900  1950 0    50   Input ~ 0
FC0
Text GLabel 900  2050 0    50   Input ~ 0
FC1
Text GLabel 900  2150 0    50   Input ~ 0
FC2
Text GLabel 900  2650 0    50   Output ~ 0
VPA
Text GLabel 3350 2450 1    50   Input ~ 0
VCC
NoConn ~ 3500 2550
NoConn ~ 3500 2450
Text GLabel 900  3550 1    50   Output ~ 0
BERR
Text GLabel 700  3750 1    50   Output ~ 0
DTACK_MB
Wire Wire Line
	3500 3750 3400 3750
Wire Wire Line
	900  3750 700  3750
Text GLabel 900  4250 0    50   BiDi ~ 0
RESET
Text GLabel 900  4150 0    50   BiDi ~ 0
HALT
Text GLabel 2900 5150 2    50   Input ~ 0
RW
Text GLabel 2900 5050 2    50   Input ~ 0
LDS
Text GLabel 2900 4950 2    50   Input ~ 0
UDS
Text GLabel 2900 4850 2    50   Input ~ 0
AS_MB
Text GLabel 3650 7600 3    50   Input ~ 0
C7M
Text GLabel 2350 7600 3    50   Input ~ 0
C14M
Text GLabel 4500 550  0    50   Input ~ 0
VCC
$Comp
L Device:C_Small C1
U 1 1 603A1A18
P 5950 2050
F 0 "C1" H 5750 2050 50  0000 L CNN
F 1 "10uF" H 5700 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5950 2050 50  0001 C CNN
F 3 "~" H 5950 2050 50  0001 C CNN
	1    5950 2050
	1    0    0    -1  
$EndComp
Text GLabel 5950 1950 1    50   Input ~ 0
GND
$Comp
L Device:C_Small C2
U 1 1 603ABC5F
P 6550 2050
F 0 "C2" H 6600 2100 50  0000 L CNN
F 1 "10uF" H 6600 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6550 2050 50  0001 C CNN
F 3 "~" H 6550 2050 50  0001 C CNN
	1    6550 2050
	1    0    0    -1  
$EndComp
Text GLabel 6550 1950 1    50   Input ~ 0
GND
Text GLabel 4500 5350 0    50   Input ~ 0
GND
Text GLabel 1900 5350 0    50   Input ~ 0
GND
Text GLabel 1900 550  0    50   Input ~ 0
VCC
$Comp
L SF500:LM1117-3.3 U3
U 1 1 603F2843
P 6250 2150
F 0 "U3" H 6250 2392 50  0000 C CNN
F 1 "LM1117-3.3" H 6250 2301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 6250 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 6250 2150 50  0001 C CNN
	1    6250 2150
	1    0    0    -1  
$EndComp
Text GLabel 6250 2450 3    50   Input ~ 0
GND
Text GLabel 6850 2150 2    50   Output ~ 0
3V3
Text GLabel 5850 5600 1    50   Input ~ 0
TDI
Text GLabel 5950 5600 1    50   Input ~ 0
TMS
Text GLabel 6050 5600 1    50   Input ~ 0
TCK
Text GLabel 6150 5600 1    50   Input ~ 0
TDO
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 60440FE6
P 6500 4950
F 0 "J1" V 6500 4550 50  0000 R CNN
F 1 "Conn_01x06" V 6000 5100 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6500 4950 50  0001 C CNN
F 3 "~" H 6500 4950 50  0001 C CNN
	1    6500 4950
	0    -1   -1   0   
$EndComp
Text GLabel 6300 5150 3    50   Input ~ 0
TMS
Text GLabel 6400 5150 3    50   Input ~ 0
TDI
Text GLabel 6500 5150 3    50   Input ~ 0
TDO
Text GLabel 6600 5150 3    50   Input ~ 0
TCK
Text GLabel 6700 5150 3    50   Input ~ 0
GND
Text GLabel 6800 5150 3    50   Input ~ 0
3V3
Text GLabel 4050 7600 3    50   Input ~ 0
A19
Text GLabel 4350 7600 3    50   Input ~ 0
A18
Text GLabel 3750 5600 1    50   Input ~ 0
A9
Text GLabel 3850 5600 1    50   Input ~ 0
A10
Text GLabel 3950 5600 1    50   Input ~ 0
A11
Text GLabel 4050 5600 1    50   Input ~ 0
A12
Text GLabel 4150 5600 1    50   Input ~ 0
A13
Text GLabel 4250 5600 1    50   Input ~ 0
A14
Text GLabel 4350 5600 1    50   Input ~ 0
A15
Text GLabel 4450 5600 1    50   Input ~ 0
A16
Text GLabel 4550 5600 1    50   Input ~ 0
A17
Text GLabel 3650 5600 1    50   Output ~ 0
WE_BANK0_EVEN
Text GLabel 2250 5600 1    50   Input ~ 0
A8
Text GLabel 2150 5600 1    50   Input ~ 0
A7
Text GLabel 2050 5600 1    50   Input ~ 0
A6
Text GLabel 1950 5600 1    50   Input ~ 0
A5
Text GLabel 1850 5600 1    50   Input ~ 0
A4
Text GLabel 1750 5600 1    50   Input ~ 0
A3
Text GLabel 1650 5600 1    50   Input ~ 0
A2
Text GLabel 1450 5600 1    50   Input ~ 0
A1
Text GLabel 950  5350 0    50   Output ~ 0
OE_BANK0
Text GLabel 3850 7600 3    50   Output ~ 0
CLKCPU
Text GLabel 3750 7600 3    50   Input ~ 0
A21
Text GLabel 2250 7600 3    50   Input ~ 0
A20
Text GLabel 2150 7600 3    50   Input ~ 0
A22
Text GLabel 1350 5600 1    50   Input ~ 0
FC0
Text GLabel 1350 7600 3    50   Output ~ 0
OE_BANK1
Text GLabel 1950 7600 3    50   Input ~ 0
A23
Text GLabel 5650 7600 3    50   Output ~ 0
WE_BANK1_ODD
Text GLabel 5550 7600 3    50   BiDi ~ 0
D0
Text GLabel 5450 7600 3    50   BiDi ~ 0
D1
Text GLabel 5350 7600 3    50   BiDi ~ 0
D2
Text GLabel 5250 7600 3    50   BiDi ~ 0
D3
Text GLabel 5150 7600 3    50   BiDi ~ 0
D4
Text GLabel 5050 7600 3    50   BiDi ~ 0
D5
Text GLabel 4950 7600 3    50   BiDi ~ 0
D6
Text GLabel 4850 7600 3    50   BiDi ~ 0
D7
Text GLabel 3450 7600 3    50   BiDi ~ 0
D15
Text GLabel 3350 7600 3    50   BiDi ~ 0
D14
Text GLabel 3250 7600 3    50   BiDi ~ 0
D13
Text GLabel 3150 7600 3    50   BiDi ~ 0
D12
Text GLabel 3050 7600 3    50   BiDi ~ 0
D11
Text GLabel 2950 7600 3    50   BiDi ~ 0
D10
Text GLabel 2850 7600 3    50   BiDi ~ 0
D9
Text GLabel 2650 7600 3    50   BiDi ~ 0
D8
Text GLabel 2750 7600 3    50   BiDi ~ 0
HALT
Text GLabel 1850 7600 3    50   Output ~ 0
VMA
Text GLabel 2050 7600 3    50   Output ~ 0
E
Text GLabel 1750 7600 3    50   Input ~ 0
VPA
Text GLabel 1650 7600 3    50   Input ~ 0
DTACK_MB
Text GLabel 1550 7600 3    50   Output ~ 0
DTACK_CPU
Text GLabel 2850 5600 1    50   Output ~ 0
AS_MB
Text GLabel 2950 5600 1    50   Input ~ 0
AS_CPU
Text GLabel 4450 7600 3    50   Input ~ 0
FC2
Text GLabel 4550 7600 3    50   Input ~ 0
FC1
Text GLabel 4750 7600 3    50   Input ~ 0
BR
Text GLabel 3350 5600 1    50   Input ~ 0
BG
Text GLabel 3450 5600 1    50   Input ~ 0
BGACK
Text GLabel 3250 5600 1    50   Input ~ 0
RW
Text GLabel 3150 5600 1    50   Input ~ 0
LDS
Text GLabel 3050 5600 1    50   Input ~ 0
UDS
Wire Wire Line
	1900 5350 2000 5350
Wire Wire Line
	4600 5350 4500 5350
Wire Wire Line
	1900 550  2000 550 
Wire Wire Line
	4500 550  4600 550 
Text GLabel 4950 5600 1    50   Input ~ 0
BERR
Text GLabel 4750 5600 1    50   Input ~ 0
IPL2
Text GLabel 5050 5600 1    50   Input ~ 0
IPL1
Text GLabel 3500 5250 1    50   Output ~ 0
WE_BANK0_ODD
Wire Wire Line
	2750 5250 3500 5250
Text GLabel 5950 2150 0    50   Input ~ 0
VCC
Connection ~ 6550 2150
$Sheet
S 5950 1400 550  150 
U 6077D7EA
F0 "ide_and_eeprom" 50
F1 "ide_and_eeprom.sch" 50
$EndSheet
Text GLabel 5650 5600 1    50   Output ~ 0
IDE_IOW
Text GLabel 5550 5600 1    50   Output ~ 0
IDE_IOR
Text GLabel 1450 7600 3    50   Input ~ 0
IDE_IORDY
Text GLabel 3950 7600 3    50   Output ~ 0
IDE_IRQ
Text GLabel 4150 7600 3    50   Input ~ 0
IDE_CS0
Text GLabel 4250 7600 3    50   Input ~ 0
IDE_CS1
Wire Wire Line
	10650 2950 10650 3050
Wire Wire Line
	8400 2950 8400 3050
Wire Wire Line
	8400 5900 8400 5800
Wire Wire Line
	10650 5800 10650 5900
Wire Wire Line
	7900 6950 8250 6950
Wire Wire Line
	7900 6750 8250 6750
Connection ~ 7900 6950
Connection ~ 7900 6750
Wire Wire Line
	7600 6950 7900 6950
Wire Wire Line
	7600 6750 7900 6750
Connection ~ 7600 6950
Connection ~ 7600 6750
Wire Wire Line
	7300 6750 7600 6750
Wire Wire Line
	7300 6950 7600 6950
$Comp
L Device:C_Small C12
U 1 1 60511BFD
P 8250 6850
F 0 "C12" H 8300 6800 50  0000 L CNN
F 1 "0.1uF" H 8300 6700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8250 6850 50  0001 C CNN
F 3 "~" H 8250 6850 50  0001 C CNN
	1    8250 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 604F16F2
P 7900 6850
F 0 "C11" H 7950 6800 50  0000 L CNN
F 1 "0.1uF" H 7950 6700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7900 6850 50  0001 C CNN
F 3 "~" H 7900 6850 50  0001 C CNN
	1    7900 6850
	1    0    0    -1  
$EndComp
Text GLabel 7100 6950 3    50   Input ~ 0
3V3
Connection ~ 7300 6950
Wire Wire Line
	7100 6950 7300 6950
Connection ~ 7300 6750
Wire Wire Line
	7100 6750 7300 6750
$Comp
L Device:C_Small C9
U 1 1 604E149B
P 7300 6850
F 0 "C9" H 7350 6800 50  0000 L CNN
F 1 "0.1uF" H 7350 6700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7300 6850 50  0001 C CNN
F 3 "~" H 7300 6850 50  0001 C CNN
	1    7300 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 60465710
P 7600 6850
F 0 "C10" H 7650 6800 50  0000 L CNN
F 1 "0.1uF" H 7650 6700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7600 6850 50  0001 C CNN
F 3 "~" H 7600 6850 50  0001 C CNN
	1    7600 6850
	1    0    0    -1  
$EndComp
Text GLabel 7100 6750 1    50   Input ~ 0
GND
Wire Wire Line
	950  5350 1550 5350
Text GLabel 5350 5600 1    50   Input ~ 0
CFGIN
Text GLabel 7100 1750 1    50   Input ~ 0
WE_BANK1_EVEN
Wire Wire Line
	7400 1850 7100 1850
Wire Wire Line
	7100 1850 7100 1750
$Comp
L Device:C_Small C3
U 1 1 6083DC09
P 6800 2050
F 0 "C3" H 6850 2100 50  0000 L CNN
F 1 "0.1uF" H 6850 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6800 2050 50  0001 C CNN
F 3 "~" H 6800 2050 50  0001 C CNN
	1    6800 2050
	1    0    0    -1  
$EndComp
Text GLabel 5450 5600 1    50   Output ~ 0
ROM_OE
Text GLabel 5250 5600 1    50   Output ~ 0
CFGOUT
Text GLabel 5950 5200 1    50   Output ~ 0
WE_BANK1_EVEN
Text GLabel 8950 6600 2    50   Output ~ 0
CFGIN
Text GLabel 8950 6400 2    50   Input ~ 0
GND
Text GLabel 9050 6100 1    50   Input ~ 0
GND
Text GLabel 9150 6700 2    50   Input ~ 0
GND
Text GLabel 9200 6300 2    50   Input ~ 0
VCC
$Comp
L Device:C_Small C13
U 1 1 603D9400
P 9050 6200
F 0 "C13" H 9150 6300 50  0000 L CNN
F 1 "10uF" H 9150 6200 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9050 6200 50  0001 C CNN
F 3 "~" H 9050 6200 50  0001 C CNN
	1    9050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6300 9050 6300
Connection ~ 9050 6300
Wire Wire Line
	9050 6300 9200 6300
$Comp
L Device:R_Small R3
U 1 1 603ED30D
P 9050 6700
F 0 "R3" V 9150 6700 50  0000 C CNN
F 1 "1k" V 9050 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9050 6700 50  0001 C CNN
F 3 "~" H 9050 6700 50  0001 C CNN
	1    9050 6700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 603EC660
P 8750 6500
F 0 "J2" H 8900 6250 50  0000 C CNN
F 1 "Conn_01x05" H 9050 6350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 8750 6500 50  0001 C CNN
F 3 "~" H 8750 6500 50  0001 C CNN
	1    8750 6500
	-1   0    0    1   
$EndComp
Connection ~ 1050 6700
Connection ~ 1050 6600
Connection ~ 1050 6800
Connection ~ 1050 6500
Connection ~ 1050 6400
Connection ~ 6450 6800
Connection ~ 6450 6700
Connection ~ 6450 6600
Connection ~ 6450 6500
Connection ~ 6450 6400
Connection ~ 6450 6300
Wire Wire Line
	6450 6800 6450 6900
Wire Wire Line
	6450 6700 6450 6800
Wire Wire Line
	6450 6600 6450 6700
Wire Wire Line
	6450 6500 6450 6600
Wire Wire Line
	6450 6400 6450 6500
Wire Wire Line
	6450 6300 6450 6400
Wire Wire Line
	6450 6200 6450 6300
Wire Wire Line
	4850 5200 4850 5600
Wire Wire Line
	2750 5250 2750 5600
Wire Wire Line
	1550 5350 1550 5600
Wire Wire Line
	1050 6800 1050 6900
Wire Wire Line
	1050 6700 1050 6800
Wire Wire Line
	1050 6600 1050 6700
Wire Wire Line
	1050 6500 1050 6600
Wire Wire Line
	1050 6400 1050 6500
Wire Wire Line
	1050 6300 1050 6400
Text GLabel 700  4750 1    50   Input ~ 0
GND
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 603FA0D5
P 700 4950
F 0 "JP2" V 700 4900 50  0000 C CNN
F 1 "Jumper_2_Open" H 700 5094 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 700 4950 50  0001 C CNN
F 3 "~" H 700 4950 50  0001 C CNN
	1    700  4950
	0    -1   -1   0   
$EndComp
$Comp
L CPLD_Xilinx:XC95144XL-TQ100 U9
U 1 1 60310311
P 3750 6600
F 0 "U9" V 3650 6600 50  0000 C CNN
F 1 "XC95144XL-TQ100" V 3750 6600 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 3750 6600 50  0001 C CNN
F 3 "https://www.xilinx.com/support/documentation/data_sheets/ds056.pdf" H 3750 6600 50  0001 C CNN
	1    3750 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 603DF90D
P 2550 5400
F 0 "R2" H 2650 5400 50  0000 C CNN
F 1 "10k" V 2550 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2550 5400 50  0001 C CNN
F 3 "~" H 2550 5400 50  0001 C CNN
	1    2550 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 5250 700  5250
Wire Wire Line
	700  5250 700  5150
Text GLabel 2450 5300 0    50   Input ~ 0
VCC
$Comp
L Device:R_Small R8
U 1 1 6060522F
P 5650 4750
F 0 "R8" V 5650 4950 50  0000 C CNN
F 1 "4.7k" V 5650 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5650 4750 50  0001 C CNN
F 3 "~" H 5650 4750 50  0001 C CNN
	1    5650 4750
	0    -1   -1   0   
$EndComp
Text GLabel 5800 4750 1    50   Input ~ 0
VCC
Wire Wire Line
	5800 4750 5750 4750
Wire Wire Line
	5550 4750 5500 4750
Wire Wire Line
	5500 4750 5500 4850
$Comp
L Device:R_Small R9
U 1 1 6060D71D
P 3400 3850
F 0 "R9" H 3500 3850 50  0000 C CNN
F 1 "1k" V 3400 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3400 3850 50  0001 C CNN
F 3 "~" H 3400 3850 50  0001 C CNN
	1    3400 3850
	1    0    0    -1  
$EndComp
Connection ~ 3400 3750
Wire Wire Line
	3400 3750 3300 3750
Text GLabel 3400 3950 0    50   Input ~ 0
VCC
$Comp
L Device:R_Small R10
U 1 1 60637608
P 6150 4750
F 0 "R10" V 6050 4750 50  0000 C CNN
F 1 "4.7k" V 6150 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6150 4750 50  0001 C CNN
F 3 "~" H 6150 4750 50  0001 C CNN
	1    6150 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 60649C39
P 6350 4750
F 0 "R11" V 6250 4750 50  0000 C CNN
F 1 "4.7k" V 6350 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6350 4750 50  0001 C CNN
F 3 "~" H 6350 4750 50  0001 C CNN
	1    6350 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 6064A590
P 6550 4750
F 0 "R12" V 6450 4750 50  0000 C CNN
F 1 "4.7k" V 6550 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6550 4750 50  0001 C CNN
F 3 "~" H 6550 4750 50  0001 C CNN
	1    6550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5150 6150 5150
Wire Wire Line
	6600 5150 6550 5150
Wire Wire Line
	6400 5150 6350 5150
Wire Wire Line
	6150 4650 6350 4650
Connection ~ 6350 4650
Wire Wire Line
	6350 4650 6550 4650
Wire Wire Line
	6150 4850 6150 5150
Wire Wire Line
	6350 4850 6350 5150
Wire Wire Line
	6550 4850 6550 5150
Text GLabel 7000 6050 3    50   Input ~ 0
CFGIN
Text GLabel 7000 5850 1    50   Input ~ 0
VCC
$Comp
L Device:R_Small R16
U 1 1 6058153B
P 7000 5950
F 0 "R16" V 7100 5950 50  0000 C CNN
F 1 "10k" V 7000 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7000 5950 50  0001 C CNN
F 3 "~" H 7000 5950 50  0001 C CNN
	1    7000 5950
	-1   0    0    1   
$EndComp
Text GLabel 2650 5600 1    50   Input ~ 0
SW1
Wire Wire Line
	2550 5300 2450 5300
Wire Wire Line
	2550 5600 2550 5550
Wire Wire Line
	1600 5400 1600 5250
Wire Wire Line
	1600 5400 2350 5400
Wire Wire Line
	2350 5550 2550 5550
Wire Wire Line
	2350 5400 2350 5550
Connection ~ 2550 5550
Wire Wire Line
	2550 5550 2550 5500
Connection ~ 6800 2150
Wire Wire Line
	6800 2150 6850 2150
Wire Wire Line
	6550 2150 6800 2150
Wire Wire Line
	6550 1950 6800 1950
$Comp
L Device:R_Small R1
U 1 1 60637B65
P 3350 2550
F 0 "R1" H 3250 2450 50  0000 C CNN
F 1 "10k" V 3350 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3350 2550 50  0001 C CNN
F 3 "~" H 3350 2550 50  0001 C CNN
	1    3350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2650 3350 2650
Text GLabel 900  750  0    50   Output ~ 0
C7M_RAW
Wire Wire Line
	6550 2150 6550 2250
Wire Wire Line
	4850 5200 5950 5200
$Comp
L Device:R_Small R15
U 1 1 60E7BDBB
P 6450 5750
F 0 "R15" H 6550 5750 50  0000 C CNN
F 1 "10k" V 6450 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6450 5750 50  0001 C CNN
F 3 "~" H 6450 5750 50  0001 C CNN
	1    6450 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 5900 6450 5850
Wire Wire Line
	5150 5600 5150 5250
Wire Wire Line
	5150 5250 6250 5250
Wire Wire Line
	6250 5250 6250 5650
Wire Wire Line
	6250 5650 6450 5650
Text GLabel 6450 5900 3    50   Input ~ 0
VCC
$Comp
L Jumper:Jumper_2_Open JP4
U 1 1 60E84025
P 6650 5850
F 0 "JP4" V 6650 5800 50  0000 C CNN
F 1 "Jumper_2_Open" H 6650 5994 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6650 5850 50  0001 C CNN
F 3 "~" H 6650 5850 50  0001 C CNN
	1    6650 5850
	0    1    1    0   
$EndComp
Text GLabel 6650 6050 3    50   Input ~ 0
GND
Wire Wire Line
	6450 5650 6650 5650
Connection ~ 6450 5650
$Comp
L Device:R_Small R4
U 1 1 60EB6F09
P 9500 6500
F 0 "R4" V 9600 6500 50  0000 C CNN
F 1 "33" V 9500 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9500 6500 50  0001 C CNN
F 3 "~" H 9500 6500 50  0001 C CNN
	1    9500 6500
	0    -1   -1   0   
$EndComp
Text GLabel 9600 6500 2    50   Input ~ 0
CFGOUT
Wire Wire Line
	8950 6500 9400 6500
Wire Wire Line
	6800 5150 6900 5150
Wire Wire Line
	6900 5150 6900 4800
Wire Wire Line
	6900 4800 6650 4800
Wire Wire Line
	6650 4800 6650 4550
Wire Wire Line
	6650 4550 6350 4550
Wire Wire Line
	6350 4550 6350 4650
$EndSCHEMATC
