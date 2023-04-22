###################################################################

# Created by write_sdc on Sat Apr 22 12:03:15 2023

###################################################################
set sdc_version 2.0

create_clock [get_ports CLK]  -name M_CLK  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks M_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks M_CLK]
set_clock_transition -min -fall 0.05 [get_clocks M_CLK]
set_clock_transition -max -fall 0.05 [get_clocks M_CLK]
set_clock_transition -min -rise 0.05 [get_clocks M_CLK]
set_clock_transition -max -rise 0.05 [get_clocks M_CLK]
