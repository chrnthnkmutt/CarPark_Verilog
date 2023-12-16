## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property PACKAGE_PIN W5 [get_ports clock]							
	set_property IOSTANDARD LVCMOS33 [get_ports clock]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clock]
 
# Switches
set_property PACKAGE_PIN V17 [get_ports {slot[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {slot[0]}]
set_property PACKAGE_PIN V16 [get_ports {slot[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {slot[1]}]
set_property PACKAGE_PIN W16 [get_ports {slot[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {slot[2]}]
set_property PACKAGE_PIN W17 [get_ports {slot[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {slot[3]}]
set_property PACKAGE_PIN W15 [get_ports {slot[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {slot[4]}]
	
set_property PACKAGE_PIN W14 [get_ports slot2[0]]					
	set_property IOSTANDARD LVCMOS33 [get_ports slot2[0]]
set_property PACKAGE_PIN W13 [get_ports slot2[1]]					
	set_property IOSTANDARD LVCMOS33 [get_ports slot2[1]]
set_property PACKAGE_PIN V2 [get_ports slot2[2]]					
	set_property IOSTANDARD LVCMOS33 [get_ports slot2[2]]
set_property PACKAGE_PIN T3 [get_ports slot2[3]]					
	set_property IOSTANDARD LVCMOS33 [get_ports slot2[3]]
set_property PACKAGE_PIN T2 [get_ports slot2[4]]					
	set_property IOSTANDARD LVCMOS33 [get_ports slot2[4]]	
	
	
set_property PACKAGE_PIN R2 [get_ports floor]					
	set_property IOSTANDARD LVCMOS33 [get_ports floor]
 

# LEDs
set_property PACKAGE_PIN U16 [get_ports {available[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {available[0]}]
set_property PACKAGE_PIN E19 [get_ports {available[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {available[1]}]
set_property PACKAGE_PIN U19 [get_ports {available[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {available[2]}]
set_property PACKAGE_PIN V19 [get_ports {available[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {available[3]}]
set_property PACKAGE_PIN W18 [get_ports {available[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {available[4]}]
	
set_property PACKAGE_PIN U14 [get_ports availablex[0]]					
	set_property IOSTANDARD LVCMOS33 [get_ports availablex[0]]
set_property PACKAGE_PIN V14 [get_ports availablex[1]]					
	set_property IOSTANDARD LVCMOS33 [get_ports availablex[1]]
set_property PACKAGE_PIN V13 [get_ports availablex[2]]					
	set_property IOSTANDARD LVCMOS33 [get_ports availablex[2]]
set_property PACKAGE_PIN V3 [get_ports availablex[3]]					
	set_property IOSTANDARD LVCMOS33 [get_ports availablex[3]]
set_property PACKAGE_PIN W3 [get_ports availablex[4]]					
	set_property IOSTANDARD LVCMOS33 [get_ports availablex[4]]

set_property PACKAGE_PIN L1 [get_ports led_floor]					
	set_property IOSTANDARD LVCMOS33 [get_ports led_floor]
	
	
#7 segment display
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
