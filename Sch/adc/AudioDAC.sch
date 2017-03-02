EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:zturn_adc
LIBS:CYUSB3014
LIBS:zturn_adc-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L NAU8822LYG U6
U 1 1 58A94092
P 5550 3250
F 0 "U6" H 5550 2400 60  0000 C CNN
F 1 "NAU8822LYG" H 5550 4700 60  0000 C CNN
F 2 "adc_lib:NAU8822L" H 5550 2400 60  0001 C CNN
F 3 "" H 5550 2400 60  0001 C CNN
	1    5550 3250
	1    0    0    -1  
$EndComp
$Comp
L AudioJack CN3
U 1 1 58A945B2
P 8250 3750
F 0 "CN3" H 8200 3450 60  0000 C CNN
F 1 "AudioJack" H 8250 4000 60  0000 C CNN
F 2 "adc_lib:SJ-3523-SMT" H 8200 3450 60  0001 C CNN
F 3 "" H 8200 3450 60  0001 C CNN
	1    8250 3750
	1    0    0    -1  
$EndComp
$Comp
L CP1 C21
U 1 1 58A94613
P 6900 3750
F 0 "C21" H 6925 3850 50  0000 L CNN
F 1 "220uF" H 6925 3650 50  0000 L CNN
F 2 "adc_lib:C1206" H 6900 3750 50  0001 C CNN
F 3 "" H 6900 3750 50  0000 C CNN
	1    6900 3750
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C27
U 1 1 58A94914
P 6900 4000
F 0 "C27" H 6925 4100 50  0000 L CNN
F 1 "220uF" H 6925 3900 50  0000 L CNN
F 2 "adc_lib:C1206" H 6900 4000 50  0001 C CNN
F 3 "" H 6900 4000 50  0000 C CNN
	1    6900 4000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR053
U 1 1 58A94BF7
P 7300 4600
F 0 "#PWR053" H 7300 4350 50  0001 C CNN
F 1 "GND" H 7300 4450 50  0000 C CNN
F 2 "" H 7300 4600 50  0000 C CNN
F 3 "" H 7300 4600 50  0000 C CNN
	1    7300 4600
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 58A94C13
P 7300 4450
F 0 "R29" V 7380 4450 50  0000 C CNN
F 1 "DNL" V 7300 4450 50  0000 C CNN
F 2 "adc_lib:R0603" V 7230 4450 50  0001 C CNN
F 3 "" H 7300 4450 50  0000 C CNN
	1    7300 4450
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 58A94C87
P 7500 4450
F 0 "R30" V 7580 4450 50  0000 C CNN
F 1 "DNL" V 7500 4450 50  0000 C CNN
F 2 "adc_lib:R0603" V 7430 4450 50  0001 C CNN
F 3 "" H 7500 4450 50  0000 C CNN
	1    7500 4450
	1    0    0    -1  
$EndComp
NoConn ~ 6250 3300
NoConn ~ 6250 3400
NoConn ~ 6250 3000
NoConn ~ 6250 3100
NoConn ~ 4650 2800
NoConn ~ 4650 2900
NoConn ~ 4650 3300
NoConn ~ 4650 3100
NoConn ~ 4650 3200
Text Label 6350 3600 0    60   ~ 0
VREF
Text Label 8050 4300 0    60   ~ 0
VREF
$Comp
L C C43
U 1 1 58A95D2B
P 7950 4450
F 0 "C43" H 7975 4550 50  0000 L CNN
F 1 "4.7uF" H 7975 4350 50  0000 L CNN
F 2 "adc_lib:C0603" H 7988 4300 50  0001 C CNN
F 3 "" H 7950 4450 50  0000 C CNN
	1    7950 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 58A96033
P 5650 5100
F 0 "#PWR054" H 5650 4850 50  0001 C CNN
F 1 "GND" H 5650 4950 50  0000 C CNN
F 2 "" H 5650 5100 50  0000 C CNN
F 3 "" H 5650 5100 50  0000 C CNN
	1    5650 5100
	1    0    0    -1  
$EndComp
Text GLabel 4650 3400 0    60   Input ~ 0
FS
Text GLabel 4650 3500 0    60   Input ~ 0
BCLK
Text GLabel 4650 3700 0    60   Input ~ 0
DACIN
$Comp
L R R27
U 1 1 58A97C3B
P 3900 4650
F 0 "R27" V 3980 4650 50  0000 C CNN
F 1 "10k" V 3900 4650 50  0000 C CNN
F 2 "adc_lib:R0603" V 3830 4650 50  0001 C CNN
F 3 "" H 3900 4650 50  0000 C CNN
	1    3900 4650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR055
U 1 1 58A98414
P 4750 1750
F 0 "#PWR055" H 4750 1600 50  0001 C CNN
F 1 "+3V3" H 4750 1890 50  0000 C CNN
F 2 "" H 4750 1750 50  0000 C CNN
F 3 "" H 4750 1750 50  0000 C CNN
	1    4750 1750
	1    0    0    -1  
$EndComp
$Comp
L L L8
U 1 1 58A98450
P 4900 1750
F 0 "L8" V 4850 1750 50  0000 C CNN
F 1 "L" V 4975 1750 50  0000 C CNN
F 2 "adc_lib:FB0805" H 4900 1750 50  0001 C CNN
F 3 "" H 4900 1750 50  0000 C CNN
	1    4900 1750
	0    1    1    0   
$EndComp
Text GLabel 4650 3800 0    60   Input ~ 0
MCLK
$Comp
L C C28
U 1 1 58A98E1F
P 7050 2650
F 0 "C28" H 7075 2750 50  0000 L CNN
F 1 "4.7uF" H 7075 2550 50  0000 L CNN
F 2 "adc_lib:C0603" H 7088 2500 50  0001 C CNN
F 3 "" H 7050 2650 50  0000 C CNN
	1    7050 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 58A98E4C
P 7050 2800
F 0 "#PWR056" H 7050 2550 50  0001 C CNN
F 1 "GND" H 7050 2650 50  0000 C CNN
F 2 "" H 7050 2800 50  0000 C CNN
F 3 "" H 7050 2800 50  0000 C CNN
	1    7050 2800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58A99163
P 6800 2650
F 0 "C3" H 6825 2750 50  0000 L CNN
F 1 "0.1uF" H 6825 2550 50  0000 L CNN
F 2 "adc_lib:C0402" H 6838 2500 50  0001 C CNN
F 3 "" H 6800 2650 50  0000 C CNN
	1    6800 2650
	1    0    0    -1  
$EndComp
$Comp
L C C42
U 1 1 58A99752
P 7700 2650
F 0 "C42" H 7725 2750 50  0000 L CNN
F 1 "4.7uF" H 7725 2550 50  0000 L CNN
F 2 "adc_lib:C0603" H 7738 2500 50  0001 C CNN
F 3 "" H 7700 2650 50  0000 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 58A99758
P 7700 2800
F 0 "#PWR057" H 7700 2550 50  0001 C CNN
F 1 "GND" H 7700 2650 50  0000 C CNN
F 2 "" H 7700 2800 50  0000 C CNN
F 3 "" H 7700 2800 50  0000 C CNN
	1    7700 2800
	1    0    0    -1  
$EndComp
$Comp
L C C41
U 1 1 58A9975E
P 7450 2650
F 0 "C41" H 7475 2750 50  0000 L CNN
F 1 "0.1uF" H 7475 2550 50  0000 L CNN
F 2 "adc_lib:C0402" H 7488 2500 50  0001 C CNN
F 3 "" H 7450 2650 50  0000 C CNN
	1    7450 2650
	1    0    0    -1  
$EndComp
$Comp
L C C45
U 1 1 58A997A2
P 8300 2650
F 0 "C45" H 8325 2750 50  0000 L CNN
F 1 "4.7uF" H 8325 2550 50  0000 L CNN
F 2 "adc_lib:C0603" H 8338 2500 50  0001 C CNN
F 3 "" H 8300 2650 50  0000 C CNN
	1    8300 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR058
U 1 1 58A997A8
P 8300 2800
F 0 "#PWR058" H 8300 2550 50  0001 C CNN
F 1 "GND" H 8300 2650 50  0000 C CNN
F 2 "" H 8300 2800 50  0000 C CNN
F 3 "" H 8300 2800 50  0000 C CNN
	1    8300 2800
	1    0    0    -1  
$EndComp
$Comp
L C C44
U 1 1 58A997AE
P 8050 2650
F 0 "C44" H 8075 2750 50  0000 L CNN
F 1 "0.1uF" H 8075 2550 50  0000 L CNN
F 2 "adc_lib:C0402" H 8088 2500 50  0001 C CNN
F 3 "" H 8050 2650 50  0000 C CNN
	1    8050 2650
	1    0    0    -1  
$EndComp
$Comp
L C C47
U 1 1 58A997FE
P 8900 2650
F 0 "C47" H 8925 2750 50  0000 L CNN
F 1 "4.7uF" H 8925 2550 50  0000 L CNN
F 2 "adc_lib:C0603" H 8938 2500 50  0001 C CNN
F 3 "" H 8900 2650 50  0000 C CNN
	1    8900 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 58A99804
P 8900 2800
F 0 "#PWR059" H 8900 2550 50  0001 C CNN
F 1 "GND" H 8900 2650 50  0000 C CNN
F 2 "" H 8900 2800 50  0000 C CNN
F 3 "" H 8900 2800 50  0000 C CNN
	1    8900 2800
	1    0    0    -1  
$EndComp
$Comp
L C C46
U 1 1 58A9980A
P 8650 2650
F 0 "C46" H 8675 2750 50  0000 L CNN
F 1 "0.1uF" H 8675 2550 50  0000 L CNN
F 2 "adc_lib:C0402" H 8688 2500 50  0001 C CNN
F 3 "" H 8650 2650 50  0000 C CNN
	1    8650 2650
	1    0    0    -1  
$EndComp
NoConn ~ 4650 4500
NoConn ~ 4650 4600
NoConn ~ 4650 3000
Text GLabel 3050 4100 0    60   BiDi ~ 0
SCL
Text GLabel 3050 4200 0    60   BiDi ~ 0
SDA
$Comp
L R R23
U 1 1 58A9A860
P 3700 4650
F 0 "R23" V 3780 4650 50  0000 C CNN
F 1 "10k" V 3700 4650 50  0000 C CNN
F 2 "adc_lib:R0402" V 3630 4650 50  0001 C CNN
F 3 "" H 3700 4650 50  0000 C CNN
	1    3700 4650
	1    0    0    -1  
$EndComp
NoConn ~ 6250 4200
$Comp
L R R28
U 1 1 58A9AF59
P 6500 4550
F 0 "R28" V 6580 4550 50  0000 C CNN
F 1 "10k" V 6500 4550 50  0000 C CNN
F 2 "adc_lib:R0603" V 6430 4550 50  0001 C CNN
F 3 "" H 6500 4550 50  0000 C CNN
	1    6500 4550
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 58A9C32A
P 3550 3600
F 0 "R22" V 3630 3600 50  0000 C CNN
F 1 "10k" V 3550 3600 50  0000 C CNN
F 2 "adc_lib:R0402" V 3480 3600 50  0001 C CNN
F 3 "" H 3550 3600 50  0000 C CNN
	1    3550 3600
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 58A9C330
P 3350 3600
F 0 "R21" V 3430 3600 50  0000 C CNN
F 1 "10k" V 3350 3600 50  0000 C CNN
F 2 "adc_lib:R0402" V 3280 3600 50  0001 C CNN
F 3 "" H 3350 3600 50  0000 C CNN
	1    3350 3600
	1    0    0    -1  
$EndComp
Text Notes 4750 2600 0    60   ~ 0
100mW
$Comp
L TLV702 U7
U 1 1 58B42AD2
P 6800 1250
F 0 "U7" H 6800 950 60  0000 C CNN
F 1 "TLV702" H 6800 1550 60  0000 C CNN
F 2 "adc_lib:TLV702" H 6800 950 60  0001 C CNN
F 3 "" H 6800 950 60  0001 C CNN
	1    6800 1250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR060
U 1 1 58B42B1D
P 5650 750
F 0 "#PWR060" H 5650 600 50  0001 C CNN
F 1 "+3V3" H 5650 890 50  0000 C CNN
F 2 "" H 5650 750 50  0000 C CNN
F 3 "" H 5650 750 50  0000 C CNN
	1    5650 750 
	1    0    0    -1  
$EndComp
$Comp
L L L7
U 1 1 58B42B5D
P 5800 750
F 0 "L7" V 5750 750 50  0000 C CNN
F 1 "L" V 5875 750 50  0000 C CNN
F 2 "adc_lib:FB0805" H 5800 750 50  0001 C CNN
F 3 "" H 5800 750 50  0000 C CNN
	1    5800 750 
	0    1    1    0   
$EndComp
$Comp
L C C48
U 1 1 58B42C50
P 5950 1250
F 0 "C48" H 5975 1350 50  0000 L CNN
F 1 "1uF" H 5975 1150 50  0000 L CNN
F 2 "adc_lib:C0603" H 5988 1100 50  0001 C CNN
F 3 "" H 5950 1250 50  0000 C CNN
	1    5950 1250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58B42CBF
P 6250 1050
F 0 "R3" V 6330 1050 50  0000 C CNN
F 1 "10k" V 6250 1050 50  0000 C CNN
F 2 "adc_lib:R0603" V 6180 1050 50  0001 C CNN
F 3 "" H 6250 1050 50  0000 C CNN
	1    6250 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 58B42E0C
P 7250 1750
F 0 "#PWR061" H 7250 1500 50  0001 C CNN
F 1 "GND" H 7250 1600 50  0000 C CNN
F 2 "" H 7250 1750 50  0000 C CNN
F 3 "" H 7250 1750 50  0000 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
$Comp
L C C49
U 1 1 58B42FBD
P 7600 1400
F 0 "C49" H 7625 1500 50  0000 L CNN
F 1 "1uF" H 7625 1300 50  0000 L CNN
F 2 "adc_lib:C0603" H 7638 1250 50  0001 C CNN
F 3 "" H 7600 1400 50  0000 C CNN
	1    7600 1400
	1    0    0    -1  
$EndComp
$Comp
L L L10
U 1 1 58B43AAD
P 7900 1150
F 0 "L10" V 7850 1150 50  0000 C CNN
F 1 "L" V 7975 1150 50  0000 C CNN
F 2 "adc_lib:FB0805" H 7900 1150 50  0001 C CNN
F 3 "" H 7900 1150 50  0000 C CNN
	1    7900 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3800 6450 3800
Wire Wire Line
	6450 3800 6450 3750
Wire Wire Line
	6450 3750 6750 3750
Wire Wire Line
	6250 3900 6450 3900
Wire Wire Line
	6450 3900 6450 4000
Wire Wire Line
	6450 4000 6750 4000
Wire Wire Line
	7050 4000 7600 4000
Wire Wire Line
	7600 4000 7600 3750
Wire Wire Line
	7600 3750 7850 3750
Wire Wire Line
	7450 3750 7450 3900
Wire Wire Line
	7450 3900 7850 3900
Wire Wire Line
	7500 4300 7500 3900
Connection ~ 7500 3900
Wire Wire Line
	7300 4600 7950 4600
Wire Wire Line
	7850 3650 7700 3650
Wire Wire Line
	7700 3650 7700 4600
Connection ~ 7500 4600
Wire Wire Line
	6250 3600 6600 3600
Wire Wire Line
	7950 4300 8300 4300
Connection ~ 7700 4600
Wire Wire Line
	3700 4950 6500 4950
Connection ~ 5400 4950
Wire Wire Line
	5650 4950 5650 5100
Wire Wire Line
	4650 4400 3900 4400
Wire Wire Line
	3900 4400 3900 4500
Wire Wire Line
	3900 4800 3900 4950
Connection ~ 5300 4950
Wire Wire Line
	5050 1750 5600 1750
Wire Wire Line
	5500 1750 5500 2450
Wire Wire Line
	5600 1750 5600 2450
Wire Wire Line
	6800 2800 7050 2800
Wire Wire Line
	6800 2500 7050 2500
Wire Wire Line
	7450 2800 7700 2800
Wire Wire Line
	7450 2500 7700 2500
Wire Wire Line
	8050 2800 8300 2800
Wire Wire Line
	8050 2500 8300 2500
Wire Wire Line
	8650 2800 8900 2800
Wire Wire Line
	8650 2500 8900 2500
Wire Wire Line
	8650 1150 8650 2500
Wire Wire Line
	5600 2250 8050 2250
Wire Wire Line
	8050 2250 8050 2500
Wire Wire Line
	5500 2300 7450 2300
Wire Wire Line
	7450 2300 7450 2500
Wire Wire Line
	5400 2350 6800 2350
Wire Wire Line
	6800 2350 6800 2500
Wire Wire Line
	4650 4000 3700 4000
Wire Wire Line
	3700 4000 3700 4500
Wire Wire Line
	3700 4800 3700 4950
Connection ~ 3900 4950
Wire Wire Line
	6250 4300 6500 4300
Wire Wire Line
	6500 4300 6500 4400
Wire Wire Line
	6500 4950 6500 4700
Connection ~ 5650 4950
Wire Wire Line
	3050 4100 4650 4100
Wire Wire Line
	3050 4200 4650 4200
Wire Wire Line
	4750 1750 3550 1750
Wire Wire Line
	3550 1750 3550 3450
Wire Wire Line
	3550 3750 3550 4100
Connection ~ 3550 4100
Wire Wire Line
	3550 3350 3350 3350
Wire Wire Line
	3350 3350 3350 3450
Connection ~ 3550 3350
Wire Wire Line
	3350 3750 3350 4200
Connection ~ 3350 4200
Wire Wire Line
	5700 2450 5700 2200
Wire Wire Line
	5700 2200 8650 2200
Connection ~ 8650 2200
Wire Wire Line
	5400 1750 5400 2450
Connection ~ 5600 2250
Connection ~ 5500 1750
Connection ~ 5500 2300
Connection ~ 5400 1750
Connection ~ 5400 2350
Wire Wire Line
	7300 4300 7300 4000
Wire Wire Line
	7050 3750 7450 3750
Connection ~ 7300 4000
Wire Wire Line
	5950 750  6400 750 
Wire Wire Line
	6250 1350 6400 1350
Wire Wire Line
	5950 1650 7600 1650
Connection ~ 7250 1650
Wire Wire Line
	7250 1350 7250 1750
Wire Wire Line
	7250 1150 7750 1150
Wire Wire Line
	6400 1250 6350 1250
Wire Wire Line
	6350 1250 6350 1650
Connection ~ 6350 1650
Wire Wire Line
	6400 750  6400 1150
Connection ~ 6250 750 
Wire Wire Line
	7600 1150 7600 1250
Wire Wire Line
	7600 1650 7600 1550
Connection ~ 7600 1150
Wire Wire Line
	8050 1150 8650 1150
Wire Wire Line
	5950 1400 5950 1650
Wire Wire Line
	5950 1100 5950 750 
Wire Wire Line
	6250 750  6250 900 
Wire Wire Line
	6250 1350 6250 1200
Text Label 8350 1150 0    60   ~ 0
VDDC
Text Notes 7300 1100 0    60   ~ 0
+3V
Connection ~ 5850 4950
$EndSCHEMATC
