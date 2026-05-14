## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
 set_property PACKAGE_PIN W5 [get_ports clk]							
	 set_property IOSTANDARD LVCMOS33 [get_ports clk]
	 create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
 set_property PACKAGE_PIN V17 [get_ports {data_in[0]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_in[0]}]
 set_property PACKAGE_PIN V16 [get_ports {data_in[1]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_in[1]}]
 set_property PACKAGE_PIN W16 [get_ports {data_in[2]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_in[2]}]
 set_property PACKAGE_PIN W17 [get_ports {data_in[3]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_in[3]}]
 set_property PACKAGE_PIN W15 [get_ports {data_in[4]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_in[4]}]
 set_property PACKAGE_PIN V15 [get_ports {data_in[5]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_in[5]}]
 set_property PACKAGE_PIN W14 [get_ports {data_in[6]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_in[6]}]
 set_property PACKAGE_PIN W13 [get_ports {data_in[7]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_in[7]}]
 set_property PACKAGE_PIN V2 [get_ports {rst}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {rst}]
# set_property PACKAGE_PIN T3 [get_ports {case_switch}]					
#	 set_property IOSTANDARD LVCMOS33 [get_ports {case_switch}]
 set_property PACKAGE_PIN T2 [get_ports {uart_case_switch}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {uart_case_switch}]
 set_property PACKAGE_PIN R3 [get_ports {add_value[0]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {add_value[0]}]
 set_property PACKAGE_PIN W2 [get_ports {add_value[1]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {add_value[1]}]
 set_property PACKAGE_PIN U1 [get_ports {add_value[2]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {add_value[2]}]
 set_property PACKAGE_PIN T1 [get_ports {add_value[3]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {add_value[3]}]
# set_property PACKAGE_PIN R2 [get_ports {sw[15]}]					
	# set_property IOSTANDARD LVCMOS33 [get_ports {sw[15]}]
 

## LEDs
 set_property PACKAGE_PIN U16 [get_ports {data_out[0]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_out[0]}]
 set_property PACKAGE_PIN E19 [get_ports {data_out[1]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_out[1]}]
 set_property PACKAGE_PIN U19 [get_ports {data_out[2]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_out[2]}]
 set_property PACKAGE_PIN V19 [get_ports {data_out[3]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_out[3]}]
 set_property PACKAGE_PIN W18 [get_ports {data_out[4]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_out[4]}]
 set_property PACKAGE_PIN U15 [get_ports {data_out[5]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_out[5]}]
 set_property PACKAGE_PIN U14 [get_ports {data_out[6]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_out[6]}]
 set_property PACKAGE_PIN V14 [get_ports {data_out[7]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {data_out[7]}]
 set_property PACKAGE_PIN V13 [get_ports {busy}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {busy}]
 set_property PACKAGE_PIN V3 [get_ports {rx_done}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {rx_done}]

	
##7 segment display
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

# set_property PACKAGE_PIN V7 [get_ports dp]							
#	 set_property IOSTANDARD LVCMOS33 [get_ports dp]

 set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
 set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
 set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
 set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	 set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]


##Buttons
 set_property PACKAGE_PIN U18 [get_ports tx_start]						
	 set_property IOSTANDARD LVCMOS33 [get_ports tx_start]

##USB-RS232 Interface
set_property PACKAGE_PIN B18 [get_ports rx_wire]						
	set_property IOSTANDARD LVCMOS33 [get_ports rx_wire]
set_property PACKAGE_PIN A18 [get_ports tx_wire]						
	set_property IOSTANDARD LVCMOS33 [get_ports tx_wire]

