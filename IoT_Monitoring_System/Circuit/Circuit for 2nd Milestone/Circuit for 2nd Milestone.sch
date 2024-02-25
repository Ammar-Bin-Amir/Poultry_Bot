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
Text Notes 600  3900 0    197  ~ 39
Ultrasonic Sensor
Wire Wire Line
	7200 2800 7550 2800
Wire Wire Line
	7200 3050 7200 2800
Wire Wire Line
	6400 3050 7200 3050
Wire Wire Line
	7000 2950 6400 2950
Wire Wire Line
	7000 2700 7000 2950
Wire Wire Line
	7550 2700 7000 2700
Wire Wire Line
	7550 2900 6800 2900
Connection ~ 6800 3200
Wire Wire Line
	6800 2900 6800 3200
Wire Wire Line
	6600 3100 6600 3650
Connection ~ 6600 3100
Wire Wire Line
	6600 2600 6600 3100
Wire Wire Line
	7550 2600 6600 2600
Wire Wire Line
	7050 3350 6400 3350
Wire Wire Line
	7050 3400 7050 3350
Wire Wire Line
	7550 3400 7050 3400
Connection ~ 6800 3850
Wire Wire Line
	6800 3200 6800 3850
Wire Wire Line
	7550 3200 6800 3200
Connection ~ 6600 3650
Wire Wire Line
	7550 3100 6600 3100
Wire Wire Line
	7550 3750 6400 3750
Connection ~ 6800 4250
Wire Wire Line
	6800 3850 6800 4250
Wire Wire Line
	7550 3850 6800 3850
Connection ~ 6600 4150
Wire Wire Line
	6600 3650 7550 3650
Wire Wire Line
	6600 4150 6600 3650
Wire Wire Line
	7050 4350 7550 4350
Wire Wire Line
	7050 4050 7050 4350
Wire Wire Line
	6400 4050 7050 4050
Connection ~ 5000 4700
Wire Wire Line
	6600 4700 5000 4700
Wire Wire Line
	6600 4150 6600 4700
Wire Wire Line
	7550 4150 6600 4150
Connection ~ 6800 4350
Wire Wire Line
	6800 4250 6800 4350
Wire Wire Line
	7550 4250 6800 4250
Connection ~ 4800 5000
Wire Wire Line
	4300 5000 4800 5000
Wire Wire Line
	4300 4800 4300 5000
Wire Wire Line
	4050 4800 4300 4800
Connection ~ 5000 3900
Wire Wire Line
	5000 4700 5000 3900
Wire Wire Line
	4050 4700 5000 4700
Wire Wire Line
	4550 3800 4050 3800
Wire Wire Line
	4550 3450 4550 3800
Wire Wire Line
	5200 3450 4550 3450
Wire Wire Line
	4550 2700 4050 2700
Wire Wire Line
	4550 3250 4550 2700
Wire Wire Line
	5200 3250 4550 3250
Wire Wire Line
	5000 2800 5000 3900
Connection ~ 5000 2800
Wire Wire Line
	5000 2350 5000 2800
Wire Wire Line
	4050 2800 5000 2800
Connection ~ 4800 3600
Wire Wire Line
	4800 2600 4050 2600
Wire Wire Line
	4800 3600 4800 2600
Wire Wire Line
	4300 3700 4050 3700
Wire Wire Line
	4300 3950 4300 3700
Wire Wire Line
	5200 3950 4300 3950
Wire Wire Line
	5000 3900 4050 3900
Wire Wire Line
	5200 2350 5000 2350
Wire Wire Line
	4800 3600 4050 3600
Wire Wire Line
	4800 5000 4800 3600
Wire Wire Line
	6800 5000 4800 5000
Wire Wire Line
	6800 4350 6800 5000
Wire Wire Line
	6400 4350 6800 4350
NoConn ~ 6400 2750
NoConn ~ 6400 2650
NoConn ~ 6400 2350
NoConn ~ 6400 3250
NoConn ~ 6400 3450
NoConn ~ 6400 3550
NoConn ~ 6400 3650
NoConn ~ 6400 3850
NoConn ~ 6400 3950
NoConn ~ 5200 4150
NoConn ~ 5200 4050
NoConn ~ 5200 3850
NoConn ~ 5200 3750
NoConn ~ 5200 3650
NoConn ~ 5200 3550
NoConn ~ 5200 3350
NoConn ~ 5200 2750
NoConn ~ 5200 2650
NoConn ~ 5200 2450
Text Notes 4550 1900 0    197  ~ 39
Micro-controller
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 6484B414
P 3850 4700
F 0 "J7" H 3700 4600 50  0000 C CNN
F 1 "XL4016" H 3600 4700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3850 4700 50  0001 C CNN
F 3 "~" H 3850 4700 50  0001 C CNN
	1    3850 4700
	1    0    0    -1  
$EndComp
Text Notes 7350 4900 0    197  ~ 39
Relay Module
Text Notes 8300 4200 0    197  ~ 39
Liquid Flow\nRate Sensor
Text Notes 8350 3350 0    197  ~ 39
Air Quality Sensor
Text Notes 800  3050 0    197  ~ 39
Temperature and\nHumidity Sensor
Text Notes 7350 2400 0    197  ~ 39
Nextion HMI LCD 3.5"
NoConn ~ 7550 3300
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 6482BAFD
P 7750 4250
F 0 "J6" H 7850 4200 50  0000 L CNN
F 1 "Hw-307b" H 7850 4300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7750 4250 50  0001 C CNN
F 3 "~" H 7750 4250 50  0001 C CNN
	1    7750 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 6482B3E9
P 7750 2700
F 0 "J1" H 7850 2600 50  0000 L CNN
F 1 "NX4832T035" H 7850 2700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 7750 2700 50  0001 C CNN
F 3 "~" H 7750 2700 50  0001 C CNN
	1    7750 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 6482ACBB
P 7750 3750
F 0 "J5" H 7850 3700 50  0000 L CNN
F 1 "YF-S201" H 7850 3800 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7750 3750 50  0001 C CNN
F 3 "~" H 7750 3750 50  0001 C CNN
	1    7750 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 6482A66E
P 3850 3800
F 0 "J4" H 3950 3800 50  0000 L CNN
F 1 "HC-SR04" H 3950 3700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3850 3800 50  0001 C CNN
F 3 "~" H 3850 3800 50  0001 C CNN
	1    3850 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 64829F7A
P 7750 3200
F 0 "J3" H 7850 3100 50  0000 L CNN
F 1 "MQ135" H 7850 3200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 7750 3200 50  0001 C CNN
F 3 "~" H 7750 3200 50  0001 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 6482991F
P 3850 2700
F 0 "J2" H 3950 2750 50  0000 L CNN
F 1 "DHT22" H 3950 2650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3850 2700 50  0001 C CNN
F 3 "~" H 3850 2700 50  0001 C CNN
	1    3850 2700
	-1   0    0    1   
$EndComp
$Comp
L ESP32-DEVKIT-V1:ESP32-DEVKIT-V1 U1
U 1 1 64828509
P 5800 3350
F 0 "U1" H 5800 4617 50  0000 C CNN
F 1 "ESP32-DEVKIT-V1" H 5800 4526 50  0000 C CNN
F 2 "MODULE_ESP32_DEVKIT_V1" H 5800 3350 50  0001 L BNN
F 3 "" H 5800 3350 50  0001 L BNN
F 4 "6.8 mm" H 5800 3350 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "N/A" H 5800 3350 50  0001 L BNN "PARTREV"
F 6 "DOIT" H 5800 3350 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer Recommendations" H 5800 3350 50  0001 L BNN "STANDARD"
	1    5800 3350
	1    0    0    -1  
$EndComp
Text Notes 1000 4850 0    197  ~ 39
Buck Converter
$EndSCHEMATC
