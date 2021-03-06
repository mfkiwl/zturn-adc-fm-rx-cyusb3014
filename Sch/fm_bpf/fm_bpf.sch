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
LIBS:fm_bpf-cache
EELAYER 25 0
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
L +5V #PWR01
U 1 1 59784960
P 1900 4250
F 0 "#PWR01" H 1900 4100 50  0001 C CNN
F 1 "+5V" H 1900 4390 50  0000 C CNN
F 2 "" H 1900 4250 50  0000 C CNN
F 3 "" H 1900 4250 50  0000 C CNN
	1    1900 4250
	1    0    0    -1  
$EndComp
$Comp
L LP5907_SOT-23 U1
U 1 1 59784B61
P 2900 1600
F 0 "U1" H 2900 1300 60  0000 C CNN
F 1 "LP5907_SOT-23" H 2900 1900 60  0000 C CNN
F 2 "adc_lib:LP5907" H 2900 1300 60  0001 C CNN
F 3 "" H 2900 1300 60  0001 C CNN
	1    2900 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59784C9E
P 1600 3250
F 0 "#PWR02" H 1600 3000 50  0001 C CNN
F 1 "GND" H 1600 3100 50  0000 C CNN
F 2 "" H 1600 3250 50  0000 C CNN
F 3 "" H 1600 3250 50  0000 C CNN
	1    1600 3250
	1    0    0    -1  
$EndComp
Text Notes 2850 1200 0    60   ~ 0
250mA Vo=3.8V (LP5907QMFX-3.8Q1)
$Comp
L C C1
U 1 1 5979F339
P 2050 1850
F 0 "C1" H 2075 1950 50  0000 L CNN
F 1 "1u" H 2075 1750 50  0000 L CNN
F 2 "adc_lib:C0603" H 2088 1700 50  0001 C CNN
F 3 "" H 2050 1850 50  0000 C CNN
	1    2050 1850
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5979F374
P 3600 1850
F 0 "C4" H 3625 1950 50  0000 L CNN
F 1 "1u" H 3625 1750 50  0000 L CNN
F 2 "adc_lib:C0603" H 3638 1700 50  0001 C CNN
F 3 "" H 3600 1850 50  0000 C CNN
	1    3600 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5979F3B6
P 2400 2100
F 0 "#PWR03" H 2400 1850 50  0001 C CNN
F 1 "GND" H 2400 1950 50  0000 C CNN
F 2 "" H 2400 2100 50  0000 C CNN
F 3 "" H 2400 2100 50  0000 C CNN
	1    2400 2100
	1    0    0    -1  
$EndComp
NoConn ~ 3350 1700
$Comp
L +5V #PWR04
U 1 1 5979F65E
P 2050 1350
F 0 "#PWR04" H 2050 1200 50  0001 C CNN
F 1 "+5V" H 2050 1490 50  0000 C CNN
F 2 "" H 2050 1350 50  0000 C CNN
F 3 "" H 2050 1350 50  0000 C CNN
	1    2050 1350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5979F787
P 4550 1500
F 0 "R1" V 4630 1500 50  0000 C CNN
F 1 "680" V 4550 1500 50  0000 C CNN
F 2 "adc_lib:R0603" V 4480 1500 50  0001 C CNN
F 3 "" H 4550 1500 50  0000 C CNN
	1    4550 1500
	0    1    1    0   
$EndComp
$Comp
L L L3
U 1 1 5979F7CE
P 4550 1750
F 0 "L3" V 4500 1750 50  0000 C CNN
F 1 "8.2u" V 4625 1750 50  0000 C CNN
F 2 "adc_lib:L1008" H 4550 1750 50  0001 C CNN
F 3 "" H 4550 1750 50  0000 C CNN
	1    4550 1750
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 5979F81A
P 4200 1900
F 0 "C6" H 4225 2000 50  0000 L CNN
F 1 "0.1u" H 4225 1800 50  0000 L CNN
F 2 "adc_lib:C0603" H 4238 1750 50  0001 C CNN
F 3 "" H 4200 1900 50  0000 C CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5979F98F
P 4200 2050
F 0 "#PWR05" H 4200 1800 50  0001 C CNN
F 1 "GND" H 4200 1900 50  0000 C CNN
F 2 "" H 4200 2050 50  0000 C CNN
F 3 "" H 4200 2050 50  0000 C CNN
	1    4200 2050
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5979FA8B
P 5200 1900
F 0 "C8" H 5225 2000 50  0000 L CNN
F 1 "0.1u" H 5225 1800 50  0000 L CNN
F 2 "adc_lib:C0603" H 5238 1750 50  0001 C CNN
F 3 "" H 5200 1900 50  0000 C CNN
	1    5200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5979FA91
P 5200 2050
F 0 "#PWR06" H 5200 1800 50  0001 C CNN
F 1 "GND" H 5200 1900 50  0000 C CNN
F 2 "" H 5200 2050 50  0000 C CNN
F 3 "" H 5200 2050 50  0000 C CNN
	1    5200 2050
	1    0    0    -1  
$EndComp
$Comp
L L L4
U 1 1 5979FAC0
P 5500 1500
F 0 "L4" V 5450 1500 50  0000 C CNN
F 1 "3.3u" V 5575 1500 50  0000 C CNN
F 2 "adc_lib:L0603" H 5500 1500 50  0001 C CNN
F 3 "" H 5500 1500 50  0000 C CNN
	1    5500 1500
	0    1    1    0   
$EndComp
$Comp
L PSA4-5043+ U2
U 1 1 5979FFAD
P 5300 2900
F 0 "U2" H 5600 2600 60  0000 C CNN
F 1 "PSA4-5043+" H 5150 3150 60  0000 C CNN
F 2 "adc_lib:MMM1362" H 5150 3150 60  0001 C CNN
F 3 "" H 5150 3150 60  0001 C CNN
	1    5300 2900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 597A0121
P 4600 3250
F 0 "#PWR07" H 4600 3000 50  0001 C CNN
F 1 "GND" H 4600 3100 50  0000 C CNN
F 2 "" H 4600 3250 50  0000 C CNN
F 3 "" H 4600 3250 50  0000 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2650 1600 3250
Wire Wire Line
	2500 1600 2400 1600
Wire Wire Line
	2400 1600 2400 2100
Wire Wire Line
	2050 2000 3600 2000
Connection ~ 2400 2000
Wire Wire Line
	3350 1500 4400 1500
Wire Wire Line
	3600 1500 3600 1700
Wire Wire Line
	2050 1350 2050 1700
Wire Wire Line
	2050 1500 2500 1500
Connection ~ 3600 1500
Wire Wire Line
	4200 1500 4200 1750
Connection ~ 4200 1500
Wire Wire Line
	4200 1750 4400 1750
Wire Wire Line
	4700 1750 4900 1750
Wire Wire Line
	4900 1750 4900 1500
Wire Wire Line
	4700 1500 5350 1500
Connection ~ 4900 1500
Wire Wire Line
	5200 1500 5200 1750
Connection ~ 5200 1500
Wire Wire Line
	5650 1500 6050 1500
Wire Wire Line
	4700 3000 4600 3000
Wire Wire Line
	4600 3000 4600 3250
Wire Wire Line
	5950 2800 6200 2800
Wire Wire Line
	6200 2800 6200 3250
Wire Wire Line
	6200 3250 4600 3250
Wire Wire Line
	6050 1500 6050 3000
Wire Wire Line
	5950 3000 6550 3000
$Comp
L C C2
U 1 1 597A03A5
P 2750 2950
F 0 "C2" H 2775 3050 50  0000 L CNN
F 1 "27p" H 2775 2850 50  0000 L CNN
F 2 "adc_lib:C0603" H 2788 2800 50  0001 C CNN
F 3 "" H 2750 2950 50  0000 C CNN
	1    2750 2950
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 597A0430
P 3100 2800
F 0 "C3" H 3125 2900 50  0000 L CNN
F 1 "12p" H 3125 2700 50  0000 L CNN
F 2 "adc_lib:C0603" H 3138 2650 50  0001 C CNN
F 3 "" H 3100 2800 50  0000 C CNN
	1    3100 2800
	0    1    1    0   
$EndComp
$Comp
L L L1
U 1 1 597A04AF
P 3400 2800
F 0 "L1" V 3350 2800 50  0000 C CNN
F 1 "330n" V 3475 2800 50  0000 C CNN
F 2 "adc_lib:L0603" H 3400 2800 50  0001 C CNN
F 3 "" H 3400 2800 50  0000 C CNN
	1    3400 2800
	0    1    1    0   
$EndComp
$Comp
L L L2
U 1 1 597A04F6
P 3650 2950
F 0 "L2" V 3600 2950 50  0000 C CNN
F 1 "27n" V 3725 2950 50  0000 C CNN
F 2 "adc_lib:L0603" H 3650 2950 50  0001 C CNN
F 3 "" H 3650 2950 50  0000 C CNN
	1    3650 2950
	-1   0    0    1   
$EndComp
$Comp
L C C5
U 1 1 597A0623
P 3950 2950
F 0 "C5" H 3975 3050 50  0000 L CNN
F 1 "130p" H 3975 2850 50  0000 L CNN
F 2 "adc_lib:C0603" H 3988 2800 50  0001 C CNN
F 3 "" H 3950 2950 50  0000 C CNN
	1    3950 2950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 597A07B7
P 2750 3200
F 0 "#PWR08" H 2750 2950 50  0001 C CNN
F 1 "GND" H 2750 3050 50  0000 C CNN
F 2 "" H 2750 3200 50  0000 C CNN
F 3 "" H 2750 3200 50  0000 C CNN
	1    2750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2800 2950 2800
Connection ~ 2750 2800
Wire Wire Line
	2750 3100 2750 3200
Wire Wire Line
	3550 2800 4200 2800
Connection ~ 3650 2800
Wire Wire Line
	2750 3100 3950 3100
Connection ~ 3650 3100
$Comp
L C C7
U 1 1 597A0C19
P 4350 2800
F 0 "C7" H 4375 2900 50  0000 L CNN
F 1 "0.1u" H 4375 2700 50  0000 L CNN
F 2 "adc_lib:C0603" H 4388 2650 50  0001 C CNN
F 3 "" H 4350 2800 50  0000 C CNN
	1    4350 2800
	0    -1   -1   0   
$EndComp
Connection ~ 3950 2800
Wire Wire Line
	4500 2800 4700 2800
$Comp
L C C10
U 1 1 597A0FE1
P 6700 3000
F 0 "C10" H 6725 3100 50  0000 L CNN
F 1 "5p" H 6725 2900 50  0000 L CNN
F 2 "adc_lib:C0603" H 6738 2850 50  0001 C CNN
F 3 "" H 6700 3000 50  0000 C CNN
	1    6700 3000
	0    1    1    0   
$EndComp
$Comp
L C C9
U 1 1 597A1122
P 6700 2700
F 0 "C9" H 6725 2800 50  0000 L CNN
F 1 "9p" H 6725 2600 50  0000 L CNN
F 2 "adc_lib:C0603" H 6738 2550 50  0001 C CNN
F 3 "" H 6700 2700 50  0000 C CNN
	1    6700 2700
	0    1    1    0   
$EndComp
$Comp
L L L5
U 1 1 597A11DE
P 7000 3000
F 0 "L5" V 6950 3000 50  0000 C CNN
F 1 "560n" V 7075 3000 50  0000 C CNN
F 2 "adc_lib:L0603" H 7000 3000 50  0001 C CNN
F 3 "" H 7000 3000 50  0000 C CNN
	1    7000 3000
	0    1    1    0   
$EndComp
$Comp
L L L6
U 1 1 597A1239
P 7450 3150
F 0 "L6" V 7400 3150 50  0000 C CNN
F 1 "100n" V 7525 3150 50  0000 C CNN
F 2 "adc_lib:L0603" H 7450 3150 50  0001 C CNN
F 3 "" H 7450 3150 50  0000 C CNN
	1    7450 3150
	-1   0    0    1   
$EndComp
$Comp
L C C11
U 1 1 597A12FD
P 7450 3450
F 0 "C11" H 7475 3550 50  0000 L CNN
F 1 "68p" H 7475 3350 50  0000 L CNN
F 2 "adc_lib:C0603" H 7488 3300 50  0001 C CNN
F 3 "" H 7450 3450 50  0000 C CNN
	1    7450 3450
	-1   0    0    1   
$EndComp
$Comp
L C C12
U 1 1 597A1393
P 7800 3450
F 0 "C12" H 7825 3550 50  0000 L CNN
F 1 "100p" H 7825 3350 50  0000 L CNN
F 2 "adc_lib:C0603" H 7838 3300 50  0001 C CNN
F 3 "" H 7800 3450 50  0000 C CNN
	1    7800 3450
	-1   0    0    1   
$EndComp
$Comp
L L L7
U 1 1 597A13FF
P 8100 3000
F 0 "L7" V 8050 3000 50  0000 C CNN
F 1 "560n" V 8175 3000 50  0000 C CNN
F 2 "adc_lib:L0603" H 8100 3000 50  0001 C CNN
F 3 "" H 8100 3000 50  0000 C CNN
	1    8100 3000
	0    1    1    0   
$EndComp
$Comp
L C C13
U 1 1 597A148D
P 8400 2750
F 0 "C13" H 8425 2850 50  0000 L CNN
F 1 "5p" H 8425 2650 50  0000 L CNN
F 2 "adc_lib:C0603" H 8438 2600 50  0001 C CNN
F 3 "" H 8400 2750 50  0000 C CNN
	1    8400 2750
	0    1    1    0   
$EndComp
$Comp
L C C14
U 1 1 597A14DE
P 8400 3000
F 0 "C14" H 8425 3100 50  0000 L CNN
F 1 "5p" H 8425 2900 50  0000 L CNN
F 2 "adc_lib:C0603" H 8438 2850 50  0001 C CNN
F 3 "" H 8400 3000 50  0000 C CNN
	1    8400 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3000 7950 3000
Wire Wire Line
	6850 2700 7250 2700
Wire Wire Line
	7250 2700 7250 3000
Connection ~ 7250 3000
Connection ~ 7450 3000
Wire Wire Line
	7800 3000 7800 3300
Connection ~ 7800 3000
Wire Wire Line
	7450 3600 7450 3750
Wire Wire Line
	7450 3600 7800 3600
Wire Wire Line
	7900 3000 7900 2750
Wire Wire Line
	7900 2750 8250 2750
Connection ~ 7900 3000
Wire Wire Line
	8550 2750 8700 2750
Wire Wire Line
	8700 2750 8700 3000
Wire Wire Line
	8550 3000 9000 3000
Wire Wire Line
	6550 2700 6400 2700
Wire Wire Line
	6400 2700 6400 3000
$Comp
L GND #PWR09
U 1 1 597A19E1
P 7450 3750
F 0 "#PWR09" H 7450 3500 50  0001 C CNN
F 1 "GND" H 7450 3600 50  0000 C CNN
F 2 "" H 7450 3750 50  0000 C CNN
F 3 "" H 7450 3750 50  0000 C CNN
	1    7450 3750
	1    0    0    -1  
$EndComp
Connection ~ 6400 3000
Connection ~ 6050 3000
Connection ~ 8700 3000
$Comp
L GND #PWR010
U 1 1 597A2125
P 9900 3400
F 0 "#PWR010" H 9900 3150 50  0001 C CNN
F 1 "GND" H 9900 3250 50  0000 C CNN
F 2 "" H 9900 3400 50  0000 C CNN
F 3 "" H 9900 3400 50  0000 C CNN
	1    9900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2850 9900 3400
Wire Notes Line
	3950 1350 3950 2300
Wire Notes Line
	3950 2300 5800 2300
Wire Notes Line
	5800 2300 5800 1350
Wire Notes Line
	5800 1350 3950 1350
Text Notes 5350 1300 0    60   ~ 0
LPF (fc=200kHz)
Wire Notes Line
	2600 2650 2600 3450
Wire Notes Line
	2600 3450 4150 3450
Wire Notes Line
	4150 3450 4150 2650
Wire Notes Line
	4150 2650 2600 2650
Text Notes 3000 2600 0    60   ~ 0
BPF 72-96MHz
Text Notes 5200 2600 0    60   ~ 0
LNA Max 66mA
$Comp
L R R2
U 1 1 597B03B9
P 2350 1700
F 0 "R2" V 2430 1700 50  0000 C CNN
F 1 "10k" V 2350 1700 50  0000 C CNN
F 2 "adc_lib:R0603" V 2280 1700 50  0001 C CNN
F 3 "" H 2350 1700 50  0000 C CNN
	1    2350 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 1700 2200 1500
Connection ~ 2200 1500
Connection ~ 2050 1500
$Comp
L PWR_FLAG #FLG011
U 1 1 597B088B
P 1900 4400
F 0 "#FLG011" H 1900 4495 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 4580 50  0000 C CNN
F 2 "" H 1900 4400 50  0000 C CNN
F 3 "" H 1900 4400 50  0000 C CNN
	1    1900 4400
	0    1    1    0   
$EndComp
Text Notes 4500 2000 0    60   ~ 0
410mOhm
Text Notes 5400 1700 0    60   ~ 0
230mOhm
$Comp
L SMA_Edge CN1
U 1 1 597C80E9
P 2150 2800
F 0 "CN1" H 2200 3100 60  0000 C CNN
F 1 "SMA_Edge" H 2150 2500 60  0000 C CNN
F 2 "adc_lib:SMA_Edge" H 2150 2800 60  0001 C CNN
F 3 "" H 2150 2800 60  0001 C CNN
	1    2150 2800
	1    0    0    -1  
$EndComp
$Comp
L SMA_Edge CN2
U 1 1 597C8478
P 9400 3000
F 0 "CN2" H 9450 3300 60  0000 C CNN
F 1 "SMA_Edge" H 9400 2700 60  0000 C CNN
F 2 "adc_lib:SMA_Edge" H 9400 3000 60  0001 C CNN
F 3 "" H 9400 3000 60  0001 C CNN
	1    9400 3000
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P W2
U 1 1 597F2952
P 1600 4300
F 0 "W2" H 1600 4570 50  0000 C CNN
F 1 "TEST_1P" H 1600 4500 50  0000 C CNN
F 2 "adc_lib:68000-401HLF" H 1800 4300 50  0001 C CNN
F 3 "" H 1800 4300 50  0000 C CNN
	1    1600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4300 1600 4400
Wire Wire Line
	1600 4400 1900 4400
Wire Wire Line
	1900 4400 1900 4250
$Comp
L TEST_1P W1
U 1 1 597F2E3D
P 1150 4300
F 0 "W1" H 1150 4570 50  0000 C CNN
F 1 "TEST_1P" H 1150 4500 50  0000 C CNN
F 2 "adc_lib:68000-401HLF" H 1350 4300 50  0001 C CNN
F 3 "" H 1350 4300 50  0000 C CNN
	1    1150 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 597F2E81
P 1150 4300
F 0 "#PWR012" H 1150 4050 50  0001 C CNN
F 1 "GND" H 1150 4150 50  0000 C CNN
F 2 "" H 1150 4300 50  0000 C CNN
F 3 "" H 1150 4300 50  0000 C CNN
	1    1150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2650 1800 2650
Wire Wire Line
	1800 2750 1600 2750
Connection ~ 1600 2750
Wire Wire Line
	1800 2850 1600 2850
Connection ~ 1600 2850
Wire Wire Line
	1800 2950 1600 2950
Connection ~ 1600 2950
Wire Wire Line
	9750 2850 9900 2850
Wire Wire Line
	9750 2950 9900 2950
Connection ~ 9900 2950
Wire Wire Line
	9750 3050 9900 3050
Connection ~ 9900 3050
Wire Wire Line
	9750 3150 9900 3150
Connection ~ 9900 3150
$EndSCHEMATC
