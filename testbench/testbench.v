module tb();
  //inputs
  reg 		CLK_tb, RST_tb, regWrite_tb;
  reg [2:0] 	srcRegA_tb, srcRegB_tb, destReg_tb;
  reg [31:0] 	writeData_tb;
  //outputs
  wire [31:0] 	outBusA_tb;
  wire [31:0] 	outBusB_tb;

  register_file DUT (	 .CLK(CLK_tb), .RST(RST_tb), .srcRegA(srcRegA_tb), .destReg(destReg_tb),
		 .writeData(writeData_tb), .regWrite(regWrite_tb), .srcRegB(srcRegB_tb), 
		 .outBusA(outBusA_tb), .outBusB(outBusB_tb));
  
  always begin #5 CLK_tb = ~CLK_tb; end
  
  initial 
  begin CLK_tb = 0; RST_tb = 0; srcRegA_tb = 5'd0; srcRegB_tb = 5'd0;
  #3 RST_tb =1; regWrite_tb=1; destReg_tb=3'd0; writeData_tb=32'd8;
  #10 destReg_tb = 3'd1; writeData_tb = 32'd7;
  #10 destReg_tb = 3'd2; writeData_tb = 32'd6;
  #10 destReg_tb = 3'd3; writeData_tb = 32'd5;
  #10 destReg_tb = 3'd4; writeData_tb = 32'd4;
  #10 destReg_tb = 3'd5; writeData_tb = 32'd3; 
  #10 destReg_tb = 3'd6; writeData_tb = 32'd2; 
  #10 destReg_tb = 3'd7; writeData_tb = 32'd1; 
  #10 regWrite_tb = 0; srcRegA_tb = 5'd7; srcRegB_tb =5'd6; 
  #10 srcRegA_tb = 5'd5; srcRegB_tb = 5'd4; 
  #10 srcRegA_tb =5'd3; srcRegB_tb =5'd2; 
  #10 srcRegA_tb =5'd1; srcRegB_tb =5'd0; 
  #10 $stop;
end
endmodule
