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
U 1 1 64C36569
P 5500 2850
F 0 "U1" H 5500 4117 50  0000 C CNB
F 1 "ESP32-DEVKIT-V1" H 5500 4026 50  0000 C CNB
F 2 "MODULE_ESP32_DEVKIT_V1" H 5500 2850 50  0001 L BNN
F 3 "" H 5500 2850 50  0001 L BNN
F 4 "6.8 mm" H 5500 2850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "N/A" H 5500 2850 50  0001 L BNN "PARTREV"
F 6 "DOIT" H 5500 2850 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer Recommendations" H 5500 2850 50  0001 L BNN "STANDARD"
	1    5500 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 64C38D92
P 6950 3350
F 0 "J4" H 6978 3376 50  0000 L CNB
F 1 "YF-S201" H 6978 3285 50  0000 L CNB
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "~" H 6950 3350 50  0001 C CNN
	1    6950 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 64C3B599
P 6950 4350
F 0 "J8" H 7000 4350 50  0000 L CNB
F 1 "XL4016" H 7000 4250 50  0000 L CNB
F 2 "" H 6950 4350 50  0001 C CNN
F 3 "~" H 6950 4350 50  0001 C CNN
	1    6950 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 64C39A2F
P 6950 2200
F 0 "J7" H 6978 2176 50  0000 L CNB
F 1 "NX4832T035" H 6978 2085 50  0000 L CNB
F 2 "" H 6950 2200 50  0001 C CNN
F 3 "~" H 6950 2200 50  0001 C CNN
	1    6950 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 64C38ABB
P 4050 2050
F 0 "J2" H 4150 1950 50  0000 C CNB
F 1 "MQ135" H 4250 2050 50  0000 C CNB
F 2 "" H 4050 2050 50  0001 C CNN
F 3 "~" H 4050 2050 50  0001 C CNN
	1    4050 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 64C3A4FD
P 4050 3650
F 0 "J5" H 4150 3600 50  0000 C CNB
F 1 "HW-307B" H 4300 3700 50  0000 C CNB
F 2 "" H 4050 3650 50  0001 C CNN
F 3 "~" H 4050 3650 50  0001 C CNN
	1    4050 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 64C39455
P 4050 3150
F 0 "J3" H 4150 3050 50  0000 C CNB
F 1 "HC-SR04" H 4300 3150 50  0000 C CNB
F 2 "" H 4050 3150 50  0001 C CNN
F 3 "~" H 4050 3150 50  0001 C CNN
	1    4050 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 64C37A5E
P 6950 2750
F 0 "J1" H 6978 2776 50  0000 L CNB
F 1 "DHT22" H 6978 2685 50  0000 L CNB
F 2 "" H 6950 2750 50  0001 C CNN
F 3 "~" H 6950 2750 50  0001 C CNN
	1    6950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3850 6300 3850
Wire Wire Line
	4700 3650 4250 3650
Wire Wire Line
	4700 3650 4700 3250
Wire Wire Line
	4700 3250 4250 3250
Wire Wire Line
	4250 3050 4900 3050
Wire Wire Line
	4900 3150 4250 3150
Wire Wire Line
	4700 1950 4250 1950
Connection ~ 4700 3250
Wire Wire Line
	4900 1850 4500 1850
Wire Wire Line
	4900 2150 4250 2150
Wire Wire Line
	6300 3850 6300 3250
Wire Wire Line
	6300 3250 6750 3250
Wire Wire Line
	6300 3250 6300 3150
Wire Wire Line
	6300 2650 6750 2650
Connection ~ 6300 3250
Wire Wire Line
	4500 1850 4500 2950
Wire Wire Line
	4500 4500 6500 4500
Connection ~ 4500 1850
Wire Wire Line
	4500 1850 4250 1850
Wire Wire Line
	6750 2850 6500 2850
Wire Wire Line
	6750 2750 6100 2750
Wire Wire Line
	6750 3450 6500 3450
Connection ~ 6500 3450
Wire Wire Line
	6500 3450 6500 2850
Wire Wire Line
	6750 3350 6100 3350
Wire Wire Line
	4250 3550 4900 3550
Wire Wire Line
	6500 2850 6500 2400
Connection ~ 6500 2850
Wire Wire Line
	6300 2650 6300 2100
Wire Wire Line
	6300 2100 6750 2100
Connection ~ 6300 2650
Wire Wire Line
	6100 1850 6400 1850
Wire Wire Line
	6400 1850 6400 4400
Wire Wire Line
	6400 4400 4600 4400
Wire Wire Line
	4600 4400 4600 3750
Wire Wire Line
	4600 3750 4250 3750
Wire Wire Line
	6300 3850 6300 4050
Wire Wire Line
	6300 4300 4700 4300
Wire Wire Line
	4700 4300 4700 3650
Connection ~ 6300 3850
Connection ~ 4700 3650
NoConn ~ 4250 2050
Wire Wire Line
	6500 4500 6500 3950
Wire Wire Line
	6750 4350 6650 4350
Wire Wire Line
	6650 4350 6650 4300
Wire Wire Line
	6650 4300 6300 4300
Connection ~ 6300 4300
Wire Wire Line
	6750 4450 6650 4450
Wire Wire Line
	6650 4450 6650 4500
Wire Wire Line
	6650 4500 6500 4500
Connection ~ 6500 4500
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 64C6A50F
P 3900 4300
F 0 "J6" H 4000 4200 50  0000 C CNB
F 1 "PUMP" H 4050 4300 50  0000 C CNB
F 2 "" H 3900 4300 50  0001 C CNN
F 3 "~" H 3900 4300 50  0001 C CNN
	1    3900 4300
	-1   0    0    1   
$EndComp
Text Notes 4800 1350 0    118  ~ 24
Microcontroller
Text Notes 7500 2350 0    118  ~ 24
Nextion HMI LCD
Text Notes 7500 2850 0    118  ~ 24
Temperature and Humidity Sensor
Text Notes 7500 3450 0    118  ~ 24
Liquid Flow Rate Sensor
Text Notes 1850 2050 0    118  ~ 24
Air Quality Sensor
Text Notes 1050 3150 0    118  ~ 24
Ultrasonic Distance Sensor
Text Notes 800  3700 0    118  ~ 24
Single-Channel Relay Module
Text Notes 1500 4300 0    118  ~ 24
12V DC Electric Pump
Text Notes 7500 4500 0    118  ~ 24
Buck Converter
Text Notes 7500 7500 0    79   ~ 16
Poultry Bot: IoT Monitoring Circuit
Text Notes 8200 7650 0    59   ~ 12
28th of July, 2023
Wire Wire Line
	6750 3050 6100 3050
Text Notes 7500 3150 0    118  ~ 24
Litter-Racking Signal
NoConn ~ 4900 1950
NoConn ~ 4900 2250
NoConn ~ 4900 2750
NoConn ~ 4900 2850
NoConn ~ 4900 2950
NoConn ~ 4900 3250
NoConn ~ 4900 3350
NoConn ~ 4900 3450
NoConn ~ 4900 3650
NoConn ~ 6100 3550
NoConn ~ 6100 3450
NoConn ~ 6100 3250
NoConn ~ 6100 3150
NoConn ~ 6100 2850
NoConn ~ 6100 2950
NoConn ~ 6100 2250
NoConn ~ 6100 2150
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 64C90711
P 6950 3050
F 0 "J9" H 6978 3026 50  0000 L CNB
F 1 "Output Signal" H 6978 2935 50  0000 L CNB
F 2 "" H 6950 3050 50  0001 C CNN
F 3 "~" H 6950 3050 50  0001 C CNN
	1    6950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3150 6300 3150
Connection ~ 6300 3150
Wire Wire Line
	6300 3150 6300 2650
Wire Wire Line
	4700 1950 4700 3250
Wire Wire Line
	4250 2950 4500 2950
Connection ~ 4500 2950
Wire Wire Line
	4500 2950 4500 4500
$Comp
L Connector:Conn_01x02_Female J10
U 1 1 64C947C7
P 6950 3950
F 0 "J10" H 6978 3926 50  0000 L CNB
F 1 "ESP32-CAM" H 6978 3835 50  0000 L CNB
F 2 "" H 6950 3950 50  0001 C CNN
F 3 "~" H 6950 3950 50  0001 C CNN
	1    6950 3950
	1    0    0    -1  
$EndComp
Text Notes 7500 4100 0    118  ~ 24
Camera Module
Text Label 4250 1850 0    50   ~ 10
VCC
Text Label 4250 1950 0    50   ~ 10
GND
Text Label 4250 2150 0    50   ~ 10
AOUT
Text Label 4250 2950 0    50   ~ 10
VCC
Text Label 4250 3050 0    50   ~ 10
TRIG
Text Label 4250 3150 0    50   ~ 10
ECHO
Text Label 4250 3250 0    50   ~ 10
GND
Text Label 4250 3550 0    50   ~ 10
IN
Text Label 4250 3650 0    50   ~ 10
GND
Text Label 4250 3750 0    50   ~ 10
VCC
Text Label 6600 2100 0    50   ~ 10
GND
Text Label 6650 2200 0    50   ~ 10
RX
Text Label 6650 2300 0    50   ~ 10
TX
Wire Wire Line
	6550 2200 6750 2200
Wire Wire Line
	6750 2300 6650 2300
Wire Wire Line
	6500 2400 6750 2400
Text Label 6600 2400 0    50   ~ 10
VCC
Text Label 6600 2650 0    50   ~ 10
GND
Text Label 6600 2750 0    50   ~ 10
OUT
Text Label 6600 2850 0    50   ~ 10
VCC
Text Label 6600 3250 0    50   ~ 10
GND
Text Label 6600 3350 0    50   ~ 10
SIG
Text Label 6600 3450 0    50   ~ 10
VCC
Text Label 6650 4350 0    50   ~ 10
GND
Text Label 6650 4450 0    50   ~ 10
5V
Wire Wire Line
	6750 3950 6500 3950
Connection ~ 6500 3950
Wire Wire Line
	6500 3950 6500 3450
Wire Wire Line
	6750 4050 6300 4050
Connection ~ 6300 4050
Wire Wire Line
	6300 4050 6300 4300
Text Label 6600 3950 0    50   ~ 10
VCC
Text Label 6600 4050 0    50   ~ 10
GND
Text Label 6600 3150 0    50   ~ 10
GND
Text Label 4100 4200 0    50   ~ 10
(+)
Text Label 4100 4300 0    50   ~ 10
(-)
Wire Wire Line
	6550 2200 6550 2550
Wire Wire Line
	6550 2550 6100 2550
Wire Wire Line
	6650 2300 6650 2450
Wire Wire Line
	6650 2450 6100 2450
Text Label 6600 3050 0    50   ~ 10
OUT
Text Notes 2450 6000 0    295  ~ 59
Poultry Bot: IoT Monitoring
Text Notes 3450 6750 0    295  ~ 59
FYP-19B-008-EE
$EndSCHEMATC
