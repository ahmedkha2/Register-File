module REG_SET #(parameter W_width = 32) (
input wire			CLK, RST,
input wire			regWrite,
input wire [7:0]		decOut_i,
input wire [W_width-1:0]	writeData_i,

output wire [W_width-1:0]	R0_o, R1_o, R2_o, R3_o, R4_o, R5_o, R6_o, R7_o
);

REG_32 R0 (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[0]), .writeData(writeData_i), .outreg(R0_o));
REG_32 R1 (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[1]), .writeData(writeData_i), .outreg(R1_o));
REG_32 R2 (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[2]), .writeData(writeData_i), .outreg(R2_o));
REG_32 R3 (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[3]), .writeData(writeData_i), .outreg(R3_o));
REG_32 R4 (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[4]), .writeData(writeData_i), .outreg(R4_o));
REG_32 R5 (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[5]), .writeData(writeData_i), .outreg(R5_o));
REG_32 R6 (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[6]), .writeData(writeData_i), .outreg(R6_o));
REG_32 R7 (.CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(decOut_i[7]), .writeData(writeData_i), .outreg(R7_o));

endmodule 
