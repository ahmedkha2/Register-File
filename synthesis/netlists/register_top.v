/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : K-2015.06
// Date      : Sat Apr 22 12:03:14 2023
/////////////////////////////////////////////////////////////


module DECODER ( destreg_i, destreg_o );
  input [2:0] destreg_i;
  output [7:0] destreg_o;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30;

  GTECH_AND2 C7 ( .A(N8), .B(N9), .Z(N11) );
  GTECH_AND2 C8 ( .A(N11), .B(N10), .Z(N12) );
  GTECH_OR2 C10 ( .A(destreg_i[2]), .B(destreg_i[1]), .Z(N13) );
  GTECH_OR2 C11 ( .A(N13), .B(N10), .Z(N14) );
  GTECH_OR2 C14 ( .A(destreg_i[2]), .B(N9), .Z(N16) );
  GTECH_OR2 C15 ( .A(N16), .B(destreg_i[0]), .Z(N17) );
  GTECH_OR2 C20 ( .A(N16), .B(N10), .Z(N19) );
  GTECH_OR2 C23 ( .A(N8), .B(destreg_i[1]), .Z(N21) );
  GTECH_OR2 C24 ( .A(N21), .B(destreg_i[0]), .Z(N22) );
  GTECH_OR2 C29 ( .A(N21), .B(N10), .Z(N24) );
  GTECH_OR2 C33 ( .A(N8), .B(N9), .Z(N26) );
  GTECH_OR2 C34 ( .A(N26), .B(destreg_i[0]), .Z(N27) );
  GTECH_AND2 C36 ( .A(destreg_i[2]), .B(destreg_i[1]), .Z(N29) );
  GTECH_AND2 C37 ( .A(N29), .B(destreg_i[0]), .Z(N30) );
  SELECT_OP C63 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0}), .DATA3({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0}), .DATA4({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b0}), .DATA5({1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0}), .DATA6({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA7({1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA8({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(N4), .CONTROL6(N5), 
        .CONTROL7(N6), .CONTROL8(N7), .Z(destreg_o) );
  GTECH_BUF B_0 ( .A(N12), .Z(N0) );
  GTECH_BUF B_1 ( .A(N15), .Z(N1) );
  GTECH_BUF B_2 ( .A(N18), .Z(N2) );
  GTECH_BUF B_3 ( .A(N20), .Z(N3) );
  GTECH_BUF B_4 ( .A(N23), .Z(N4) );
  GTECH_BUF B_5 ( .A(N25), .Z(N5) );
  GTECH_BUF B_6 ( .A(N28), .Z(N6) );
  GTECH_BUF B_7 ( .A(N30), .Z(N7) );
  GTECH_NOT I_0 ( .A(destreg_i[2]), .Z(N8) );
  GTECH_NOT I_1 ( .A(destreg_i[1]), .Z(N9) );
  GTECH_NOT I_2 ( .A(destreg_i[0]), .Z(N10) );
  GTECH_NOT I_3 ( .A(N14), .Z(N15) );
  GTECH_NOT I_4 ( .A(N17), .Z(N18) );
  GTECH_NOT I_5 ( .A(N19), .Z(N20) );
  GTECH_NOT I_6 ( .A(N22), .Z(N23) );
  GTECH_NOT I_7 ( .A(N24), .Z(N25) );
  GTECH_NOT I_8 ( .A(N27), .Z(N28) );
endmodule


module REG_32 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   N0, N1;

  \**SEQGEN**  \outreg_reg[31]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[31]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[31]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[30]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[30]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[30]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[29]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[29]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[29]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[28]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[28]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[28]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[27]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[27]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[27]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[26]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[26]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[26]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[25]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[25]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[25]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[24]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[24]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[24]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[23]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[23]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[23]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[22]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[22]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[22]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[21]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[21]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[21]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[20]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[20]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[20]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[19]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[19]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[19]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[18]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[18]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[18]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[17]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[17]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[17]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[16]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[16]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[16]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[15]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[15]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[14]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[14]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[13]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[13]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[12]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[12]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[11]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[11]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[10]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[10]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[9]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[9]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[8]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[8]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[7]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[7]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[6]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[6]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[5]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[5]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[4]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[4]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[3]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[3]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[2]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[2]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[1]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[1]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  \**SEQGEN**  \outreg_reg[0]  ( .clear(N0), .preset(1'b0), .next_state(
        writeData[0]), .clocked_on(CLK), .data_in(1'b0), .enable(1'b0), .Q(
        outreg[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N1) );
  GTECH_NOT I_0 ( .A(RST), .Z(N0) );
  GTECH_AND2 C147 ( .A(regWrite), .B(decOut_i), .Z(N1) );
endmodule


module REG_SET ( CLK, RST, regWrite, decOut_i, writeData_i, R0_o, R1_o, R2_o, 
        R3_o, R4_o, R5_o, R6_o, R7_o );
  input [7:0] decOut_i;
  input [31:0] writeData_i;
  output [31:0] R0_o;
  output [31:0] R1_o;
  output [31:0] R2_o;
  output [31:0] R3_o;
  output [31:0] R4_o;
  output [31:0] R5_o;
  output [31:0] R6_o;
  output [31:0] R7_o;
  input CLK, RST, regWrite;


  REG_32 R0 ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[0]), .writeData(writeData_i), .outreg(R0_o) );
  REG_32 R1 ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[1]), .writeData(writeData_i), .outreg(R1_o) );
  REG_32 R2 ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[2]), .writeData(writeData_i), .outreg(R2_o) );
  REG_32 R3 ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[3]), .writeData(writeData_i), .outreg(R3_o) );
  REG_32 R4 ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[4]), .writeData(writeData_i), .outreg(R4_o) );
  REG_32 R5 ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[5]), .writeData(writeData_i), .outreg(R5_o) );
  REG_32 R6 ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[6]), .writeData(writeData_i), .outreg(R6_o) );
  REG_32 R7 ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[7]), .writeData(writeData_i), .outreg(R7_o) );
endmodule


module MUX ( R0_i, R1_i, R2_i, R3_i, R4_i, R5_i, R6_i, R7_i, select_i, 
        outBus_o );
  input [31:0] R0_i;
  input [31:0] R1_i;
  input [31:0] R2_i;
  input [31:0] R3_i;
  input [31:0] R4_i;
  input [31:0] R5_i;
  input [31:0] R6_i;
  input [31:0] R7_i;
  input [2:0] select_i;
  output [31:0] outBus_o;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30;

  GTECH_AND2 C7 ( .A(N8), .B(N9), .Z(N11) );
  GTECH_AND2 C8 ( .A(N11), .B(N10), .Z(N12) );
  GTECH_OR2 C10 ( .A(select_i[2]), .B(select_i[1]), .Z(N13) );
  GTECH_OR2 C11 ( .A(N13), .B(N10), .Z(N14) );
  GTECH_OR2 C14 ( .A(select_i[2]), .B(N9), .Z(N16) );
  GTECH_OR2 C15 ( .A(N16), .B(select_i[0]), .Z(N17) );
  GTECH_OR2 C20 ( .A(N16), .B(N10), .Z(N19) );
  GTECH_OR2 C23 ( .A(N8), .B(select_i[1]), .Z(N21) );
  GTECH_OR2 C24 ( .A(N21), .B(select_i[0]), .Z(N22) );
  GTECH_OR2 C29 ( .A(N21), .B(N10), .Z(N24) );
  GTECH_OR2 C33 ( .A(N8), .B(N9), .Z(N26) );
  GTECH_OR2 C34 ( .A(N26), .B(select_i[0]), .Z(N27) );
  GTECH_AND2 C36 ( .A(select_i[2]), .B(select_i[1]), .Z(N29) );
  GTECH_AND2 C37 ( .A(N29), .B(select_i[0]), .Z(N30) );
  SELECT_OP C87 ( .DATA1(R0_i), .DATA2(R1_i), .DATA3(R2_i), .DATA4(R3_i), 
        .DATA5(R4_i), .DATA6(R5_i), .DATA7(R6_i), .DATA8(R7_i), .CONTROL1(N0), 
        .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(N4), .CONTROL6(
        N5), .CONTROL7(N6), .CONTROL8(N7), .Z(outBus_o) );
  GTECH_BUF B_0 ( .A(N12), .Z(N0) );
  GTECH_BUF B_1 ( .A(N15), .Z(N1) );
  GTECH_BUF B_2 ( .A(N18), .Z(N2) );
  GTECH_BUF B_3 ( .A(N20), .Z(N3) );
  GTECH_BUF B_4 ( .A(N23), .Z(N4) );
  GTECH_BUF B_5 ( .A(N25), .Z(N5) );
  GTECH_BUF B_6 ( .A(N28), .Z(N6) );
  GTECH_BUF B_7 ( .A(N30), .Z(N7) );
  GTECH_NOT I_0 ( .A(select_i[2]), .Z(N8) );
  GTECH_NOT I_1 ( .A(select_i[1]), .Z(N9) );
  GTECH_NOT I_2 ( .A(select_i[0]), .Z(N10) );
  GTECH_NOT I_3 ( .A(N14), .Z(N15) );
  GTECH_NOT I_4 ( .A(N17), .Z(N18) );
  GTECH_NOT I_5 ( .A(N19), .Z(N20) );
  GTECH_NOT I_6 ( .A(N22), .Z(N23) );
  GTECH_NOT I_7 ( .A(N24), .Z(N25) );
  GTECH_NOT I_8 ( .A(N27), .Z(N28) );
endmodule


module register_file ( CLK, RST, srcRegA, destReg, writeData, regWrite, 
        srcRegB, outBusA, outBusB );
  input [2:0] srcRegA;
  input [2:0] destReg;
  input [31:0] writeData;
  input [2:0] srcRegB;
  output [31:0] outBusA;
  output [31:0] outBusB;
  input CLK, RST, regWrite;

  wire   [7:0] dec_o;
  wire   [31:0] R0;
  wire   [31:0] R1;
  wire   [31:0] R2;
  wire   [31:0] R3;
  wire   [31:0] R4;
  wire   [31:0] R5;
  wire   [31:0] R6;
  wire   [31:0] R7;

  DECODER decoder ( .destreg_i(destReg), .destreg_o(dec_o) );
  REG_SET set ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(dec_o), 
        .writeData_i(writeData), .R0_o(R0), .R1_o(R1), .R2_o(R2), .R3_o(R3), 
        .R4_o(R4), .R5_o(R5), .R6_o(R6), .R7_o(R7) );
  MUX m1 ( .R0_i(R0), .R1_i(R1), .R2_i(R2), .R3_i(R3), .R4_i(R4), .R5_i(R5), 
        .R6_i(R6), .R7_i(R7), .select_i(srcRegA), .outBus_o(outBusA) );
  MUX m2 ( .R0_i(R0), .R1_i(R1), .R2_i(R2), .R3_i(R3), .R4_i(R4), .R5_i(R5), 
        .R6_i(R6), .R7_i(R7), .select_i(srcRegB), .outBus_o(outBusB) );
endmodule

