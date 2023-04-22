###################################################################

# Created by write_sdc on Sat Apr 22 12:12:17 2023

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {srcRegA[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {srcRegA[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {srcRegA[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {destReg[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {destReg[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {destReg[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[31]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[30]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[29]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[28]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[27]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[26]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[25]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[24]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[23]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[22]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[21]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[20]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[19]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[18]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[17]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[16]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[15]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[14]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[13]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[12]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[11]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[10]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[9]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[8]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[7]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[6]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[5]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[4]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {writeData[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports regWrite]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {srcRegB[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {srcRegB[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {srcRegB[0]}]
set_load -pin_load 0.5 [get_ports {outBusA[31]}]
set_load -pin_load 0.5 [get_ports {outBusA[30]}]
set_load -pin_load 0.5 [get_ports {outBusA[29]}]
set_load -pin_load 0.5 [get_ports {outBusA[28]}]
set_load -pin_load 0.5 [get_ports {outBusA[27]}]
set_load -pin_load 0.5 [get_ports {outBusA[26]}]
set_load -pin_load 0.5 [get_ports {outBusA[25]}]
set_load -pin_load 0.5 [get_ports {outBusA[24]}]
set_load -pin_load 0.5 [get_ports {outBusA[23]}]
set_load -pin_load 0.5 [get_ports {outBusA[22]}]
set_load -pin_load 0.5 [get_ports {outBusA[21]}]
set_load -pin_load 0.5 [get_ports {outBusA[20]}]
set_load -pin_load 0.5 [get_ports {outBusA[19]}]
set_load -pin_load 0.5 [get_ports {outBusA[18]}]
set_load -pin_load 0.5 [get_ports {outBusA[17]}]
set_load -pin_load 0.5 [get_ports {outBusA[16]}]
set_load -pin_load 0.5 [get_ports {outBusA[15]}]
set_load -pin_load 0.5 [get_ports {outBusA[14]}]
set_load -pin_load 0.5 [get_ports {outBusA[13]}]
set_load -pin_load 0.5 [get_ports {outBusA[12]}]
set_load -pin_load 0.5 [get_ports {outBusA[11]}]
set_load -pin_load 0.5 [get_ports {outBusA[10]}]
set_load -pin_load 0.5 [get_ports {outBusA[9]}]
set_load -pin_load 0.5 [get_ports {outBusA[8]}]
set_load -pin_load 0.5 [get_ports {outBusA[7]}]
set_load -pin_load 0.5 [get_ports {outBusA[6]}]
set_load -pin_load 0.5 [get_ports {outBusA[5]}]
set_load -pin_load 0.5 [get_ports {outBusA[4]}]
set_load -pin_load 0.5 [get_ports {outBusA[3]}]
set_load -pin_load 0.5 [get_ports {outBusA[2]}]
set_load -pin_load 0.5 [get_ports {outBusA[1]}]
set_load -pin_load 0.5 [get_ports {outBusA[0]}]
set_load -pin_load 0.5 [get_ports {outBusB[31]}]
set_load -pin_load 0.5 [get_ports {outBusB[30]}]
set_load -pin_load 0.5 [get_ports {outBusB[29]}]
set_load -pin_load 0.5 [get_ports {outBusB[28]}]
set_load -pin_load 0.5 [get_ports {outBusB[27]}]
set_load -pin_load 0.5 [get_ports {outBusB[26]}]
set_load -pin_load 0.5 [get_ports {outBusB[25]}]
set_load -pin_load 0.5 [get_ports {outBusB[24]}]
set_load -pin_load 0.5 [get_ports {outBusB[23]}]
set_load -pin_load 0.5 [get_ports {outBusB[22]}]
set_load -pin_load 0.5 [get_ports {outBusB[21]}]
set_load -pin_load 0.5 [get_ports {outBusB[20]}]
set_load -pin_load 0.5 [get_ports {outBusB[19]}]
set_load -pin_load 0.5 [get_ports {outBusB[18]}]
set_load -pin_load 0.5 [get_ports {outBusB[17]}]
set_load -pin_load 0.5 [get_ports {outBusB[16]}]
set_load -pin_load 0.5 [get_ports {outBusB[15]}]
set_load -pin_load 0.5 [get_ports {outBusB[14]}]
set_load -pin_load 0.5 [get_ports {outBusB[13]}]
set_load -pin_load 0.5 [get_ports {outBusB[12]}]
set_load -pin_load 0.5 [get_ports {outBusB[11]}]
set_load -pin_load 0.5 [get_ports {outBusB[10]}]
set_load -pin_load 0.5 [get_ports {outBusB[9]}]
set_load -pin_load 0.5 [get_ports {outBusB[8]}]
set_load -pin_load 0.5 [get_ports {outBusB[7]}]
set_load -pin_load 0.5 [get_ports {outBusB[6]}]
set_load -pin_load 0.5 [get_ports {outBusB[5]}]
set_load -pin_load 0.5 [get_ports {outBusB[4]}]
set_load -pin_load 0.5 [get_ports {outBusB[3]}]
set_load -pin_load 0.5 [get_ports {outBusB[2]}]
set_load -pin_load 0.5 [get_ports {outBusB[1]}]
set_load -pin_load 0.5 [get_ports {outBusB[0]}]
create_clock [get_ports CLK]  -name M_CLK  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks M_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks M_CLK]
set_clock_transition -max -rise 0.05 [get_clocks M_CLK]
set_clock_transition -min -rise 0.05 [get_clocks M_CLK]
set_clock_transition -max -fall 0.05 [get_clocks M_CLK]
set_clock_transition -min -fall 0.05 [get_clocks M_CLK]
set_input_delay -clock M_CLK  4  [get_ports {srcRegA[2]}]
set_input_delay -clock M_CLK  4  [get_ports {srcRegA[1]}]
set_input_delay -clock M_CLK  4  [get_ports {srcRegA[0]}]
set_input_delay -clock M_CLK  4  [get_ports {destReg[2]}]
set_input_delay -clock M_CLK  4  [get_ports {destReg[1]}]
set_input_delay -clock M_CLK  4  [get_ports {destReg[0]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[31]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[30]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[29]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[28]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[27]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[26]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[25]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[24]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[23]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[22]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[21]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[20]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[19]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[18]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[17]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[16]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[15]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[14]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[13]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[12]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[11]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[10]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[9]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[8]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[7]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[6]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[5]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[4]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[3]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[2]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[1]}]
set_input_delay -clock M_CLK  4  [get_ports {writeData[0]}]
set_input_delay -clock M_CLK  4  [get_ports regWrite]
set_input_delay -clock M_CLK  4  [get_ports {srcRegB[2]}]
set_input_delay -clock M_CLK  4  [get_ports {srcRegB[1]}]
set_input_delay -clock M_CLK  4  [get_ports {srcRegB[0]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[31]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[30]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[29]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[28]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[27]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[26]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[25]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[24]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[23]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[22]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[21]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[20]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[19]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[18]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[17]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[16]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[15]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[14]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[13]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[12]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[11]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[10]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[9]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[8]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[7]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[6]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[5]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[4]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[3]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[2]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[1]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusA[0]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[31]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[30]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[29]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[28]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[27]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[26]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[25]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[24]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[23]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[22]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[21]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[20]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[19]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[18]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[17]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[16]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[15]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[14]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[13]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[12]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[11]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[10]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[9]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[8]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[7]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[6]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[5]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[4]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[3]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[2]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[1]}]
set_output_delay -clock M_CLK  4  [get_ports {outBusB[0]}]
