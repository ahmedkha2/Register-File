module REG_32 #(parameter W_width = 32) (
input wire			CLK,RST,
input wire 			regWrite,
input wire			decOut_i,
input wire [W_width-1:0]	writeData,

output reg [W_width-1:0]	outreg
);

always@(posedge CLK or negedge RST) begin
if(!RST) begin
	outreg	<= 'b0;
end
else if (regWrite && decOut_i) begin
	outreg	<= writeData;
end
end

endmodule 