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
L ESP32-DEVKIT-V1:ESP32-DEVKIT-V1 U1
U 1 1 63B84FC6
P 2250 4250
F 0 "U1" H 2250 5400 50  0000 C CNN
F 1 "ESP32-DEVKIT-V1" H 2250 3100 50  0000 C CNN
F 2 "MODULE_ESP32_DEVKIT_V1" H 2250 4250 50  0001 L BNN
F 3 "" H 2250 4250 50  0001 L BNN
F 4 "6.8 mm" H 2250 4250 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "N/A" H 2250 4250 50  0001 L BNN "PARTREV"
F 6 "DOIT" H 2250 4250 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer Recommendations" H 2250 4250 50  0001 L BNN "STANDARD"
	1    2250 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 63B86841
P 3050 2000
F 0 "J1" H 3158 2281 50  0000 C CNN
F 1 "DHT22" H 3158 2190 50  0000 C CNN
F 2 "" H 3050 2000 50  0001 C CNN
F 3 "~" H 3050 2000 50  0001 C CNN
	1    3050 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 63B872D8
P 4550 1950
F 0 "J2" H 4658 2231 50  0000 C CNN
F 1 "MQ135" H 4658 2140 50  0000 C CNN
F 2 "" H 4550 1950 50  0001 C CNN
F 3 "~" H 4550 1950 50  0001 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 63B87E43
P 10450 1950
F 0 "J5" H 10300 2250 50  0000 L CNN
F 1 "NX4832T035" H 10000 2150 50  0000 L CNN
F 2 "" H 10450 1950 50  0001 C CNN
F 3 "~" H 10450 1950 50  0001 C CNN
	1    10450 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 63B90B2E
P 7600 2000
F 0 "J4" H 7708 2281 50  0000 C CNN
F 1 "YF-S201" H 7708 2190 50  0000 C CNN
F 2 "" H 7600 2000 50  0001 C CNN
F 3 "~" H 7600 2000 50  0001 C CNN
	1    7600 2000
	1    0    0    -1  
$EndComp
Text Notes 7500 7500 0    59   ~ 12
Poultry Bot: Monitoring System Circuit
Text Notes 8200 7650 0    50   ~ 10
6th of January, 2023
$Comp
L power:GND #PWR01
U 1 1 63B9CAEE
P 1450 2150
F 0 "#PWR01" H 1450 1900 50  0001 C CNN
F 1 "GND" H 1455 1977 50  0000 C CNN
F 2 "" H 1450 2150 50  0001 C CNN
F 3 "" H 1450 2150 50  0001 C CNN
	1    1450 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 63B9D0D9
P 3500 1800
F 0 "R1" H 3400 1750 50  0000 C CNN
F 1 "10kΩ" H 3350 1850 50  0000 C CNN
F 2 "" V 3430 1800 50  0001 C CNN
F 3 "~" H 3500 1800 50  0001 C CNN
	1    3500 1800
	-1   0    0    1   
$EndComp
Text GLabel 1450 1850 0    50   Input ~ 0
36V
Text GLabel 1450 1950 0    50   Input ~ 0
12V
Text GLabel 1450 2050 0    50   Input ~ 0
5V
$Comp
L power:GND #PWR02
U 1 1 63BB8915
P 3300 2250
F 0 "#PWR02" H 3300 2000 50  0001 C CNN
F 1 "GND" H 3305 2077 50  0000 C CNN
F 2 "" H 3300 2250 50  0001 C CNN
F 3 "" H 3300 2250 50  0001 C CNN
	1    3300 2250
	1    0    0    -1  
$EndComp
Text GLabel 3800 1600 2    50   Input ~ 0
5V
Wire Wire Line
	3250 2100 3300 2100
Wire Wire Line
	3300 2100 3300 2250
Wire Wire Line
	3250 1900 3300 1900
Wire Wire Line
	3300 1900 3300 1600
Wire Wire Line
	3300 1600 3500 1600
Wire Wire Line
	3500 1650 3500 1600
Connection ~ 3500 1600
Wire Wire Line
	3500 1600 3800 1600
Wire Wire Line
	3500 1950 3500 2000
Wire Wire Line
	3500 2000 3250 2000
Text GLabel 5250 1850 2    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR03
U 1 1 63BC4725
P 5000 2250
F 0 "#PWR03" H 5000 2000 50  0001 C CNN
F 1 "GND" H 5005 2077 50  0000 C CNN
F 2 "" H 5000 2250 50  0001 C CNN
F 3 "" H 5000 2250 50  0001 C CNN
	1    5000 2250
	1    0    0    -1  
$EndComp
Text GLabel 3650 2000 2    50   Output ~ 0
DHT22
Wire Wire Line
	3650 2000 3500 2000
Connection ~ 3500 2000
Text GLabel 5150 2050 2    50   Output ~ 0
MQ135
Wire Wire Line
	4750 1950 5000 1950
Wire Wire Line
	5000 1950 5000 2250
Wire Wire Line
	5150 2050 4750 2050
Wire Wire Line
	5250 1850 4750 1850
Text GLabel 9700 1850 0    50   Input ~ 0
5V
$Comp
L power:GND #PWR06
U 1 1 63BCBDE4
P 9600 2250
F 0 "#PWR06" H 9600 2000 50  0001 C CNN
F 1 "GND" H 9605 2077 50  0000 C CNN
F 2 "" H 9600 2250 50  0001 C CNN
F 3 "" H 9600 2250 50  0001 C CNN
	1    9600 2250
	1    0    0    -1  
$EndComp
Text GLabel 8050 2100 2    50   Output ~ 0
YF-S201
Wire Wire Line
	7800 2100 8050 2100
Wire Wire Line
	7800 2000 8000 2000
Wire Wire Line
	8000 2000 8000 2250
Wire Wire Line
	7800 1900 8300 1900
Text GLabel 9900 1950 0    50   Input ~ 0
LCD_RX
Text GLabel 9900 2050 0    50   Output ~ 0
LCD_TX
Wire Wire Line
	10250 1850 9700 1850
Wire Wire Line
	10250 2150 9600 2150
Wire Wire Line
	9600 2150 9600 2250
Wire Wire Line
	6550 1900 6300 1900
Wire Wire Line
	6500 2100 6500 2250
Wire Wire Line
	6300 2100 6500 2100
Wire Wire Line
	6300 2000 6800 2000
Text GLabel 6550 1900 2    50   Output ~ 0
SEN0257
$Comp
L power:GND #PWR04
U 1 1 63BC9B22
P 6500 2250
F 0 "#PWR04" H 6500 2000 50  0001 C CNN
F 1 "GND" H 6505 2077 50  0000 C CNN
F 2 "" H 6500 2250 50  0001 C CNN
F 3 "" H 6500 2250 50  0001 C CNN
	1    6500 2250
	1    0    0    -1  
$EndComp
Text GLabel 6800 2000 2    50   Input ~ 0
5V
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 63B90436
P 6100 2000
F 0 "J3" H 6208 2281 50  0000 C CNN
F 1 "SEN0257" H 6208 2190 50  0000 C CNN
F 2 "" H 6100 2000 50  0001 C CNN
F 3 "~" H 6100 2000 50  0001 C CNN
	1    6100 2000
	1    0    0    -1  
$EndComp
Wire Notes Line
	1000 1500 2000 1500
Wire Notes Line
	2000 1500 2000 2500
Wire Notes Line
	1000 2500 1000 1500
Wire Notes Line
	3000 2500 3000 1500
Wire Notes Line
	9500 1500 10500 1500
Wire Notes Line
	10500 1500 10500 2500
Wire Notes Line
	10500 2500 9500 2500
Wire Notes Line
	9500 2500 9500 1500
$Comp
L power:GND #PWR05
U 1 1 63BAA8D4
P 8000 2250
F 0 "#PWR05" H 8000 2000 50  0001 C CNN
F 1 "GND" H 8005 2077 50  0000 C CNN
F 2 "" H 8000 2250 50  0001 C CNN
F 3 "" H 8000 2250 50  0001 C CNN
	1    8000 2250
	1    0    0    -1  
$EndComp
Text GLabel 8300 1900 2    50   Input ~ 0
5V
Wire Notes Line
	6000 2500 6000 1500
NoConn ~ 4750 2150
Wire Wire Line
	9900 1950 10250 1950
Wire Wire Line
	10250 2050 9900 2050
Text GLabel 2750 6800 2    50   Input ~ 0
ESP32_CAM_RX
Text GLabel 2750 6900 2    50   Output ~ 0
ESP32_CAM_TX
$Comp
L power:GND #PWR022
U 1 1 63BAE6D5
P 1450 7150
F 0 "#PWR022" H 1450 6900 50  0001 C CNN
F 1 "GND" H 1455 6977 50  0000 C CNN
F 2 "" H 1450 7150 50  0001 C CNN
F 3 "" H 1450 7150 50  0001 C CNN
	1    1450 7150
	1    0    0    -1  
$EndComp
Wire Notes Line
	2000 2500 1000 2500
Text GLabel 2850 3650 2    50   Output ~ 0
ESP32_CAM_RX
Text GLabel 2850 3550 2    50   Input ~ 0
ESP32_CAM_TX
Text GLabel 2850 3950 2    50   Output ~ 0
LCD_RX
Text GLabel 2850 3850 2    50   Input ~ 0
LCD_TX
Text GLabel 1650 4750 0    50   Input ~ 0
DHT22
Text GLabel 1650 4150 0    50   Input ~ 0
MQ135
Text GLabel 2850 4650 2    50   Input ~ 0
SEN0257
Text GLabel 2850 4750 2    50   Input ~ 0
YF-S201
Text GLabel 2850 4450 2    50   Output ~ 0
EN_LEFT
Text GLabel 2850 4550 2    50   Output ~ 0
EN_BACK
Text GLabel 2850 4350 2    50   Output ~ 0
EN_RIGHT
$Comp
L power:GND #PWR021
U 1 1 63BD4C52
P 2850 5250
F 0 "#PWR021" H 2850 5000 50  0001 C CNN
F 1 "GND" H 2855 5077 50  0000 C CNN
F 2 "" H 2850 5250 50  0001 C CNN
F 3 "" H 2850 5250 50  0001 C CNN
	1    2850 5250
	1    0    0    -1  
$EndComp
Text GLabel 1650 3250 0    50   Input ~ 0
5V
Wire Notes Line
	3500 3000 3500 5500
Wire Notes Line
	3500 3000 1000 3000
Wire Notes Line
	1000 3000 1000 5500
Wire Notes Line
	1000 5500 3500 5500
Wire Wire Line
	1450 6400 1550 6400
Wire Wire Line
	1450 7150 1450 6400
Text GLabel 1550 6300 0    50   Input ~ 0
5V
$Comp
L ESP32-CAM:ESP32-CAM U2
U 1 1 63B91B1C
P 2150 6900
F 0 "U2" H 2150 7700 50  0000 C CNN
F 1 "ESP32-CAM" H 2150 6600 50  0000 C CNN
F 2 "ESP32-CAM" H 2150 6900 50  0001 L BNN
F 3 "" H 2150 6900 50  0001 L BNN
	1    2150 6900
	1    0    0    -1  
$EndComp
Wire Notes Line
	1000 6000 3500 6000
Wire Notes Line
	3500 6000 3500 7500
Wire Notes Line
	3500 7500 1000 7500
Wire Notes Line
	1000 7500 1000 6000
Wire Notes Line
	3000 1500 4000 1500
Wire Notes Line
	4000 1500 4000 2500
Wire Notes Line
	4000 2500 3000 2500
Wire Notes Line
	4500 1500 5500 1500
Wire Notes Line
	5500 1500 5500 2500
Wire Notes Line
	5500 2500 4500 2500
Wire Notes Line
	4500 2500 4500 1500
Wire Notes Line
	6000 1500 7000 1500
Wire Notes Line
	7000 1500 7000 2500
Wire Notes Line
	7000 2500 6000 2500
Wire Notes Line
	7500 1500 8500 1500
Wire Notes Line
	8500 1500 8500 2500
Wire Notes Line
	8500 2500 7500 2500
Wire Notes Line
	7500 2500 7500 1500
$Comp
L Connector:Conn_01x04_Female J0
U 1 1 63BA46BD
P 1650 1950
F 0 "J0" H 1450 2300 50  0000 L CNN
F 1 "36V DC Battery" H 1200 2200 50  0000 L CNN
F 2 "" H 1650 1950 50  0001 C CNN
F 3 "~" H 1650 1950 50  0001 C CNN
	1    1650 1950
	1    0    0    -1  
$EndComp
Text GLabel 5950 4400 0    50   Input ~ 0
EN_BACK
$Comp
L power:GND #PWR?
U 1 1 63BB68F7
P 6550 4700
F 0 "#PWR?" H 6550 4450 50  0001 C CNN
F 1 "GND" H 6555 4527 50  0000 C CNN
F 2 "" H 6550 4700 50  0001 C CNN
F 3 "" H 6550 4700 50  0001 C CNN
	1    6550 4700
	1    0    0    -1  
$EndComp
Text GLabel 6550 4500 2    50   Input ~ 0
BACK
$Comp
L power:GND #PWR?
U 1 1 63BB68F0
P 5950 4700
F 0 "#PWR?" H 5950 4450 50  0001 C CNN
F 1 "GND" H 5955 4527 50  0000 C CNN
F 2 "" H 5950 4700 50  0001 C CNN
F 3 "" H 5950 4700 50  0001 C CNN
	1    5950 4700
	1    0    0    -1  
$EndComp
Text GLabel 6550 4400 2    50   Input ~ 0
12V
$Comp
L SRD-05VDC-SL-C:SRD-05VDC-SL-C K3
U 1 1 63BB68E9
P 6250 4500
F 0 "K3" H 6250 4867 50  0000 C CNN
F 1 "SRD-05VDC-SL-C" H 6250 4776 50  0000 C CNN
F 2 "RELAY_SRD-05VDC-SL-C" H 6250 4500 50  0001 L BNN
F 3 "" H 6250 4500 50  0001 L BNN
F 4 "SONGLE RELAY" H 6250 4500 50  0001 L BNN "MANUFACTURER"
F 5 "IPC-7251" H 6250 4500 50  0001 L BNN "STANDARD"
	1    6250 4500
	1    0    0    -1  
$EndComp
Text GLabel 4450 3400 0    50   Input ~ 0
EN_LEFT
$Comp
L power:GND #PWR?
U 1 1 63BB4D30
P 5050 3700
F 0 "#PWR?" H 5050 3450 50  0001 C CNN
F 1 "GND" H 5055 3527 50  0000 C CNN
F 2 "" H 5050 3700 50  0001 C CNN
F 3 "" H 5050 3700 50  0001 C CNN
	1    5050 3700
	1    0    0    -1  
$EndComp
Text GLabel 5050 3500 2    50   Input ~ 0
LEFT
$Comp
L power:GND #PWR?
U 1 1 63BB4D29
P 4450 3700
F 0 "#PWR?" H 4450 3450 50  0001 C CNN
F 1 "GND" H 4455 3527 50  0000 C CNN
F 2 "" H 4450 3700 50  0001 C CNN
F 3 "" H 4450 3700 50  0001 C CNN
	1    4450 3700
	1    0    0    -1  
$EndComp
Text GLabel 5050 3400 2    50   Input ~ 0
12V
$Comp
L SRD-05VDC-SL-C:SRD-05VDC-SL-C K1
U 1 1 63BB4D22
P 4750 3500
F 0 "K1" H 4750 3867 50  0000 C CNN
F 1 "SRD-05VDC-SL-C" H 4750 3776 50  0000 C CNN
F 2 "RELAY_SRD-05VDC-SL-C" H 4750 3500 50  0001 L BNN
F 3 "" H 4750 3500 50  0001 L BNN
F 4 "SONGLE RELAY" H 4750 3500 50  0001 L BNN "MANUFACTURER"
F 5 "IPC-7251" H 4750 3500 50  0001 L BNN "STANDARD"
	1    4750 3500
	1    0    0    -1  
$EndComp
Text GLabel 7450 3400 0    50   Input ~ 0
EN_RIGHT
$Comp
L power:GND #PWR?
U 1 1 63BAF06C
P 8050 3700
F 0 "#PWR?" H 8050 3450 50  0001 C CNN
F 1 "GND" H 8055 3527 50  0000 C CNN
F 2 "" H 8050 3700 50  0001 C CNN
F 3 "" H 8050 3700 50  0001 C CNN
	1    8050 3700
	1    0    0    -1  
$EndComp
Text GLabel 8050 3500 2    50   Input ~ 0
RIGHT
$Comp
L power:GND #PWR?
U 1 1 63BAE156
P 7450 3700
F 0 "#PWR?" H 7450 3450 50  0001 C CNN
F 1 "GND" H 7455 3527 50  0000 C CNN
F 2 "" H 7450 3700 50  0001 C CNN
F 3 "" H 7450 3700 50  0001 C CNN
	1    7450 3700
	1    0    0    -1  
$EndComp
Text GLabel 8050 3400 2    50   Input ~ 0
12V
$Comp
L SRD-05VDC-SL-C:SRD-05VDC-SL-C K2
U 1 1 63B92627
P 7750 3500
F 0 "K2" H 7750 3867 50  0000 C CNN
F 1 "SRD-05VDC-SL-C" H 7750 3776 50  0000 C CNN
F 2 "RELAY_SRD-05VDC-SL-C" H 7750 3500 50  0001 L BNN
F 3 "" H 7750 3500 50  0001 L BNN
F 4 "SONGLE RELAY" H 7750 3500 50  0001 L BNN "MANUFACTURER"
F 5 "IPC-7251" H 7750 3500 50  0001 L BNN "STANDARD"
	1    7750 3500
	1    0    0    -1  
$EndComp
Text Notes 1000 1300 0    98   ~ 20
Power Supply
Text Notes 2950 1450 0    98   ~ 20
 Temperature\nand  Humidity\n    Sensor
Text Notes 4600 1400 0    98   ~ 20
Air Quality\n  Sensor
Text Notes 6200 1400 0    98   ~ 20
Pressure\n Sensor
Text Notes 7550 1400 0    98   ~ 20
Liquid  Flow\n   Sensor
Text Notes 9650 1400 0    98   ~ 20
 Nextion\nHMI  LCD
Text Notes 1650 2850 0    98   ~ 20
Micro-controller
NoConn ~ 1650 3350
NoConn ~ 1650 3550
NoConn ~ 1650 3650
NoConn ~ 2850 4150
NoConn ~ 2850 4250
NoConn ~ 1650 4350
NoConn ~ 2850 4850
NoConn ~ 2850 4950
NoConn ~ 1650 4850
NoConn ~ 1650 4950
NoConn ~ 1650 5050
Text Notes 5000 2850 0    98   ~ 20
Electric Valve and Electric Pump
Text Notes 1950 5850 0    98   ~ 20
Camera
Wire Notes Line
	4000 3000 8500 3000
Wire Notes Line
	8500 3000 8500 5000
Wire Notes Line
	8500 5000 4000 5000
Wire Notes Line
	4000 5000 4000 3000
NoConn ~ 1650 4250
NoConn ~ 1650 4450
NoConn ~ 1650 4550
NoConn ~ 1650 4650
Text GLabel 2850 3250 2    50   Output ~ 0
3.3V
$EndSCHEMATC
