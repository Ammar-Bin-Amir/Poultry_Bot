EESchema Schematic File Version 5
EELAYER 36 0
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
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Connection ~ 4500 1850
Connection ~ 4700 2950
Connection ~ 4700 3250
Connection ~ 4700 3650
Connection ~ 6300 2650
Connection ~ 6300 3150
Connection ~ 6300 3250
Connection ~ 6300 3850
Connection ~ 6300 4300
Connection ~ 6500 2850
Connection ~ 6500 3450
Connection ~ 6500 4500
NoConn ~ 4250 2050
NoConn ~ 4900 1950
NoConn ~ 4900 2250
NoConn ~ 4900 2750
NoConn ~ 4900 2850
NoConn ~ 4900 2950
NoConn ~ 4900 3250
NoConn ~ 4900 3350
NoConn ~ 4900 3450
NoConn ~ 4900 3650
NoConn ~ 6100 2150
NoConn ~ 6100 2250
NoConn ~ 6100 2850
NoConn ~ 6100 2950
NoConn ~ 6100 3150
NoConn ~ 6100 3250
NoConn ~ 6100 3450
NoConn ~ 6100 3550
Wire Wire Line
	4250 2950 4700 2950
Wire Wire Line
	4250 3050 4900 3050
Wire Wire Line
	4250 3550 4900 3550
Wire Wire Line
	4500 1850 4250 1850
Wire Wire Line
	4500 1850 4500 4500
Wire Wire Line
	4500 4500 6500 4500
Wire Wire Line
	4600 3750 4250 3750
Wire Wire Line
	4600 4400 4600 3750
Wire Wire Line
	4700 1950 4250 1950
Wire Wire Line
	4700 2950 4700 1950
Wire Wire Line
	4700 3250 4250 3250
Wire Wire Line
	4700 3250 4700 2950
Wire Wire Line
	4700 3650 4250 3650
Wire Wire Line
	4700 3650 4700 3250
Wire Wire Line
	4700 4300 4700 3650
Wire Wire Line
	4900 1850 4500 1850
Wire Wire Line
	4900 2150 4250 2150
Wire Wire Line
	4900 3150 4250 3150
Wire Wire Line
	6100 1850 6400 1850
Wire Wire Line
	6100 3050 6800 3050
Wire Wire Line
	6100 3850 6300 3850
Wire Wire Line
	6300 2100 6750 2100
Wire Wire Line
	6300 2650 6300 2100
Wire Wire Line
	6300 2650 6750 2650
Wire Wire Line
	6300 3150 6300 2650
Wire Wire Line
	6300 3150 6800 3150
Wire Wire Line
	6300 3250 6300 3150
Wire Wire Line
	6300 3250 6750 3250
Wire Wire Line
	6300 3850 6300 3250
Wire Wire Line
	6300 3850 6300 4300
Wire Wire Line
	6300 4300 4700 4300
Wire Wire Line
	6400 1850 6400 4400
Wire Wire Line
	6400 4400 4600 4400
Wire Wire Line
	6500 2400 6750 2400
Wire Wire Line
	6500 2850 6500 2400
Wire Wire Line
	6500 3450 6500 2850
Wire Wire Line
	6500 4500 6500 3450
Wire Wire Line
	6600 2200 6600 2550
Wire Wire Line
	6600 2550 6100 2550
Wire Wire Line
	6650 2300 6650 2450
Wire Wire Line
	6650 2450 6100 2450
Wire Wire Line
	6650 4300 6300 4300
Wire Wire Line
	6650 4350 6650 4300
Wire Wire Line
	6650 4450 6650 4500
Wire Wire Line
	6650 4500 6500 4500
Wire Wire Line
	6750 2200 6600 2200
Wire Wire Line
	6750 2300 6650 2300
Wire Wire Line
	6750 2750 6100 2750
Wire Wire Line
	6750 2850 6500 2850
Wire Wire Line
	6750 3350 6100 3350
Wire Wire Line
	6750 3450 6500 3450
Wire Wire Line
	6750 4350 6650 4350
Wire Wire Line
	6750 4450 6650 4450
Text Notes 800  3700 0    118  ~ 24
Single-Channel Relay Module
Text Notes 1050 3150 0    118  ~ 24
Ultrasonic Distance Sensor
Text Notes 1500 4300 0    118  ~ 24
12V DC Electric Pump
Text Notes 1850 2050 0    118  ~ 24
Air Quality Sensor
Text Notes 4800 1350 0    118  ~ 24
Microcontroller
Text Notes 7450 4450 0    118  ~ 24
Buck Converter
Text Notes 7500 2350 0    118  ~ 24
Nextion HMI LCD
Text Notes 7500 2850 0    118  ~ 24
Temperature and Humidity Sensor
Text Notes 7500 3150 0    118  ~ 24
Litter-Racking Signal
Text Notes 7500 3450 0    118  ~ 24
Liquid Flow Rate Sensor
Text Notes 7500 7500 0    79   ~ 16
Poultry Bot: IoT Monitoring Circuit
Text Notes 8150 7650 0    59   ~ 12
28th of July, 2023
$Comp
L Connector:Conn_01x02_Female 
U 1 1 64C6A50F
P 3900 4300
AR Path="/64C6A50F" Ref=""  Part="1" 
AR Path="/64C6A50F" Ref="J6"  Part="1" 
F 0 "J6" H 4000 4200 50  0000 C CNN
F 1 "12V" H 4000 4300 50  0000 C CNN
F 2 "" H 3900 4300 50  0001 C CNN
F 3 "~" H 3900 4300 50  0001 C CNN
	1    3900 4300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female 
U 1 1 64C3B599
P 6950 4350
AR Path="/64C3B599" Ref=""  Part="1" 
AR Path="/64C3B599" Ref="J8"  Part="1" 
F 0 "J8" H 7000 4350 50  0000 L CNN
F 1 "XL4016" H 7000 4250 50  0000 L CNN
F 2 "" H 6950 4350 50  0001 C CNN
F 3 "~" H 6950 4350 50  0001 C CNN
	1    6950 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 00000000
P 7000 3050
F 0 "J9" H 7050 3050 50  0000 L CNN
F 1 "Litter Raking" H 7050 2950 50  0000 L CNN
F 2 "" H 7000 3050 50  0001 C CNN
F 3 "~" H 7000 3050 50  0001 C CNN
	1    7000 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female 
U 1 1 64C3A4FD
P 4050 3650
AR Path="/64C3A4FD" Ref=""  Part="1" 
AR Path="/64C3A4FD" Ref="J5"  Part="1" 
F 0 "J5" H 4150 3600 50  0000 C CNN
F 1 "HW-307B" H 4300 3700 50  0000 C CNN
F 2 "" H 4050 3650 50  0001 C CNN
F 3 "~" H 4050 3650 50  0001 C CNN
	1    4050 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female 
U 1 1 64C37A5E
P 6950 2750
AR Path="/64C37A5E" Ref=""  Part="1" 
AR Path="/64C37A5E" Ref="J1"  Part="1" 
F 0 "J1" H 6978 2776 50  0000 L CNN
F 1 "DHT22" H 6978 2685 50  0000 L CNN
F 2 "" H 6950 2750 50  0001 C CNN
F 3 "~" H 6950 2750 50  0001 C CNN
	1    6950 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female 
U 1 1 64C38D92
P 6950 3350
AR Path="/64C38D92" Ref=""  Part="1" 
AR Path="/64C38D92" Ref="J4"  Part="1" 
F 0 "J4" H 6978 3376 50  0000 L CNN
F 1 "YF-S201" H 6978 3285 50  0000 L CNN
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "~" H 6950 3350 50  0001 C CNN
	1    6950 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female 
U 1 1 64C38ABB
P 4050 2050
AR Path="/64C38ABB" Ref=""  Part="1" 
AR Path="/64C38ABB" Ref="J2"  Part="1" 
F 0 "J2" H 4150 1950 50  0000 C CNN
F 1 "MQ135" H 4250 2050 50  0000 C CNN
F 2 "" H 4050 2050 50  0001 C CNN
F 3 "~" H 4050 2050 50  0001 C CNN
	1    4050 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female 
U 1 1 64C39455
P 4050 3150
AR Path="/64C39455" Ref=""  Part="1" 
AR Path="/64C39455" Ref="J3"  Part="1" 
F 0 "J3" H 4150 3050 50  0000 C CNN
F 1 "HC-SR04" H 4300 3150 50  0000 C CNN
F 2 "" H 4050 3150 50  0001 C CNN
F 3 "~" H 4050 3150 50  0001 C CNN
	1    4050 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female 
U 1 1 64C39A2F
P 6950 2200
AR Path="/64C39A2F" Ref=""  Part="1" 
AR Path="/64C39A2F" Ref="J7"  Part="1" 
F 0 "J7" H 6978 2176 50  0000 L CNN
F 1 "NX4832T035" H 6978 2085 50  0000 L CNN
F 2 "" H 6950 2200 50  0001 C CNN
F 3 "~" H 6950 2200 50  0001 C CNN
	1    6950 2200
	1    0    0    -1  
$EndComp
$Comp
L Circuit-for-3rd-Milestone-rescue:ESP32-DEVKIT-V1-ESP32-DEVKIT-V1 
U 1 1 64C36569
P 5500 2850
AR Path="/64C36569" Ref=""  Part="1" 
AR Path="/64C36569" Ref="U1"  Part="1" 
F 0 "U1" H 5500 4117 50  0000 C CNN
F 1 "ESP32-DEVKIT-V1" H 5500 4026 50  0000 C CNN
F 2 "MODULE_ESP32_DEVKIT_V1" H 5500 2850 50  0001 L BNN
F 3 "" H 5500 2850 50  0001 L BNN
F 4 "6.8 mm" H 5500 2850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "N/A" H 5500 2850 50  0001 L BNN "PARTREV"
F 6 "DOIT" H 5500 2850 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer Recommendations" H 5500 2850 50  0001 L BNN "STANDARD"
	1    5500 2850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
