module MUX #(parameter W_width = 32)(
input wire [W_width-1:0]	R0_i, R1_i, R2_i, R3_i, R4_i, R5_i, R6_i, R7_i,
input wire [2:0]		select_i,

output reg [W_width-1:0]	outBus_o
);

always@(*) begin
case(select_i)
      3'b000: outBus_o = R0_i;
      3'b001: outBus_o = R1_i;
      3'b010: outBus_o = R2_i;
      3'b011: outBus_o = R3_i;
      3'b100: outBus_o = R4_i;
      3'b101: outBus_o = R5_i;
      3'b110: outBus_o = R6_i;
      3'b111: outBus_o = R7_i;
endcase
end

endmodule 