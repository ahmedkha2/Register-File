module DECODER (
input wire [2:0]	destreg_i,

output reg [7:0]	destreg_o
);

always@(*) begin
case(destreg_i)
      3'b000: destreg_o = 8'b00000001;
      3'b001: destreg_o = 8'b00000010;
      3'b010: destreg_o = 8'b00000100;
      3'b011: destreg_o = 8'b00001000;
      3'b100: destreg_o = 8'b00010000;
      3'b101: destreg_o = 8'b00100000;
      3'b110: destreg_o = 8'b01000000;
      3'b111: destreg_o = 8'b10000000;
endcase
end

endmodule 