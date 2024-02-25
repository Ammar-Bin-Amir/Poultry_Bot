EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:Conn_01x03_Female J1
U 1 1 63ADC20A
P 9000 2250
F 0 "J1" H 9100 2200 50  0000 C CNN
F 1 "DHT22" H 9150 2300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9000 2250 50  0001 C CNN
F 3 "~" H 9000 2250 50  0001 C CNN
	1    9000 2250
	-1   0    0    1   
$EndComp
Text GLabel 9750 1750 2    50   Input ~ 0
5V
Text GLabel 9500 2350 2    50   Input ~ 0
GND
Text GLabel 7350 1850 2    50   Output ~ 0
3.3V
Text GLabel 9750 2250 2    50   Output ~ 0
DHT22_DATA
NoConn ~ 6150 1950
Wire Notes Line width 20
	5500 4000 5500 1500
Text Notes 8550 1400 0    98   ~ 20
Temperature and Humidity\n        Sensor
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 63AE111D
P 3500 2000
F 0 "U2" H 3500 2242 50  0000 C CNN
F 1 "LM7805" H 3500 2151 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3500 2225 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 3500 1950 50  0001 C CNN
	1    3500 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 63AE570A
P 3000 2500
F 0 "C1" H 3118 2546 50  0000 L CNN
F 1 "10μF" H 3118 2455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3038 2350 50  0001 C CNN
F 3 "~" H 3000 2500 50  0001 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
Text GLabel 5000 3000 2    50   Output ~ 0
GND
Text GLabel 5000 2000 2    50   Output ~ 0
5V
Text GLabel 9350 4200 2    50   Output ~ 0
LCD_TX
Text GLabel 9350 4300 2    50   Input ~ 0
LCD_RX
Text Notes 8600 2900 0    98   ~ 20
Air Quality\n  Sensor
Text GLabel 9000 3400 2    50   Output ~ 0
MQ135_DATA
NoConn ~ 9000 3300
Text GLabel 9000 3200 2    50   Input ~ 0
GND
Text GLabel 9000 3100 2    50   Input ~ 0
3.3V
Text Notes 8600 3800 0    98   ~ 20
Nextion HMI LCD
Text Notes 2750 1550 0    98   ~ 20
Power Supply
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 63AEA2B4
P 9150 4200
F 0 "J3" H 9050 4200 50  0000 C CNN
F 1 "NX4832T035" H 8900 4100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9150 4200 50  0001 C CNN
F 3 "~" H 9150 4200 50  0001 C CNN
	1    9150 4200
	1    0    0    -1  
$EndComp
Text GLabel 9350 4400 2    50   Input ~ 0
GND
Text GLabel 9350 4100 2    50   Input ~ 0
5V
$Comp
L Device:R R3
U 1 1 63AECDDF
P 9500 2000
F 0 "R3" H 9400 1950 50  0000 C CNN
F 1 "10kΩ" H 9350 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9430 2000 50  0001 C CNN
F 3 "~" H 9500 2000 50  0001 C CNN
	1    9500 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 63AFB23D
P 2500 2750
F 0 "D1" V 2550 2600 50  0000 C CNN
F 1 "LED" V 2450 2600 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 2500 2750 50  0001 C CNN
F 3 "~" H 2500 2750 50  0001 C CNN
	1    2500 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 63AFAAE6
P 2500 2250
F 0 "R1" H 2350 2200 50  0000 C CNN
F 1 "330Ω" H 2300 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 2250 50  0001 C CNN
F 3 "~" H 2500 2250 50  0001 C CNN
	1    2500 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 63B00DFF
P 4500 2250
F 0 "R2" H 4350 2200 50  0000 C CNN
F 1 "220Ω" H 4300 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 2250 50  0001 C CNN
F 3 "~" H 4500 2250 50  0001 C CNN
	1    4500 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 63B01261
P 4500 2750
F 0 "D2" V 4550 2600 50  0000 C CNN
F 1 "LED" V 4450 2600 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4500 2750 50  0001 C CNN
F 3 "~" H 4500 2750 50  0001 C CNN
	1    4500 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 2000 2500 2100
Wire Wire Line
	2500 3000 2500 2900
Wire Wire Line
	2500 2600 2500 2400
Wire Wire Line
	3200 2000 3000 2000
Wire Wire Line
	3000 2350 3000 2000
Connection ~ 3000 2000
Wire Wire Line
	3000 2000 2500 2000
Wire Wire Line
	3000 2650 3000 3000
Wire Wire Line
	3000 3000 2500 3000
Wire Wire Line
	3500 2300 3500 3000
Wire Wire Line
	3500 3000 3000 3000
Connection ~ 3000 3000
Wire Wire Line
	4000 2650 4000 3000
Wire Wire Line
	4000 3000 3500 3000
Connection ~ 3500 3000
Wire Wire Line
	4500 2900 4500 3000
Wire Wire Line
	4500 3000 4000 3000
Connection ~ 4000 3000
$Comp
L Device:CP C2
U 1 1 63AE5E5B
P 4000 2500
F 0 "C2" H 4118 2546 50  0000 L CNN
F 1 "1μF" H 4118 2455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4038 2350 50  0001 C CNN
F 3 "~" H 4000 2500 50  0001 C CNN
	1    4000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2350 4000 2000
Wire Wire Line
	4000 2000 3800 2000
Wire Wire Line
	4500 2100 4500 2000
Wire Wire Line
	4500 2000 4000 2000
Connection ~ 4000 2000
Wire Wire Line
	4500 2400 4500 2600
Wire Wire Line
	2000 2400 2000 2000
Wire Wire Line
	2000 2000 2500 2000
Connection ~ 2500 2000
Wire Wire Line
	2000 2600 2000 3000
Wire Wire Line
	2000 3000 2500 3000
Connection ~ 2500 3000
Wire Wire Line
	5000 3000 4500 3000
Connection ~ 4500 3000
Wire Wire Line
	5000 2000 4500 2000
Connection ~ 4500 2000
Wire Notes Line width 20
	1250 1700 5250 1700
Wire Notes Line width 20
	5250 1700 5250 3250
Wire Notes Line width 20
	5250 3250 1250 3250
Wire Notes Line width 20
	1250 1700 1250 3250
Text Notes 5800 1350 0    197  ~ 39
Microcontroller
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 63AD8FCA
P 8800 3300
F 0 "J2" H 8900 3200 50  0000 C CNN
F 1 "MQ135" H 8950 3350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 8800 3300 50  0001 C CNN
F 3 "~" H 8800 3300 50  0001 C CNN
	1    8800 3300
	-1   0    0    1   
$EndComp
Wire Notes Line width 20
	10500 1500 8500 1500
Wire Notes Line width 20
	9500 3000 9500 3500
Wire Notes Line width 20
	9500 3500 8500 3500
Wire Notes Line width 20
	8500 4000 10000 4000
Wire Notes Line width 20
	10000 4000 10000 4500
Wire Notes Line width 20
	10000 4500 8500 4500
Wire Notes Line width 20
	8500 3500 8500 3000
Wire Notes Line width 20
	8500 3000 9500 3000
Wire Notes Line width 20
	8500 4500 8500 4000
$Comp
L Connector:Barrel_Jack_Switch J0
U 1 1 63B172B7
P 1600 2500
F 0 "J0" H 1657 2817 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1657 2726 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1650 2460 50  0001 C CNN
F 3 "~" H 1650 2460 50  0001 C CNN
	1    1600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2600 1900 2600
Wire Wire Line
	1900 2500 2000 2500
Wire Wire Line
	2000 2500 2000 2600
Connection ~ 2000 2600
Wire Wire Line
	1900 2400 2000 2400
Wire Notes Line width 20
	8500 1500 8500 2500
Wire Notes Line width 20
	10500 1500 10500 2500
Wire Wire Line
	9750 1750 9500 1750
Wire Wire Line
	9500 1750 9500 1850
Wire Wire Line
	9750 2250 9500 2250
Wire Wire Line
	9200 2350 9500 2350
Wire Wire Line
	9500 2150 9500 2250
Connection ~ 9500 2250
Wire Wire Line
	9500 2250 9200 2250
Wire Wire Line
	9200 2150 9200 1750
Wire Wire Line
	9200 1750 9500 1750
Connection ~ 9500 1750
Wire Notes Line width 20
	10500 2500 8500 2500
Text GLabel 6150 1850 0    50   Input ~ 0
5V
NoConn ~ 7350 2850
Text GLabel 7350 2250 2    50   Input ~ 0
LCD_RX
Text GLabel 7350 2150 2    50   Output ~ 0
LCD_TX
NoConn ~ 6150 3650
NoConn ~ 6150 3550
NoConn ~ 6150 3450
NoConn ~ 6150 3250
NoConn ~ 6150 3150
NoConn ~ 6150 3050
NoConn ~ 6150 2950
NoConn ~ 6150 2250
NoConn ~ 6150 2150
NoConn ~ 7350 3550
NoConn ~ 7350 3450
NoConn ~ 7350 3350
NoConn ~ 7350 3250
NoConn ~ 7350 3150
NoConn ~ 7350 3050
NoConn ~ 7350 2950
NoConn ~ 6150 2750
NoConn ~ 7350 2750
NoConn ~ 6150 2850
NoConn ~ 7350 2450
Text GLabel 7350 3850 2    50   Output ~ 0
GND
Text GLabel 6150 3350 0    50   Input ~ 0
MQ135_DATA
Text GLabel 7350 2550 2    50   Input ~ 0
DHT22_DATA
$Comp
L ESP32-DEVKIT-V1:ESP32-DEVKIT-V1 U1
U 1 1 63AD028F
P 6750 2850
F 0 "U1" H 6750 4117 50  0000 C CNN
F 1 "ESP32-DEVKIT-V1" H 6750 4026 50  0000 C CNN
F 2 "ESP32-DEVKIT-V1:MODULE_ESP32_DEVKIT_V1" H 6750 2850 50  0001 L BNN
F 3 "" H 6750 2850 50  0001 L BNN
F 4 "6.8 mm" H 6750 2850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "N/A" H 6750 2850 50  0001 L BNN "PARTREV"
F 6 "DOIT" H 6750 2850 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer Recommendations" H 6750 2850 50  0001 L BNN "STANDARD"
	1    6750 2850
	1    0    0    -1  
$EndComp
Wire Notes Line width 20
	5500 1500 8000 1500
Wire Notes Line width 20
	8000 1500 8000 4000
Wire Notes Line width 20
	8000 4000 5500 4000
$EndSCHEMATC
