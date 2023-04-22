module register_file #(parameter W_width = 32) (
input wire			CLK, RST,
input wire [2:0]		srcRegA,
input wire [2:0]		destReg,
input wire [W_width-1:0]	writeData,
input wire			regWrite,
input wire [2:0]		srcRegB,

output [W_width-1:0]		outBusA,
output [W_width-1:0]		outBusB
);

wire [7:0]		dec_o;
wire [W_width-1:0]	R0, R1, R2, R3, R4, R5, R6, R7;

DECODER decoder (.destreg_i(destReg), .destreg_o(dec_o));

REG_SET set (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(dec_o), .writeData_i(writeData), .R0_o(R0), .R1_o(R1), .R2_o(R2), .R3_o(R3), .R4_o(R4), .R5_o(R5), .R6_o(R6), .R7_o(R7));

MUX m1 (.R0_i(R0), .R1_i(R1), .R2_i(R2), .R3_i(R3), .R4_i(R4), .R5_i(R5), .R6_i(R6), .R7_i(R7), .select_i(srcRegA), .outBus_o(outBusA));

MUX m2 (.R0_i(R0), .R1_i(R1), .R2_i(R2), .R3_i(R3), .R4_i(R4), .R5_i(R5), .R6_i(R6), .R7_i(R7), .select_i(srcRegB), .outBus_o(outBusB));

endmodule 