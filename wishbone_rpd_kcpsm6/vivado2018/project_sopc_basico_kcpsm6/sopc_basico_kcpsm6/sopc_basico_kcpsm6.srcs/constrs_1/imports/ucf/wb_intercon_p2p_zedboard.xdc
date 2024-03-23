
# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN T22 [get_ports {LD0}];  # "LD0"
#set_property PACKAGE_PIN T21 [get_ports {LD1}];  # "LD1"
#set_property PACKAGE_PIN U22 [get_ports {LD2}];  # "LD2"
#set_property PACKAGE_PIN U21 [get_ports {LD3}];  # "LD3"
#set_property PACKAGE_PIN V22 [get_ports {LD4}];  # "LD4"
#set_property PACKAGE_PIN W22 [get_ports {LD5}];  # "LD5"
#set_property PACKAGE_PIN U19 [get_ports {LD6}];  # "LD6"
#set_property PACKAGE_PIN U14 [get_ports {LD7}];  # "LD7"

set_property PACKAGE_PIN T22 [get_ports {PIN_LED_TEST[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_LED_TEST[0]}]


set_property PACKAGE_PIN T21 [get_ports {PIN_LED_TEST[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_LED_TEST[1]}]

set_property PACKAGE_PIN U22 [get_ports {PIN_LED_TEST[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_LED_TEST[2]}]


set_property PACKAGE_PIN U21 [get_ports {PIN_LED_TEST[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_LED_TEST[3]}]

set_property PACKAGE_PIN V22 [get_ports {PIN_LED_TEST[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_LED_TEST[4]}]

set_property PACKAGE_PIN W22 [get_ports {PIN_LED_TEST[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_LED_TEST[5]}]

set_property PACKAGE_PIN U19 [get_ports {PIN_LED_TEST[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_LED_TEST[6]}]

set_property PACKAGE_PIN U14 [get_ports {PIN_LED_TEST[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_LED_TEST[7]}]


# For Programable Clock Source zedboard
set_property PACKAGE_PIN Y9 [get_ports PIN_CLOCK_100]
set_property IOSTANDARD LVCMOS33 [get_ports PIN_CLOCK_100]

#-----------------------------------
# push buttons LOCs
#-----------------------------------
#
#set_property PACKAGE_PIN P16 [get_ports {BTNC}];  # "BTNC"
set_property PACKAGE_PIN P16 [get_ports PIN_RESET]
set_property IOSTANDARD LVCMOS18 [get_ports PIN_RESET]

# ----------------------------------------------------------------------------
# JA Pmod - Bank 13
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN Y11  [get_ports {JA1}];  # "JA1"
#set_property PACKAGE_PIN AA8  [get_ports {JA10}];  # "JA10"
#set_property PACKAGE_PIN AA11 [get_ports {JA2}];  # "JA2"
#set_property PACKAGE_PIN Y10  [get_ports {JA3}];  # "JA3"
#set_property PACKAGE_PIN AA9  [get_ports {JA4}];  # "JA4"
#set_property PACKAGE_PIN AB11 [get_ports {JA7}];  # "JA7"
#set_property PACKAGE_PIN AB10 [get_ports {JA8}];  # "JA8"
#set_property PACKAGE_PIN AB9  [get_ports {JA9}];  # "JA9"

set_property PACKAGE_PIN Y10 [get_ports PIN_RX]
set_property IOSTANDARD LVCMOS33 [get_ports PIN_RX]

set_property PACKAGE_PIN AA11 [get_ports PIN_TX]
set_property IOSTANDARD LVCMOS33 [get_ports PIN_TX]

# DUMMY -- MAINTAIN COMPATIBILITY
# LCD_E

# ----------------------------------------------------------------------------
# JB Pmod - Bank 13
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN W12 [get_ports {JB1}];  # "JB1"
#set_property PACKAGE_PIN W11 [get_ports {JB2}];  # "JB2"
#set_property PACKAGE_PIN V10 [get_ports {JB3}];  # "JB3"
#set_property PACKAGE_PIN W8 [get_ports {JB4}];  # "JB4"
#set_property PACKAGE_PIN V12 [get_ports {JB7}];  # "JB7"
#set_property PACKAGE_PIN W10 [get_ports {JB8}];  # "JB8"
#set_property PACKAGE_PIN V9 [get_ports {JB9}];  # "JB9"
#set_property PACKAGE_PIN V8 [get_ports {JB10}];  # "JB10"

set_property PACKAGE_PIN W12 [get_ports ENABLE0]
set_property IOSTANDARD LVCMOS33 [get_ports ENABLE0]

set_property PACKAGE_PIN W11 [get_ports ENABLE1]
set_property IOSTANDARD LVCMOS33 [get_ports ENABLE1]

set_property PACKAGE_PIN V10 [get_ports ENABLE2]
set_property IOSTANDARD LVCMOS33 [get_ports ENABLE2]

set_property PACKAGE_PIN W8 [get_ports ENABLE3]
set_property IOSTANDARD LVCMOS33 [get_ports ENABLE3]

# ----------------------------------------------------------------------------
# JC Pmod - Bank 13
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN AB6 [get_ports {JC1_N}];  # "JC1_N"
#set_property PACKAGE_PIN AB7 [get_ports {JC1_P}];  # "JC1_P"
#set_property PACKAGE_PIN AA4 [get_ports {JC2_N}];  # "JC2_N"
#set_property PACKAGE_PIN Y4  [get_ports {JC2_P}];  # "JC2_P"
#set_property PACKAGE_PIN T6  [get_ports {JC3_N}];  # "JC3_N"
#set_property PACKAGE_PIN R6  [get_ports {JC3_P}];  # "JC3_P"
#set_property PACKAGE_PIN U4  [get_ports {JC4_N}];  # "JC4_N"
#set_property PACKAGE_PIN T4  [get_ports {JC4_P}];  # "JC4_P"

# ----------------------------------------------------------------------------
set_property PACKAGE_PIN AB6 [get_ports {PIN_DATA[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_DATA[0]}]

set_property PACKAGE_PIN AB7 [get_ports {PIN_DATA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_DATA[1]}]

set_property PACKAGE_PIN AA4 [get_ports {PIN_DATA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_DATA[2]}]

set_property PACKAGE_PIN Y4 [get_ports {PIN_DATA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_DATA[3]}]

set_property PACKAGE_PIN T6 [get_ports {PIN_DATA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_DATA[4]}]

set_property PACKAGE_PIN R6 [get_ports {PIN_DATA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_DATA[5]}]

set_property PACKAGE_PIN U4 [get_ports {PIN_DATA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_DATA[6]}]

set_property PACKAGE_PIN T4 [get_ports {PIN_DATA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PIN_DATA[7]}]

create_clock -period 10.000 -name PIN_CLOCK_100 -waveform {0.000 5.000} [get_ports PIN_CLOCK_100]
