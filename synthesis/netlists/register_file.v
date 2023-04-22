/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Apr 22 12:12:17 2023
/////////////////////////////////////////////////////////////


module DECODER ( destreg_i, destreg_o );
  input [2:0] destreg_i;
  output [7:0] destreg_o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  NAND2X2M U3 ( .A(n6), .B(n7), .Y(n8) );
  CLKXOR2X2M U4 ( .A(n8), .B(n1), .Y(n5) );
  AOI22X1M U5 ( .A0(destreg_i[0]), .A1(destreg_i[1]), .B0(n8), .B1(
        destreg_i[2]), .Y(n4) );
  NAND2X2M U6 ( .A(destreg_i[0]), .B(n2), .Y(n7) );
  NAND2X2M U7 ( .A(destreg_i[1]), .B(n3), .Y(n6) );
  INVX2M U8 ( .A(destreg_i[2]), .Y(n1) );
  INVX2M U9 ( .A(destreg_i[0]), .Y(n3) );
  INVX2M U10 ( .A(destreg_i[1]), .Y(n2) );
  AND2X2M U11 ( .A(n5), .B(n4), .Y(destreg_o[0]) );
  NOR2X2M U12 ( .A(n4), .B(n5), .Y(destreg_o[7]) );
  NOR3X2M U13 ( .A(n2), .B(destreg_i[2]), .C(n3), .Y(destreg_o[3]) );
  NOR3X2M U14 ( .A(n1), .B(destreg_i[1]), .C(destreg_i[0]), .Y(destreg_o[4])
         );
  NOR2X2M U15 ( .A(destreg_i[2]), .B(n7), .Y(destreg_o[1]) );
  NOR2X2M U16 ( .A(destreg_i[2]), .B(n6), .Y(destreg_o[2]) );
  NOR2X2M U17 ( .A(n1), .B(n7), .Y(destreg_o[5]) );
  NOR2X2M U18 ( .A(n1), .B(n6), .Y(destreg_o[6]) );
endmodule


module REG_32_0 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n1, n35, n36, n37, n38, n39, n40, n41;

  AO22X1M U2 ( .A0(writeData[0]), .A1(n1), .B0(outreg[0]), .B1(n36), .Y(n3) );
  AO22X1M U3 ( .A0(writeData[1]), .A1(n1), .B0(outreg[1]), .B1(n36), .Y(n4) );
  AO22X1M U4 ( .A0(writeData[2]), .A1(n1), .B0(outreg[2]), .B1(n36), .Y(n5) );
  AO22X1M U5 ( .A0(writeData[3]), .A1(n1), .B0(outreg[3]), .B1(n36), .Y(n6) );
  AO22X1M U6 ( .A0(writeData[4]), .A1(n1), .B0(outreg[4]), .B1(n36), .Y(n7) );
  AO22X1M U7 ( .A0(writeData[5]), .A1(n1), .B0(outreg[5]), .B1(n36), .Y(n8) );
  AO22X1M U8 ( .A0(writeData[6]), .A1(n1), .B0(outreg[6]), .B1(n36), .Y(n9) );
  AO22X1M U9 ( .A0(writeData[7]), .A1(n1), .B0(outreg[7]), .B1(n36), .Y(n10)
         );
  AO22X1M U10 ( .A0(writeData[8]), .A1(n1), .B0(outreg[8]), .B1(n36), .Y(n11)
         );
  AO22X1M U11 ( .A0(writeData[9]), .A1(n1), .B0(outreg[9]), .B1(n36), .Y(n12)
         );
  AO22X1M U12 ( .A0(writeData[10]), .A1(n1), .B0(outreg[10]), .B1(n36), .Y(n13) );
  AO22X1M U13 ( .A0(writeData[11]), .A1(n1), .B0(outreg[11]), .B1(n36), .Y(n14) );
  AO22X1M U14 ( .A0(writeData[12]), .A1(n1), .B0(outreg[12]), .B1(n36), .Y(n15) );
  AO22X1M U15 ( .A0(writeData[13]), .A1(n1), .B0(outreg[13]), .B1(n36), .Y(n16) );
  AO22X1M U16 ( .A0(writeData[14]), .A1(n1), .B0(outreg[14]), .B1(n36), .Y(n17) );
  AO22X1M U17 ( .A0(writeData[15]), .A1(n1), .B0(outreg[15]), .B1(n36), .Y(n18) );
  AO22X1M U18 ( .A0(writeData[16]), .A1(n1), .B0(outreg[16]), .B1(n35), .Y(n19) );
  AO22X1M U19 ( .A0(writeData[17]), .A1(n1), .B0(outreg[17]), .B1(n35), .Y(n20) );
  AO22X1M U20 ( .A0(writeData[18]), .A1(n1), .B0(outreg[18]), .B1(n35), .Y(n21) );
  AO22X1M U21 ( .A0(writeData[19]), .A1(n1), .B0(outreg[19]), .B1(n35), .Y(n22) );
  AO22X1M U22 ( .A0(writeData[20]), .A1(n1), .B0(outreg[20]), .B1(n35), .Y(n23) );
  AO22X1M U23 ( .A0(writeData[21]), .A1(n1), .B0(outreg[21]), .B1(n35), .Y(n24) );
  AO22X1M U24 ( .A0(writeData[22]), .A1(n1), .B0(outreg[22]), .B1(n35), .Y(n25) );
  AO22X1M U25 ( .A0(writeData[23]), .A1(n1), .B0(outreg[23]), .B1(n35), .Y(n26) );
  AO22X1M U26 ( .A0(writeData[24]), .A1(n1), .B0(outreg[24]), .B1(n35), .Y(n27) );
  AO22X1M U27 ( .A0(writeData[25]), .A1(n1), .B0(outreg[25]), .B1(n35), .Y(n28) );
  AO22X1M U28 ( .A0(writeData[26]), .A1(n1), .B0(outreg[26]), .B1(n35), .Y(n29) );
  AO22X1M U29 ( .A0(writeData[27]), .A1(n1), .B0(outreg[27]), .B1(n35), .Y(n30) );
  AO22X1M U30 ( .A0(writeData[28]), .A1(n1), .B0(outreg[28]), .B1(n35), .Y(n31) );
  AO22X1M U31 ( .A0(writeData[29]), .A1(n1), .B0(outreg[29]), .B1(n35), .Y(n32) );
  AO22X1M U32 ( .A0(writeData[30]), .A1(n1), .B0(outreg[30]), .B1(n35), .Y(n33) );
  AO22X1M U33 ( .A0(writeData[31]), .A1(n1), .B0(outreg[31]), .B1(n35), .Y(n34) );
  CLKNAND2X2M U35 ( .A(regWrite), .B(decOut_i), .Y(n2) );
  DFFRQX2M \outreg_reg[31]  ( .D(n34), .CK(CLK), .RN(RST), .Q(outreg[31]) );
  DFFRQX2M \outreg_reg[30]  ( .D(n33), .CK(CLK), .RN(RST), .Q(outreg[30]) );
  DFFRQX2M \outreg_reg[29]  ( .D(n32), .CK(CLK), .RN(RST), .Q(outreg[29]) );
  DFFRQX2M \outreg_reg[28]  ( .D(n31), .CK(CLK), .RN(RST), .Q(outreg[28]) );
  DFFRQX2M \outreg_reg[27]  ( .D(n30), .CK(CLK), .RN(RST), .Q(outreg[27]) );
  DFFRQX2M \outreg_reg[26]  ( .D(n29), .CK(CLK), .RN(RST), .Q(outreg[26]) );
  DFFRQX2M \outreg_reg[25]  ( .D(n28), .CK(CLK), .RN(n38), .Q(outreg[25]) );
  DFFRQX2M \outreg_reg[24]  ( .D(n27), .CK(CLK), .RN(n38), .Q(outreg[24]) );
  DFFRQX2M \outreg_reg[23]  ( .D(n26), .CK(CLK), .RN(n38), .Q(outreg[23]) );
  DFFRQX2M \outreg_reg[22]  ( .D(n25), .CK(CLK), .RN(n38), .Q(outreg[22]) );
  DFFRQX2M \outreg_reg[21]  ( .D(n24), .CK(CLK), .RN(n38), .Q(outreg[21]) );
  DFFRQX2M \outreg_reg[20]  ( .D(n23), .CK(CLK), .RN(n38), .Q(outreg[20]) );
  DFFRQX2M \outreg_reg[19]  ( .D(n22), .CK(CLK), .RN(n38), .Q(outreg[19]) );
  DFFRQX2M \outreg_reg[18]  ( .D(n21), .CK(CLK), .RN(n38), .Q(outreg[18]) );
  DFFRQX2M \outreg_reg[17]  ( .D(n20), .CK(CLK), .RN(n38), .Q(outreg[17]) );
  DFFRQX2M \outreg_reg[16]  ( .D(n19), .CK(CLK), .RN(n38), .Q(outreg[16]) );
  DFFRQX2M \outreg_reg[15]  ( .D(n18), .CK(CLK), .RN(n38), .Q(outreg[15]) );
  DFFRQX2M \outreg_reg[14]  ( .D(n17), .CK(CLK), .RN(n38), .Q(outreg[14]) );
  DFFRQX2M \outreg_reg[13]  ( .D(n16), .CK(CLK), .RN(n38), .Q(outreg[13]) );
  DFFRQX2M \outreg_reg[12]  ( .D(n15), .CK(CLK), .RN(n37), .Q(outreg[12]) );
  DFFRQX2M \outreg_reg[11]  ( .D(n14), .CK(CLK), .RN(n37), .Q(outreg[11]) );
  DFFRQX2M \outreg_reg[10]  ( .D(n13), .CK(CLK), .RN(n37), .Q(outreg[10]) );
  DFFRQX2M \outreg_reg[9]  ( .D(n12), .CK(CLK), .RN(n37), .Q(outreg[9]) );
  DFFRQX2M \outreg_reg[8]  ( .D(n11), .CK(CLK), .RN(n37), .Q(outreg[8]) );
  DFFRQX2M \outreg_reg[7]  ( .D(n10), .CK(CLK), .RN(n37), .Q(outreg[7]) );
  DFFRQX2M \outreg_reg[6]  ( .D(n9), .CK(CLK), .RN(n37), .Q(outreg[6]) );
  DFFRQX2M \outreg_reg[5]  ( .D(n8), .CK(CLK), .RN(n37), .Q(outreg[5]) );
  DFFRQX2M \outreg_reg[4]  ( .D(n7), .CK(CLK), .RN(n37), .Q(outreg[4]) );
  DFFRQX2M \outreg_reg[3]  ( .D(n6), .CK(CLK), .RN(n37), .Q(outreg[3]) );
  DFFRQX2M \outreg_reg[2]  ( .D(n5), .CK(CLK), .RN(n37), .Q(outreg[2]) );
  DFFRQX2M \outreg_reg[1]  ( .D(n4), .CK(CLK), .RN(n37), .Q(outreg[1]) );
  DFFRQX2M \outreg_reg[0]  ( .D(n3), .CK(CLK), .RN(n37), .Q(outreg[0]) );
  INVX2M U34 ( .A(n39), .Y(n38) );
  INVX2M U36 ( .A(n36), .Y(n1) );
  BUFX2M U37 ( .A(n41), .Y(n39) );
  INVX2M U38 ( .A(n40), .Y(n37) );
  BUFX2M U39 ( .A(n41), .Y(n40) );
  BUFX2M U40 ( .A(n2), .Y(n35) );
  BUFX2M U41 ( .A(n2), .Y(n36) );
  INVX2M U42 ( .A(RST), .Y(n41) );
endmodule


module REG_32_1 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   n1, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  AO22X1M U2 ( .A0(writeData[0]), .A1(n1), .B0(outreg[0]), .B1(n36), .Y(n73)
         );
  AO22X1M U3 ( .A0(writeData[1]), .A1(n1), .B0(outreg[1]), .B1(n36), .Y(n72)
         );
  AO22X1M U4 ( .A0(writeData[2]), .A1(n1), .B0(outreg[2]), .B1(n36), .Y(n71)
         );
  AO22X1M U5 ( .A0(writeData[3]), .A1(n1), .B0(outreg[3]), .B1(n36), .Y(n70)
         );
  AO22X1M U6 ( .A0(writeData[4]), .A1(n1), .B0(outreg[4]), .B1(n36), .Y(n69)
         );
  AO22X1M U7 ( .A0(writeData[5]), .A1(n1), .B0(outreg[5]), .B1(n36), .Y(n68)
         );
  AO22X1M U8 ( .A0(writeData[6]), .A1(n1), .B0(outreg[6]), .B1(n36), .Y(n67)
         );
  AO22X1M U9 ( .A0(writeData[7]), .A1(n1), .B0(outreg[7]), .B1(n36), .Y(n66)
         );
  AO22X1M U10 ( .A0(writeData[8]), .A1(n1), .B0(outreg[8]), .B1(n36), .Y(n65)
         );
  AO22X1M U11 ( .A0(writeData[9]), .A1(n1), .B0(outreg[9]), .B1(n36), .Y(n64)
         );
  AO22X1M U12 ( .A0(writeData[10]), .A1(n1), .B0(outreg[10]), .B1(n36), .Y(n63) );
  AO22X1M U13 ( .A0(writeData[11]), .A1(n1), .B0(outreg[11]), .B1(n36), .Y(n62) );
  AO22X1M U14 ( .A0(writeData[12]), .A1(n1), .B0(outreg[12]), .B1(n36), .Y(n61) );
  AO22X1M U15 ( .A0(writeData[13]), .A1(n1), .B0(outreg[13]), .B1(n36), .Y(n60) );
  AO22X1M U16 ( .A0(writeData[14]), .A1(n1), .B0(outreg[14]), .B1(n36), .Y(n59) );
  AO22X1M U17 ( .A0(writeData[15]), .A1(n1), .B0(outreg[15]), .B1(n36), .Y(n58) );
  AO22X1M U18 ( .A0(writeData[16]), .A1(n1), .B0(outreg[16]), .B1(n35), .Y(n57) );
  AO22X1M U19 ( .A0(writeData[17]), .A1(n1), .B0(outreg[17]), .B1(n35), .Y(n56) );
  AO22X1M U20 ( .A0(writeData[18]), .A1(n1), .B0(outreg[18]), .B1(n35), .Y(n55) );
  AO22X1M U21 ( .A0(writeData[19]), .A1(n1), .B0(outreg[19]), .B1(n35), .Y(n54) );
  AO22X1M U22 ( .A0(writeData[20]), .A1(n1), .B0(outreg[20]), .B1(n35), .Y(n53) );
  AO22X1M U23 ( .A0(writeData[21]), .A1(n1), .B0(outreg[21]), .B1(n35), .Y(n52) );
  AO22X1M U24 ( .A0(writeData[22]), .A1(n1), .B0(outreg[22]), .B1(n35), .Y(n51) );
  AO22X1M U25 ( .A0(writeData[23]), .A1(n1), .B0(outreg[23]), .B1(n35), .Y(n50) );
  AO22X1M U26 ( .A0(writeData[24]), .A1(n1), .B0(outreg[24]), .B1(n35), .Y(n49) );
  AO22X1M U27 ( .A0(writeData[25]), .A1(n1), .B0(outreg[25]), .B1(n35), .Y(n48) );
  AO22X1M U28 ( .A0(writeData[26]), .A1(n1), .B0(outreg[26]), .B1(n35), .Y(n47) );
  AO22X1M U29 ( .A0(writeData[27]), .A1(n1), .B0(outreg[27]), .B1(n35), .Y(n46) );
  AO22X1M U30 ( .A0(writeData[28]), .A1(n1), .B0(outreg[28]), .B1(n35), .Y(n45) );
  AO22X1M U31 ( .A0(writeData[29]), .A1(n1), .B0(outreg[29]), .B1(n35), .Y(n44) );
  AO22X1M U32 ( .A0(writeData[30]), .A1(n1), .B0(outreg[30]), .B1(n35), .Y(n43) );
  AO22X1M U33 ( .A0(writeData[31]), .A1(n1), .B0(outreg[31]), .B1(n35), .Y(n42) );
  CLKNAND2X2M U35 ( .A(regWrite), .B(decOut_i), .Y(n74) );
  DFFRQX2M \outreg_reg[31]  ( .D(n42), .CK(CLK), .RN(n37), .Q(outreg[31]) );
  DFFRQX2M \outreg_reg[30]  ( .D(n43), .CK(CLK), .RN(RST), .Q(outreg[30]) );
  DFFRQX2M \outreg_reg[29]  ( .D(n44), .CK(CLK), .RN(n38), .Q(outreg[29]) );
  DFFRQX2M \outreg_reg[28]  ( .D(n45), .CK(CLK), .RN(n37), .Q(outreg[28]) );
  DFFRQX2M \outreg_reg[27]  ( .D(n46), .CK(CLK), .RN(RST), .Q(outreg[27]) );
  DFFRQX2M \outreg_reg[26]  ( .D(n47), .CK(CLK), .RN(RST), .Q(outreg[26]) );
  DFFRQX2M \outreg_reg[25]  ( .D(n48), .CK(CLK), .RN(n38), .Q(outreg[25]) );
  DFFRQX2M \outreg_reg[24]  ( .D(n49), .CK(CLK), .RN(n38), .Q(outreg[24]) );
  DFFRQX2M \outreg_reg[23]  ( .D(n50), .CK(CLK), .RN(n38), .Q(outreg[23]) );
  DFFRQX2M \outreg_reg[22]  ( .D(n51), .CK(CLK), .RN(n38), .Q(outreg[22]) );
  DFFRQX2M \outreg_reg[21]  ( .D(n52), .CK(CLK), .RN(n38), .Q(outreg[21]) );
  DFFRQX2M \outreg_reg[20]  ( .D(n53), .CK(CLK), .RN(n38), .Q(outreg[20]) );
  DFFRQX2M \outreg_reg[19]  ( .D(n54), .CK(CLK), .RN(n38), .Q(outreg[19]) );
  DFFRQX2M \outreg_reg[18]  ( .D(n55), .CK(CLK), .RN(n38), .Q(outreg[18]) );
  DFFRQX2M \outreg_reg[17]  ( .D(n56), .CK(CLK), .RN(n38), .Q(outreg[17]) );
  DFFRQX2M \outreg_reg[16]  ( .D(n57), .CK(CLK), .RN(n38), .Q(outreg[16]) );
  DFFRQX2M \outreg_reg[15]  ( .D(n58), .CK(CLK), .RN(n38), .Q(outreg[15]) );
  DFFRQX2M \outreg_reg[14]  ( .D(n59), .CK(CLK), .RN(n38), .Q(outreg[14]) );
  DFFRQX2M \outreg_reg[13]  ( .D(n60), .CK(CLK), .RN(n38), .Q(outreg[13]) );
  DFFRQX2M \outreg_reg[12]  ( .D(n61), .CK(CLK), .RN(n37), .Q(outreg[12]) );
  DFFRQX2M \outreg_reg[11]  ( .D(n62), .CK(CLK), .RN(n37), .Q(outreg[11]) );
  DFFRQX2M \outreg_reg[10]  ( .D(n63), .CK(CLK), .RN(n37), .Q(outreg[10]) );
  DFFRQX2M \outreg_reg[9]  ( .D(n64), .CK(CLK), .RN(n37), .Q(outreg[9]) );
  DFFRQX2M \outreg_reg[8]  ( .D(n65), .CK(CLK), .RN(n37), .Q(outreg[8]) );
  DFFRQX2M \outreg_reg[7]  ( .D(n66), .CK(CLK), .RN(n37), .Q(outreg[7]) );
  DFFRQX2M \outreg_reg[6]  ( .D(n67), .CK(CLK), .RN(n37), .Q(outreg[6]) );
  DFFRQX2M \outreg_reg[5]  ( .D(n68), .CK(CLK), .RN(n37), .Q(outreg[5]) );
  DFFRQX2M \outreg_reg[4]  ( .D(n69), .CK(CLK), .RN(n37), .Q(outreg[4]) );
  DFFRQX2M \outreg_reg[3]  ( .D(n70), .CK(CLK), .RN(n37), .Q(outreg[3]) );
  DFFRQX2M \outreg_reg[2]  ( .D(n71), .CK(CLK), .RN(n37), .Q(outreg[2]) );
  DFFRQX2M \outreg_reg[1]  ( .D(n72), .CK(CLK), .RN(n37), .Q(outreg[1]) );
  DFFRQX2M \outreg_reg[0]  ( .D(n73), .CK(CLK), .RN(n37), .Q(outreg[0]) );
  INVX2M U34 ( .A(n39), .Y(n38) );
  INVX2M U36 ( .A(n36), .Y(n1) );
  BUFX2M U37 ( .A(n41), .Y(n39) );
  INVX2M U38 ( .A(n40), .Y(n37) );
  BUFX2M U39 ( .A(n41), .Y(n40) );
  BUFX2M U40 ( .A(n74), .Y(n35) );
  BUFX2M U41 ( .A(n74), .Y(n36) );
  INVX2M U42 ( .A(RST), .Y(n41) );
endmodule


module REG_32_2 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   n1, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  AO22X1M U2 ( .A0(writeData[0]), .A1(n1), .B0(outreg[0]), .B1(n36), .Y(n73)
         );
  AO22X1M U3 ( .A0(writeData[1]), .A1(n1), .B0(outreg[1]), .B1(n36), .Y(n72)
         );
  AO22X1M U4 ( .A0(writeData[2]), .A1(n1), .B0(outreg[2]), .B1(n36), .Y(n71)
         );
  AO22X1M U5 ( .A0(writeData[3]), .A1(n1), .B0(outreg[3]), .B1(n36), .Y(n70)
         );
  AO22X1M U6 ( .A0(writeData[4]), .A1(n1), .B0(outreg[4]), .B1(n36), .Y(n69)
         );
  AO22X1M U7 ( .A0(writeData[5]), .A1(n1), .B0(outreg[5]), .B1(n36), .Y(n68)
         );
  AO22X1M U8 ( .A0(writeData[6]), .A1(n1), .B0(outreg[6]), .B1(n36), .Y(n67)
         );
  AO22X1M U9 ( .A0(writeData[7]), .A1(n1), .B0(outreg[7]), .B1(n36), .Y(n66)
         );
  AO22X1M U10 ( .A0(writeData[8]), .A1(n1), .B0(outreg[8]), .B1(n36), .Y(n65)
         );
  AO22X1M U11 ( .A0(writeData[9]), .A1(n1), .B0(outreg[9]), .B1(n36), .Y(n64)
         );
  AO22X1M U12 ( .A0(writeData[10]), .A1(n1), .B0(outreg[10]), .B1(n36), .Y(n63) );
  AO22X1M U13 ( .A0(writeData[11]), .A1(n1), .B0(outreg[11]), .B1(n36), .Y(n62) );
  AO22X1M U14 ( .A0(writeData[12]), .A1(n1), .B0(outreg[12]), .B1(n36), .Y(n61) );
  AO22X1M U15 ( .A0(writeData[13]), .A1(n1), .B0(outreg[13]), .B1(n36), .Y(n60) );
  AO22X1M U16 ( .A0(writeData[14]), .A1(n1), .B0(outreg[14]), .B1(n36), .Y(n59) );
  AO22X1M U17 ( .A0(writeData[15]), .A1(n1), .B0(outreg[15]), .B1(n36), .Y(n58) );
  AO22X1M U18 ( .A0(writeData[16]), .A1(n1), .B0(outreg[16]), .B1(n35), .Y(n57) );
  AO22X1M U19 ( .A0(writeData[17]), .A1(n1), .B0(outreg[17]), .B1(n35), .Y(n56) );
  AO22X1M U20 ( .A0(writeData[18]), .A1(n1), .B0(outreg[18]), .B1(n35), .Y(n55) );
  AO22X1M U21 ( .A0(writeData[19]), .A1(n1), .B0(outreg[19]), .B1(n35), .Y(n54) );
  AO22X1M U22 ( .A0(writeData[20]), .A1(n1), .B0(outreg[20]), .B1(n35), .Y(n53) );
  AO22X1M U23 ( .A0(writeData[21]), .A1(n1), .B0(outreg[21]), .B1(n35), .Y(n52) );
  AO22X1M U24 ( .A0(writeData[22]), .A1(n1), .B0(outreg[22]), .B1(n35), .Y(n51) );
  AO22X1M U25 ( .A0(writeData[23]), .A1(n1), .B0(outreg[23]), .B1(n35), .Y(n50) );
  AO22X1M U26 ( .A0(writeData[24]), .A1(n1), .B0(outreg[24]), .B1(n35), .Y(n49) );
  AO22X1M U27 ( .A0(writeData[25]), .A1(n1), .B0(outreg[25]), .B1(n35), .Y(n48) );
  AO22X1M U28 ( .A0(writeData[26]), .A1(n1), .B0(outreg[26]), .B1(n35), .Y(n47) );
  AO22X1M U29 ( .A0(writeData[27]), .A1(n1), .B0(outreg[27]), .B1(n35), .Y(n46) );
  AO22X1M U30 ( .A0(writeData[28]), .A1(n1), .B0(outreg[28]), .B1(n35), .Y(n45) );
  AO22X1M U31 ( .A0(writeData[29]), .A1(n1), .B0(outreg[29]), .B1(n35), .Y(n44) );
  AO22X1M U32 ( .A0(writeData[30]), .A1(n1), .B0(outreg[30]), .B1(n35), .Y(n43) );
  AO22X1M U33 ( .A0(writeData[31]), .A1(n1), .B0(outreg[31]), .B1(n35), .Y(n42) );
  CLKNAND2X2M U35 ( .A(regWrite), .B(decOut_i), .Y(n74) );
  DFFRQX2M \outreg_reg[31]  ( .D(n42), .CK(CLK), .RN(n37), .Q(outreg[31]) );
  DFFRQX2M \outreg_reg[30]  ( .D(n43), .CK(CLK), .RN(RST), .Q(outreg[30]) );
  DFFRQX2M \outreg_reg[29]  ( .D(n44), .CK(CLK), .RN(n38), .Q(outreg[29]) );
  DFFRQX2M \outreg_reg[28]  ( .D(n45), .CK(CLK), .RN(n37), .Q(outreg[28]) );
  DFFRQX2M \outreg_reg[27]  ( .D(n46), .CK(CLK), .RN(n38), .Q(outreg[27]) );
  DFFRQX2M \outreg_reg[26]  ( .D(n47), .CK(CLK), .RN(n37), .Q(outreg[26]) );
  DFFRQX2M \outreg_reg[25]  ( .D(n48), .CK(CLK), .RN(n38), .Q(outreg[25]) );
  DFFRQX2M \outreg_reg[24]  ( .D(n49), .CK(CLK), .RN(n38), .Q(outreg[24]) );
  DFFRQX2M \outreg_reg[23]  ( .D(n50), .CK(CLK), .RN(n38), .Q(outreg[23]) );
  DFFRQX2M \outreg_reg[22]  ( .D(n51), .CK(CLK), .RN(n38), .Q(outreg[22]) );
  DFFRQX2M \outreg_reg[21]  ( .D(n52), .CK(CLK), .RN(n38), .Q(outreg[21]) );
  DFFRQX2M \outreg_reg[20]  ( .D(n53), .CK(CLK), .RN(n38), .Q(outreg[20]) );
  DFFRQX2M \outreg_reg[19]  ( .D(n54), .CK(CLK), .RN(n38), .Q(outreg[19]) );
  DFFRQX2M \outreg_reg[18]  ( .D(n55), .CK(CLK), .RN(n38), .Q(outreg[18]) );
  DFFRQX2M \outreg_reg[17]  ( .D(n56), .CK(CLK), .RN(n38), .Q(outreg[17]) );
  DFFRQX2M \outreg_reg[16]  ( .D(n57), .CK(CLK), .RN(n38), .Q(outreg[16]) );
  DFFRQX2M \outreg_reg[15]  ( .D(n58), .CK(CLK), .RN(n38), .Q(outreg[15]) );
  DFFRQX2M \outreg_reg[14]  ( .D(n59), .CK(CLK), .RN(n38), .Q(outreg[14]) );
  DFFRQX2M \outreg_reg[13]  ( .D(n60), .CK(CLK), .RN(n38), .Q(outreg[13]) );
  DFFRQX2M \outreg_reg[12]  ( .D(n61), .CK(CLK), .RN(n37), .Q(outreg[12]) );
  DFFRQX2M \outreg_reg[11]  ( .D(n62), .CK(CLK), .RN(n37), .Q(outreg[11]) );
  DFFRQX2M \outreg_reg[10]  ( .D(n63), .CK(CLK), .RN(n37), .Q(outreg[10]) );
  DFFRQX2M \outreg_reg[9]  ( .D(n64), .CK(CLK), .RN(n37), .Q(outreg[9]) );
  DFFRQX2M \outreg_reg[8]  ( .D(n65), .CK(CLK), .RN(n37), .Q(outreg[8]) );
  DFFRQX2M \outreg_reg[7]  ( .D(n66), .CK(CLK), .RN(n37), .Q(outreg[7]) );
  DFFRQX2M \outreg_reg[6]  ( .D(n67), .CK(CLK), .RN(n37), .Q(outreg[6]) );
  DFFRQX2M \outreg_reg[5]  ( .D(n68), .CK(CLK), .RN(n37), .Q(outreg[5]) );
  DFFRQX2M \outreg_reg[4]  ( .D(n69), .CK(CLK), .RN(n37), .Q(outreg[4]) );
  DFFRQX2M \outreg_reg[3]  ( .D(n70), .CK(CLK), .RN(n37), .Q(outreg[3]) );
  DFFRQX2M \outreg_reg[2]  ( .D(n71), .CK(CLK), .RN(n37), .Q(outreg[2]) );
  DFFRQX2M \outreg_reg[1]  ( .D(n72), .CK(CLK), .RN(n37), .Q(outreg[1]) );
  DFFRQX2M \outreg_reg[0]  ( .D(n73), .CK(CLK), .RN(n37), .Q(outreg[0]) );
  INVX2M U34 ( .A(n39), .Y(n38) );
  INVX2M U36 ( .A(n36), .Y(n1) );
  BUFX2M U37 ( .A(n41), .Y(n39) );
  INVX2M U38 ( .A(n40), .Y(n37) );
  BUFX2M U39 ( .A(n41), .Y(n40) );
  BUFX2M U40 ( .A(n74), .Y(n35) );
  BUFX2M U41 ( .A(n74), .Y(n36) );
  INVX2M U42 ( .A(RST), .Y(n41) );
endmodule


module REG_32_3 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   n1, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  AO22X1M U2 ( .A0(writeData[0]), .A1(n1), .B0(outreg[0]), .B1(n36), .Y(n73)
         );
  AO22X1M U3 ( .A0(writeData[1]), .A1(n1), .B0(outreg[1]), .B1(n36), .Y(n72)
         );
  AO22X1M U4 ( .A0(writeData[2]), .A1(n1), .B0(outreg[2]), .B1(n36), .Y(n71)
         );
  AO22X1M U5 ( .A0(writeData[3]), .A1(n1), .B0(outreg[3]), .B1(n36), .Y(n70)
         );
  AO22X1M U6 ( .A0(writeData[4]), .A1(n1), .B0(outreg[4]), .B1(n36), .Y(n69)
         );
  AO22X1M U7 ( .A0(writeData[5]), .A1(n1), .B0(outreg[5]), .B1(n36), .Y(n68)
         );
  AO22X1M U8 ( .A0(writeData[6]), .A1(n1), .B0(outreg[6]), .B1(n36), .Y(n67)
         );
  AO22X1M U9 ( .A0(writeData[7]), .A1(n1), .B0(outreg[7]), .B1(n36), .Y(n66)
         );
  AO22X1M U10 ( .A0(writeData[8]), .A1(n1), .B0(outreg[8]), .B1(n36), .Y(n65)
         );
  AO22X1M U11 ( .A0(writeData[9]), .A1(n1), .B0(outreg[9]), .B1(n36), .Y(n64)
         );
  AO22X1M U12 ( .A0(writeData[10]), .A1(n1), .B0(outreg[10]), .B1(n36), .Y(n63) );
  AO22X1M U13 ( .A0(writeData[11]), .A1(n1), .B0(outreg[11]), .B1(n36), .Y(n62) );
  AO22X1M U14 ( .A0(writeData[12]), .A1(n1), .B0(outreg[12]), .B1(n36), .Y(n61) );
  AO22X1M U15 ( .A0(writeData[13]), .A1(n1), .B0(outreg[13]), .B1(n36), .Y(n60) );
  AO22X1M U16 ( .A0(writeData[14]), .A1(n1), .B0(outreg[14]), .B1(n36), .Y(n59) );
  AO22X1M U17 ( .A0(writeData[15]), .A1(n1), .B0(outreg[15]), .B1(n36), .Y(n58) );
  AO22X1M U18 ( .A0(writeData[16]), .A1(n1), .B0(outreg[16]), .B1(n35), .Y(n57) );
  AO22X1M U19 ( .A0(writeData[17]), .A1(n1), .B0(outreg[17]), .B1(n35), .Y(n56) );
  AO22X1M U20 ( .A0(writeData[18]), .A1(n1), .B0(outreg[18]), .B1(n35), .Y(n55) );
  AO22X1M U21 ( .A0(writeData[19]), .A1(n1), .B0(outreg[19]), .B1(n35), .Y(n54) );
  AO22X1M U22 ( .A0(writeData[20]), .A1(n1), .B0(outreg[20]), .B1(n35), .Y(n53) );
  AO22X1M U23 ( .A0(writeData[21]), .A1(n1), .B0(outreg[21]), .B1(n35), .Y(n52) );
  AO22X1M U24 ( .A0(writeData[22]), .A1(n1), .B0(outreg[22]), .B1(n35), .Y(n51) );
  AO22X1M U25 ( .A0(writeData[23]), .A1(n1), .B0(outreg[23]), .B1(n35), .Y(n50) );
  AO22X1M U26 ( .A0(writeData[24]), .A1(n1), .B0(outreg[24]), .B1(n35), .Y(n49) );
  AO22X1M U27 ( .A0(writeData[25]), .A1(n1), .B0(outreg[25]), .B1(n35), .Y(n48) );
  AO22X1M U28 ( .A0(writeData[26]), .A1(n1), .B0(outreg[26]), .B1(n35), .Y(n47) );
  AO22X1M U29 ( .A0(writeData[27]), .A1(n1), .B0(outreg[27]), .B1(n35), .Y(n46) );
  AO22X1M U30 ( .A0(writeData[28]), .A1(n1), .B0(outreg[28]), .B1(n35), .Y(n45) );
  AO22X1M U31 ( .A0(writeData[29]), .A1(n1), .B0(outreg[29]), .B1(n35), .Y(n44) );
  AO22X1M U32 ( .A0(writeData[30]), .A1(n1), .B0(outreg[30]), .B1(n35), .Y(n43) );
  AO22X1M U33 ( .A0(writeData[31]), .A1(n1), .B0(outreg[31]), .B1(n35), .Y(n42) );
  CLKNAND2X2M U35 ( .A(regWrite), .B(decOut_i), .Y(n74) );
  DFFRQX2M \outreg_reg[31]  ( .D(n42), .CK(CLK), .RN(n38), .Q(outreg[31]) );
  DFFRQX2M \outreg_reg[30]  ( .D(n43), .CK(CLK), .RN(n37), .Q(outreg[30]) );
  DFFRQX2M \outreg_reg[29]  ( .D(n44), .CK(CLK), .RN(n38), .Q(outreg[29]) );
  DFFRQX2M \outreg_reg[28]  ( .D(n45), .CK(CLK), .RN(n37), .Q(outreg[28]) );
  DFFRQX2M \outreg_reg[27]  ( .D(n46), .CK(CLK), .RN(n38), .Q(outreg[27]) );
  DFFRQX2M \outreg_reg[26]  ( .D(n47), .CK(CLK), .RN(n37), .Q(outreg[26]) );
  DFFRQX2M \outreg_reg[25]  ( .D(n48), .CK(CLK), .RN(n38), .Q(outreg[25]) );
  DFFRQX2M \outreg_reg[24]  ( .D(n49), .CK(CLK), .RN(n38), .Q(outreg[24]) );
  DFFRQX2M \outreg_reg[23]  ( .D(n50), .CK(CLK), .RN(n38), .Q(outreg[23]) );
  DFFRQX2M \outreg_reg[22]  ( .D(n51), .CK(CLK), .RN(n38), .Q(outreg[22]) );
  DFFRQX2M \outreg_reg[21]  ( .D(n52), .CK(CLK), .RN(n38), .Q(outreg[21]) );
  DFFRQX2M \outreg_reg[20]  ( .D(n53), .CK(CLK), .RN(n38), .Q(outreg[20]) );
  DFFRQX2M \outreg_reg[19]  ( .D(n54), .CK(CLK), .RN(n38), .Q(outreg[19]) );
  DFFRQX2M \outreg_reg[18]  ( .D(n55), .CK(CLK), .RN(n38), .Q(outreg[18]) );
  DFFRQX2M \outreg_reg[17]  ( .D(n56), .CK(CLK), .RN(n38), .Q(outreg[17]) );
  DFFRQX2M \outreg_reg[16]  ( .D(n57), .CK(CLK), .RN(n38), .Q(outreg[16]) );
  DFFRQX2M \outreg_reg[15]  ( .D(n58), .CK(CLK), .RN(n38), .Q(outreg[15]) );
  DFFRQX2M \outreg_reg[14]  ( .D(n59), .CK(CLK), .RN(n38), .Q(outreg[14]) );
  DFFRQX2M \outreg_reg[13]  ( .D(n60), .CK(CLK), .RN(n38), .Q(outreg[13]) );
  DFFRQX2M \outreg_reg[12]  ( .D(n61), .CK(CLK), .RN(n37), .Q(outreg[12]) );
  DFFRQX2M \outreg_reg[11]  ( .D(n62), .CK(CLK), .RN(n37), .Q(outreg[11]) );
  DFFRQX2M \outreg_reg[10]  ( .D(n63), .CK(CLK), .RN(n37), .Q(outreg[10]) );
  DFFRQX2M \outreg_reg[9]  ( .D(n64), .CK(CLK), .RN(n37), .Q(outreg[9]) );
  DFFRQX2M \outreg_reg[8]  ( .D(n65), .CK(CLK), .RN(n37), .Q(outreg[8]) );
  DFFRQX2M \outreg_reg[7]  ( .D(n66), .CK(CLK), .RN(n37), .Q(outreg[7]) );
  DFFRQX2M \outreg_reg[6]  ( .D(n67), .CK(CLK), .RN(n37), .Q(outreg[6]) );
  DFFRQX2M \outreg_reg[5]  ( .D(n68), .CK(CLK), .RN(n37), .Q(outreg[5]) );
  DFFRQX2M \outreg_reg[4]  ( .D(n69), .CK(CLK), .RN(n37), .Q(outreg[4]) );
  DFFRQX2M \outreg_reg[3]  ( .D(n70), .CK(CLK), .RN(n37), .Q(outreg[3]) );
  DFFRQX2M \outreg_reg[2]  ( .D(n71), .CK(CLK), .RN(n37), .Q(outreg[2]) );
  DFFRQX2M \outreg_reg[1]  ( .D(n72), .CK(CLK), .RN(n37), .Q(outreg[1]) );
  DFFRQX2M \outreg_reg[0]  ( .D(n73), .CK(CLK), .RN(n37), .Q(outreg[0]) );
  INVX2M U34 ( .A(n39), .Y(n38) );
  INVX2M U36 ( .A(n36), .Y(n1) );
  BUFX2M U37 ( .A(n41), .Y(n39) );
  INVX2M U38 ( .A(n40), .Y(n37) );
  BUFX2M U39 ( .A(n41), .Y(n40) );
  BUFX2M U40 ( .A(n74), .Y(n35) );
  BUFX2M U41 ( .A(n74), .Y(n36) );
  INVX2M U42 ( .A(RST), .Y(n41) );
endmodule


module REG_32_4 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   n1, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  AO22X1M U2 ( .A0(writeData[0]), .A1(n1), .B0(outreg[0]), .B1(n36), .Y(n73)
         );
  AO22X1M U3 ( .A0(writeData[1]), .A1(n1), .B0(outreg[1]), .B1(n36), .Y(n72)
         );
  AO22X1M U4 ( .A0(writeData[2]), .A1(n1), .B0(outreg[2]), .B1(n36), .Y(n71)
         );
  AO22X1M U5 ( .A0(writeData[3]), .A1(n1), .B0(outreg[3]), .B1(n36), .Y(n70)
         );
  AO22X1M U6 ( .A0(writeData[4]), .A1(n1), .B0(outreg[4]), .B1(n36), .Y(n69)
         );
  AO22X1M U7 ( .A0(writeData[5]), .A1(n1), .B0(outreg[5]), .B1(n36), .Y(n68)
         );
  AO22X1M U8 ( .A0(writeData[6]), .A1(n1), .B0(outreg[6]), .B1(n36), .Y(n67)
         );
  AO22X1M U9 ( .A0(writeData[7]), .A1(n1), .B0(outreg[7]), .B1(n36), .Y(n66)
         );
  AO22X1M U10 ( .A0(writeData[8]), .A1(n1), .B0(outreg[8]), .B1(n36), .Y(n65)
         );
  AO22X1M U11 ( .A0(writeData[9]), .A1(n1), .B0(outreg[9]), .B1(n36), .Y(n64)
         );
  AO22X1M U12 ( .A0(writeData[10]), .A1(n1), .B0(outreg[10]), .B1(n36), .Y(n63) );
  AO22X1M U13 ( .A0(writeData[11]), .A1(n1), .B0(outreg[11]), .B1(n36), .Y(n62) );
  AO22X1M U14 ( .A0(writeData[12]), .A1(n1), .B0(outreg[12]), .B1(n36), .Y(n61) );
  AO22X1M U15 ( .A0(writeData[13]), .A1(n1), .B0(outreg[13]), .B1(n36), .Y(n60) );
  AO22X1M U16 ( .A0(writeData[14]), .A1(n1), .B0(outreg[14]), .B1(n36), .Y(n59) );
  AO22X1M U17 ( .A0(writeData[15]), .A1(n1), .B0(outreg[15]), .B1(n36), .Y(n58) );
  AO22X1M U18 ( .A0(writeData[16]), .A1(n1), .B0(outreg[16]), .B1(n35), .Y(n57) );
  AO22X1M U19 ( .A0(writeData[17]), .A1(n1), .B0(outreg[17]), .B1(n35), .Y(n56) );
  AO22X1M U20 ( .A0(writeData[18]), .A1(n1), .B0(outreg[18]), .B1(n35), .Y(n55) );
  AO22X1M U21 ( .A0(writeData[19]), .A1(n1), .B0(outreg[19]), .B1(n35), .Y(n54) );
  AO22X1M U22 ( .A0(writeData[20]), .A1(n1), .B0(outreg[20]), .B1(n35), .Y(n53) );
  AO22X1M U23 ( .A0(writeData[21]), .A1(n1), .B0(outreg[21]), .B1(n35), .Y(n52) );
  AO22X1M U24 ( .A0(writeData[22]), .A1(n1), .B0(outreg[22]), .B1(n35), .Y(n51) );
  AO22X1M U25 ( .A0(writeData[23]), .A1(n1), .B0(outreg[23]), .B1(n35), .Y(n50) );
  AO22X1M U26 ( .A0(writeData[24]), .A1(n1), .B0(outreg[24]), .B1(n35), .Y(n49) );
  AO22X1M U27 ( .A0(writeData[25]), .A1(n1), .B0(outreg[25]), .B1(n35), .Y(n48) );
  AO22X1M U28 ( .A0(writeData[26]), .A1(n1), .B0(outreg[26]), .B1(n35), .Y(n47) );
  AO22X1M U29 ( .A0(writeData[27]), .A1(n1), .B0(outreg[27]), .B1(n35), .Y(n46) );
  AO22X1M U30 ( .A0(writeData[28]), .A1(n1), .B0(outreg[28]), .B1(n35), .Y(n45) );
  AO22X1M U31 ( .A0(writeData[29]), .A1(n1), .B0(outreg[29]), .B1(n35), .Y(n44) );
  AO22X1M U32 ( .A0(writeData[30]), .A1(n1), .B0(outreg[30]), .B1(n35), .Y(n43) );
  AO22X1M U33 ( .A0(writeData[31]), .A1(n1), .B0(outreg[31]), .B1(n35), .Y(n42) );
  CLKNAND2X2M U35 ( .A(regWrite), .B(decOut_i), .Y(n74) );
  DFFRQX2M \outreg_reg[31]  ( .D(n42), .CK(CLK), .RN(n37), .Q(outreg[31]) );
  DFFRQX2M \outreg_reg[30]  ( .D(n43), .CK(CLK), .RN(n38), .Q(outreg[30]) );
  DFFRQX2M \outreg_reg[29]  ( .D(n44), .CK(CLK), .RN(n37), .Q(outreg[29]) );
  DFFRQX2M \outreg_reg[28]  ( .D(n45), .CK(CLK), .RN(n38), .Q(outreg[28]) );
  DFFRQX2M \outreg_reg[27]  ( .D(n46), .CK(CLK), .RN(n38), .Q(outreg[27]) );
  DFFRQX2M \outreg_reg[26]  ( .D(n47), .CK(CLK), .RN(n37), .Q(outreg[26]) );
  DFFRQX2M \outreg_reg[25]  ( .D(n48), .CK(CLK), .RN(n38), .Q(outreg[25]) );
  DFFRQX2M \outreg_reg[24]  ( .D(n49), .CK(CLK), .RN(n38), .Q(outreg[24]) );
  DFFRQX2M \outreg_reg[23]  ( .D(n50), .CK(CLK), .RN(n38), .Q(outreg[23]) );
  DFFRQX2M \outreg_reg[22]  ( .D(n51), .CK(CLK), .RN(n38), .Q(outreg[22]) );
  DFFRQX2M \outreg_reg[21]  ( .D(n52), .CK(CLK), .RN(n38), .Q(outreg[21]) );
  DFFRQX2M \outreg_reg[20]  ( .D(n53), .CK(CLK), .RN(n38), .Q(outreg[20]) );
  DFFRQX2M \outreg_reg[19]  ( .D(n54), .CK(CLK), .RN(n38), .Q(outreg[19]) );
  DFFRQX2M \outreg_reg[18]  ( .D(n55), .CK(CLK), .RN(n38), .Q(outreg[18]) );
  DFFRQX2M \outreg_reg[17]  ( .D(n56), .CK(CLK), .RN(n38), .Q(outreg[17]) );
  DFFRQX2M \outreg_reg[16]  ( .D(n57), .CK(CLK), .RN(n38), .Q(outreg[16]) );
  DFFRQX2M \outreg_reg[15]  ( .D(n58), .CK(CLK), .RN(n38), .Q(outreg[15]) );
  DFFRQX2M \outreg_reg[14]  ( .D(n59), .CK(CLK), .RN(n38), .Q(outreg[14]) );
  DFFRQX2M \outreg_reg[13]  ( .D(n60), .CK(CLK), .RN(n38), .Q(outreg[13]) );
  DFFRQX2M \outreg_reg[12]  ( .D(n61), .CK(CLK), .RN(n37), .Q(outreg[12]) );
  DFFRQX2M \outreg_reg[11]  ( .D(n62), .CK(CLK), .RN(n37), .Q(outreg[11]) );
  DFFRQX2M \outreg_reg[10]  ( .D(n63), .CK(CLK), .RN(n37), .Q(outreg[10]) );
  DFFRQX2M \outreg_reg[9]  ( .D(n64), .CK(CLK), .RN(n37), .Q(outreg[9]) );
  DFFRQX2M \outreg_reg[8]  ( .D(n65), .CK(CLK), .RN(n37), .Q(outreg[8]) );
  DFFRQX2M \outreg_reg[7]  ( .D(n66), .CK(CLK), .RN(n37), .Q(outreg[7]) );
  DFFRQX2M \outreg_reg[6]  ( .D(n67), .CK(CLK), .RN(n37), .Q(outreg[6]) );
  DFFRQX2M \outreg_reg[5]  ( .D(n68), .CK(CLK), .RN(n37), .Q(outreg[5]) );
  DFFRQX2M \outreg_reg[4]  ( .D(n69), .CK(CLK), .RN(n37), .Q(outreg[4]) );
  DFFRQX2M \outreg_reg[3]  ( .D(n70), .CK(CLK), .RN(n37), .Q(outreg[3]) );
  DFFRQX2M \outreg_reg[2]  ( .D(n71), .CK(CLK), .RN(n37), .Q(outreg[2]) );
  DFFRQX2M \outreg_reg[1]  ( .D(n72), .CK(CLK), .RN(n37), .Q(outreg[1]) );
  DFFRQX2M \outreg_reg[0]  ( .D(n73), .CK(CLK), .RN(n37), .Q(outreg[0]) );
  INVX2M U34 ( .A(n39), .Y(n38) );
  INVX2M U36 ( .A(n36), .Y(n1) );
  BUFX2M U37 ( .A(n41), .Y(n39) );
  INVX2M U38 ( .A(n40), .Y(n37) );
  BUFX2M U39 ( .A(n41), .Y(n40) );
  BUFX2M U40 ( .A(n74), .Y(n35) );
  BUFX2M U41 ( .A(n74), .Y(n36) );
  INVX2M U42 ( .A(RST), .Y(n41) );
endmodule


module REG_32_5 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   n1, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75;

  AO22X1M U2 ( .A0(writeData[0]), .A1(n1), .B0(outreg[0]), .B1(n36), .Y(n74)
         );
  AO22X1M U3 ( .A0(writeData[1]), .A1(n1), .B0(outreg[1]), .B1(n36), .Y(n73)
         );
  AO22X1M U4 ( .A0(writeData[2]), .A1(n1), .B0(outreg[2]), .B1(n36), .Y(n72)
         );
  AO22X1M U5 ( .A0(writeData[3]), .A1(n1), .B0(outreg[3]), .B1(n36), .Y(n71)
         );
  AO22X1M U6 ( .A0(writeData[4]), .A1(n1), .B0(outreg[4]), .B1(n36), .Y(n70)
         );
  AO22X1M U7 ( .A0(writeData[5]), .A1(n1), .B0(outreg[5]), .B1(n36), .Y(n69)
         );
  AO22X1M U8 ( .A0(writeData[6]), .A1(n1), .B0(outreg[6]), .B1(n36), .Y(n68)
         );
  AO22X1M U9 ( .A0(writeData[7]), .A1(n1), .B0(outreg[7]), .B1(n36), .Y(n67)
         );
  AO22X1M U10 ( .A0(writeData[8]), .A1(n1), .B0(outreg[8]), .B1(n36), .Y(n66)
         );
  AO22X1M U11 ( .A0(writeData[9]), .A1(n1), .B0(outreg[9]), .B1(n36), .Y(n65)
         );
  AO22X1M U12 ( .A0(writeData[10]), .A1(n1), .B0(outreg[10]), .B1(n36), .Y(n64) );
  AO22X1M U13 ( .A0(writeData[11]), .A1(n1), .B0(outreg[11]), .B1(n36), .Y(n63) );
  AO22X1M U14 ( .A0(writeData[12]), .A1(n1), .B0(outreg[12]), .B1(n36), .Y(n62) );
  AO22X1M U15 ( .A0(writeData[13]), .A1(n1), .B0(outreg[13]), .B1(n36), .Y(n61) );
  AO22X1M U16 ( .A0(writeData[14]), .A1(n1), .B0(outreg[14]), .B1(n36), .Y(n60) );
  AO22X1M U17 ( .A0(writeData[15]), .A1(n1), .B0(outreg[15]), .B1(n36), .Y(n59) );
  AO22X1M U18 ( .A0(writeData[16]), .A1(n1), .B0(outreg[16]), .B1(n35), .Y(n58) );
  AO22X1M U19 ( .A0(writeData[17]), .A1(n1), .B0(outreg[17]), .B1(n35), .Y(n57) );
  AO22X1M U20 ( .A0(writeData[18]), .A1(n1), .B0(outreg[18]), .B1(n35), .Y(n56) );
  AO22X1M U21 ( .A0(writeData[19]), .A1(n1), .B0(outreg[19]), .B1(n35), .Y(n55) );
  AO22X1M U22 ( .A0(writeData[20]), .A1(n1), .B0(outreg[20]), .B1(n35), .Y(n54) );
  AO22X1M U23 ( .A0(writeData[21]), .A1(n1), .B0(outreg[21]), .B1(n35), .Y(n53) );
  AO22X1M U24 ( .A0(writeData[22]), .A1(n1), .B0(outreg[22]), .B1(n35), .Y(n52) );
  AO22X1M U25 ( .A0(writeData[23]), .A1(n1), .B0(outreg[23]), .B1(n35), .Y(n51) );
  AO22X1M U26 ( .A0(writeData[24]), .A1(n1), .B0(outreg[24]), .B1(n35), .Y(n50) );
  AO22X1M U27 ( .A0(writeData[25]), .A1(n1), .B0(outreg[25]), .B1(n35), .Y(n49) );
  AO22X1M U28 ( .A0(writeData[26]), .A1(n1), .B0(outreg[26]), .B1(n35), .Y(n48) );
  AO22X1M U29 ( .A0(writeData[27]), .A1(n1), .B0(outreg[27]), .B1(n35), .Y(n47) );
  AO22X1M U30 ( .A0(writeData[28]), .A1(n1), .B0(outreg[28]), .B1(n35), .Y(n46) );
  AO22X1M U31 ( .A0(writeData[29]), .A1(n1), .B0(outreg[29]), .B1(n35), .Y(n45) );
  AO22X1M U32 ( .A0(writeData[30]), .A1(n1), .B0(outreg[30]), .B1(n35), .Y(n44) );
  AO22X1M U33 ( .A0(writeData[31]), .A1(n1), .B0(outreg[31]), .B1(n35), .Y(n43) );
  CLKNAND2X2M U35 ( .A(regWrite), .B(decOut_i), .Y(n75) );
  DFFRQX2M \outreg_reg[31]  ( .D(n43), .CK(CLK), .RN(n39), .Q(outreg[31]) );
  DFFRQX2M \outreg_reg[30]  ( .D(n44), .CK(CLK), .RN(n39), .Q(outreg[30]) );
  DFFRQX2M \outreg_reg[29]  ( .D(n45), .CK(CLK), .RN(n39), .Q(outreg[29]) );
  DFFRQX2M \outreg_reg[28]  ( .D(n46), .CK(CLK), .RN(n39), .Q(outreg[28]) );
  DFFRQX2M \outreg_reg[27]  ( .D(n47), .CK(CLK), .RN(n39), .Q(outreg[27]) );
  DFFRQX2M \outreg_reg[26]  ( .D(n48), .CK(CLK), .RN(n39), .Q(outreg[26]) );
  DFFRQX2M \outreg_reg[25]  ( .D(n49), .CK(CLK), .RN(n38), .Q(outreg[25]) );
  DFFRQX2M \outreg_reg[24]  ( .D(n50), .CK(CLK), .RN(n38), .Q(outreg[24]) );
  DFFRQX2M \outreg_reg[23]  ( .D(n51), .CK(CLK), .RN(n38), .Q(outreg[23]) );
  DFFRQX2M \outreg_reg[22]  ( .D(n52), .CK(CLK), .RN(n38), .Q(outreg[22]) );
  DFFRQX2M \outreg_reg[21]  ( .D(n53), .CK(CLK), .RN(n38), .Q(outreg[21]) );
  DFFRQX2M \outreg_reg[20]  ( .D(n54), .CK(CLK), .RN(n38), .Q(outreg[20]) );
  DFFRQX2M \outreg_reg[19]  ( .D(n55), .CK(CLK), .RN(n38), .Q(outreg[19]) );
  DFFRQX2M \outreg_reg[18]  ( .D(n56), .CK(CLK), .RN(n38), .Q(outreg[18]) );
  DFFRQX2M \outreg_reg[17]  ( .D(n57), .CK(CLK), .RN(n38), .Q(outreg[17]) );
  DFFRQX2M \outreg_reg[16]  ( .D(n58), .CK(CLK), .RN(n38), .Q(outreg[16]) );
  DFFRQX2M \outreg_reg[15]  ( .D(n59), .CK(CLK), .RN(n38), .Q(outreg[15]) );
  DFFRQX2M \outreg_reg[14]  ( .D(n60), .CK(CLK), .RN(n38), .Q(outreg[14]) );
  DFFRQX2M \outreg_reg[13]  ( .D(n61), .CK(CLK), .RN(n38), .Q(outreg[13]) );
  DFFRQX2M \outreg_reg[12]  ( .D(n62), .CK(CLK), .RN(n37), .Q(outreg[12]) );
  DFFRQX2M \outreg_reg[11]  ( .D(n63), .CK(CLK), .RN(n37), .Q(outreg[11]) );
  DFFRQX2M \outreg_reg[10]  ( .D(n64), .CK(CLK), .RN(n37), .Q(outreg[10]) );
  DFFRQX2M \outreg_reg[9]  ( .D(n65), .CK(CLK), .RN(n37), .Q(outreg[9]) );
  DFFRQX2M \outreg_reg[8]  ( .D(n66), .CK(CLK), .RN(n37), .Q(outreg[8]) );
  DFFRQX2M \outreg_reg[7]  ( .D(n67), .CK(CLK), .RN(n37), .Q(outreg[7]) );
  DFFRQX2M \outreg_reg[6]  ( .D(n68), .CK(CLK), .RN(n37), .Q(outreg[6]) );
  DFFRQX2M \outreg_reg[5]  ( .D(n69), .CK(CLK), .RN(n37), .Q(outreg[5]) );
  DFFRQX2M \outreg_reg[4]  ( .D(n70), .CK(CLK), .RN(n37), .Q(outreg[4]) );
  DFFRQX2M \outreg_reg[3]  ( .D(n71), .CK(CLK), .RN(n37), .Q(outreg[3]) );
  DFFRQX2M \outreg_reg[2]  ( .D(n72), .CK(CLK), .RN(n37), .Q(outreg[2]) );
  DFFRQX2M \outreg_reg[1]  ( .D(n73), .CK(CLK), .RN(n37), .Q(outreg[1]) );
  DFFRQX2M \outreg_reg[0]  ( .D(n74), .CK(CLK), .RN(n37), .Q(outreg[0]) );
  INVX2M U34 ( .A(n40), .Y(n38) );
  INVX2M U36 ( .A(n40), .Y(n39) );
  INVX2M U37 ( .A(n36), .Y(n1) );
  BUFX2M U38 ( .A(n42), .Y(n40) );
  INVX2M U39 ( .A(n41), .Y(n37) );
  BUFX2M U40 ( .A(n42), .Y(n41) );
  BUFX2M U41 ( .A(n75), .Y(n35) );
  BUFX2M U42 ( .A(n75), .Y(n36) );
  INVX2M U43 ( .A(RST), .Y(n42) );
endmodule


module REG_32_6 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   n1, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75;

  AO22X1M U2 ( .A0(writeData[0]), .A1(n1), .B0(outreg[0]), .B1(n36), .Y(n74)
         );
  AO22X1M U3 ( .A0(writeData[1]), .A1(n1), .B0(outreg[1]), .B1(n36), .Y(n73)
         );
  AO22X1M U4 ( .A0(writeData[2]), .A1(n1), .B0(outreg[2]), .B1(n36), .Y(n72)
         );
  AO22X1M U5 ( .A0(writeData[3]), .A1(n1), .B0(outreg[3]), .B1(n36), .Y(n71)
         );
  AO22X1M U6 ( .A0(writeData[4]), .A1(n1), .B0(outreg[4]), .B1(n36), .Y(n70)
         );
  AO22X1M U7 ( .A0(writeData[5]), .A1(n1), .B0(outreg[5]), .B1(n36), .Y(n69)
         );
  AO22X1M U8 ( .A0(writeData[6]), .A1(n1), .B0(outreg[6]), .B1(n36), .Y(n68)
         );
  AO22X1M U9 ( .A0(writeData[7]), .A1(n1), .B0(outreg[7]), .B1(n36), .Y(n67)
         );
  AO22X1M U10 ( .A0(writeData[8]), .A1(n1), .B0(outreg[8]), .B1(n36), .Y(n66)
         );
  AO22X1M U11 ( .A0(writeData[9]), .A1(n1), .B0(outreg[9]), .B1(n36), .Y(n65)
         );
  AO22X1M U12 ( .A0(writeData[10]), .A1(n1), .B0(outreg[10]), .B1(n36), .Y(n64) );
  AO22X1M U13 ( .A0(writeData[11]), .A1(n1), .B0(outreg[11]), .B1(n36), .Y(n63) );
  AO22X1M U14 ( .A0(writeData[12]), .A1(n1), .B0(outreg[12]), .B1(n36), .Y(n62) );
  AO22X1M U15 ( .A0(writeData[13]), .A1(n1), .B0(outreg[13]), .B1(n36), .Y(n61) );
  AO22X1M U16 ( .A0(writeData[14]), .A1(n1), .B0(outreg[14]), .B1(n36), .Y(n60) );
  AO22X1M U17 ( .A0(writeData[15]), .A1(n1), .B0(outreg[15]), .B1(n36), .Y(n59) );
  AO22X1M U18 ( .A0(writeData[16]), .A1(n1), .B0(outreg[16]), .B1(n35), .Y(n58) );
  AO22X1M U19 ( .A0(writeData[17]), .A1(n1), .B0(outreg[17]), .B1(n35), .Y(n57) );
  AO22X1M U20 ( .A0(writeData[18]), .A1(n1), .B0(outreg[18]), .B1(n35), .Y(n56) );
  AO22X1M U21 ( .A0(writeData[19]), .A1(n1), .B0(outreg[19]), .B1(n35), .Y(n55) );
  AO22X1M U22 ( .A0(writeData[20]), .A1(n1), .B0(outreg[20]), .B1(n35), .Y(n54) );
  AO22X1M U23 ( .A0(writeData[21]), .A1(n1), .B0(outreg[21]), .B1(n35), .Y(n53) );
  AO22X1M U24 ( .A0(writeData[22]), .A1(n1), .B0(outreg[22]), .B1(n35), .Y(n52) );
  AO22X1M U25 ( .A0(writeData[23]), .A1(n1), .B0(outreg[23]), .B1(n35), .Y(n51) );
  AO22X1M U26 ( .A0(writeData[24]), .A1(n1), .B0(outreg[24]), .B1(n35), .Y(n50) );
  AO22X1M U27 ( .A0(writeData[25]), .A1(n1), .B0(outreg[25]), .B1(n35), .Y(n49) );
  AO22X1M U28 ( .A0(writeData[26]), .A1(n1), .B0(outreg[26]), .B1(n35), .Y(n48) );
  AO22X1M U29 ( .A0(writeData[27]), .A1(n1), .B0(outreg[27]), .B1(n35), .Y(n47) );
  AO22X1M U30 ( .A0(writeData[28]), .A1(n1), .B0(outreg[28]), .B1(n35), .Y(n46) );
  AO22X1M U31 ( .A0(writeData[29]), .A1(n1), .B0(outreg[29]), .B1(n35), .Y(n45) );
  AO22X1M U32 ( .A0(writeData[30]), .A1(n1), .B0(outreg[30]), .B1(n35), .Y(n44) );
  AO22X1M U33 ( .A0(writeData[31]), .A1(n1), .B0(outreg[31]), .B1(n35), .Y(n43) );
  CLKNAND2X2M U35 ( .A(regWrite), .B(decOut_i), .Y(n75) );
  DFFRQX2M \outreg_reg[31]  ( .D(n43), .CK(CLK), .RN(n39), .Q(outreg[31]) );
  DFFRQX2M \outreg_reg[30]  ( .D(n44), .CK(CLK), .RN(n39), .Q(outreg[30]) );
  DFFRQX2M \outreg_reg[29]  ( .D(n45), .CK(CLK), .RN(n39), .Q(outreg[29]) );
  DFFRQX2M \outreg_reg[28]  ( .D(n46), .CK(CLK), .RN(n39), .Q(outreg[28]) );
  DFFRQX2M \outreg_reg[27]  ( .D(n47), .CK(CLK), .RN(n39), .Q(outreg[27]) );
  DFFRQX2M \outreg_reg[26]  ( .D(n48), .CK(CLK), .RN(n39), .Q(outreg[26]) );
  DFFRQX2M \outreg_reg[25]  ( .D(n49), .CK(CLK), .RN(n38), .Q(outreg[25]) );
  DFFRQX2M \outreg_reg[24]  ( .D(n50), .CK(CLK), .RN(n38), .Q(outreg[24]) );
  DFFRQX2M \outreg_reg[23]  ( .D(n51), .CK(CLK), .RN(n38), .Q(outreg[23]) );
  DFFRQX2M \outreg_reg[22]  ( .D(n52), .CK(CLK), .RN(n38), .Q(outreg[22]) );
  DFFRQX2M \outreg_reg[21]  ( .D(n53), .CK(CLK), .RN(n38), .Q(outreg[21]) );
  DFFRQX2M \outreg_reg[20]  ( .D(n54), .CK(CLK), .RN(n38), .Q(outreg[20]) );
  DFFRQX2M \outreg_reg[19]  ( .D(n55), .CK(CLK), .RN(n38), .Q(outreg[19]) );
  DFFRQX2M \outreg_reg[18]  ( .D(n56), .CK(CLK), .RN(n38), .Q(outreg[18]) );
  DFFRQX2M \outreg_reg[17]  ( .D(n57), .CK(CLK), .RN(n38), .Q(outreg[17]) );
  DFFRQX2M \outreg_reg[16]  ( .D(n58), .CK(CLK), .RN(n38), .Q(outreg[16]) );
  DFFRQX2M \outreg_reg[15]  ( .D(n59), .CK(CLK), .RN(n38), .Q(outreg[15]) );
  DFFRQX2M \outreg_reg[14]  ( .D(n60), .CK(CLK), .RN(n38), .Q(outreg[14]) );
  DFFRQX2M \outreg_reg[13]  ( .D(n61), .CK(CLK), .RN(n38), .Q(outreg[13]) );
  DFFRQX2M \outreg_reg[12]  ( .D(n62), .CK(CLK), .RN(n37), .Q(outreg[12]) );
  DFFRQX2M \outreg_reg[11]  ( .D(n63), .CK(CLK), .RN(n37), .Q(outreg[11]) );
  DFFRQX2M \outreg_reg[10]  ( .D(n64), .CK(CLK), .RN(n37), .Q(outreg[10]) );
  DFFRQX2M \outreg_reg[9]  ( .D(n65), .CK(CLK), .RN(n37), .Q(outreg[9]) );
  DFFRQX2M \outreg_reg[8]  ( .D(n66), .CK(CLK), .RN(n37), .Q(outreg[8]) );
  DFFRQX2M \outreg_reg[7]  ( .D(n67), .CK(CLK), .RN(n37), .Q(outreg[7]) );
  DFFRQX2M \outreg_reg[6]  ( .D(n68), .CK(CLK), .RN(n37), .Q(outreg[6]) );
  DFFRQX2M \outreg_reg[5]  ( .D(n69), .CK(CLK), .RN(n37), .Q(outreg[5]) );
  DFFRQX2M \outreg_reg[4]  ( .D(n70), .CK(CLK), .RN(n37), .Q(outreg[4]) );
  DFFRQX2M \outreg_reg[3]  ( .D(n71), .CK(CLK), .RN(n37), .Q(outreg[3]) );
  DFFRQX2M \outreg_reg[2]  ( .D(n72), .CK(CLK), .RN(n37), .Q(outreg[2]) );
  DFFRQX2M \outreg_reg[1]  ( .D(n73), .CK(CLK), .RN(n37), .Q(outreg[1]) );
  DFFRQX2M \outreg_reg[0]  ( .D(n74), .CK(CLK), .RN(n37), .Q(outreg[0]) );
  INVX2M U34 ( .A(n40), .Y(n38) );
  INVX2M U36 ( .A(n40), .Y(n39) );
  INVX2M U37 ( .A(n36), .Y(n1) );
  BUFX2M U38 ( .A(n42), .Y(n40) );
  INVX2M U39 ( .A(n41), .Y(n37) );
  BUFX2M U40 ( .A(n42), .Y(n41) );
  BUFX2M U41 ( .A(n75), .Y(n35) );
  BUFX2M U42 ( .A(n75), .Y(n36) );
  INVX2M U43 ( .A(RST), .Y(n42) );
endmodule


module REG_32_7 ( CLK, RST, regWrite, decOut_i, writeData, outreg );
  input [31:0] writeData;
  output [31:0] outreg;
  input CLK, RST, regWrite, decOut_i;
  wire   n1, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75;

  AO22X1M U2 ( .A0(writeData[0]), .A1(n1), .B0(outreg[0]), .B1(n36), .Y(n74)
         );
  AO22X1M U3 ( .A0(writeData[1]), .A1(n1), .B0(outreg[1]), .B1(n36), .Y(n73)
         );
  AO22X1M U4 ( .A0(writeData[2]), .A1(n1), .B0(outreg[2]), .B1(n36), .Y(n72)
         );
  AO22X1M U5 ( .A0(writeData[3]), .A1(n1), .B0(outreg[3]), .B1(n36), .Y(n71)
         );
  AO22X1M U6 ( .A0(writeData[4]), .A1(n1), .B0(outreg[4]), .B1(n36), .Y(n70)
         );
  AO22X1M U7 ( .A0(writeData[5]), .A1(n1), .B0(outreg[5]), .B1(n36), .Y(n69)
         );
  AO22X1M U8 ( .A0(writeData[6]), .A1(n1), .B0(outreg[6]), .B1(n36), .Y(n68)
         );
  AO22X1M U9 ( .A0(writeData[7]), .A1(n1), .B0(outreg[7]), .B1(n36), .Y(n67)
         );
  AO22X1M U10 ( .A0(writeData[8]), .A1(n1), .B0(outreg[8]), .B1(n36), .Y(n66)
         );
  AO22X1M U11 ( .A0(writeData[9]), .A1(n1), .B0(outreg[9]), .B1(n36), .Y(n65)
         );
  AO22X1M U12 ( .A0(writeData[10]), .A1(n1), .B0(outreg[10]), .B1(n36), .Y(n64) );
  AO22X1M U13 ( .A0(writeData[11]), .A1(n1), .B0(outreg[11]), .B1(n36), .Y(n63) );
  AO22X1M U14 ( .A0(writeData[12]), .A1(n1), .B0(outreg[12]), .B1(n36), .Y(n62) );
  AO22X1M U15 ( .A0(writeData[13]), .A1(n1), .B0(outreg[13]), .B1(n36), .Y(n61) );
  AO22X1M U16 ( .A0(writeData[14]), .A1(n1), .B0(outreg[14]), .B1(n36), .Y(n60) );
  AO22X1M U17 ( .A0(writeData[15]), .A1(n1), .B0(outreg[15]), .B1(n36), .Y(n59) );
  AO22X1M U18 ( .A0(writeData[16]), .A1(n1), .B0(outreg[16]), .B1(n35), .Y(n58) );
  AO22X1M U19 ( .A0(writeData[17]), .A1(n1), .B0(outreg[17]), .B1(n35), .Y(n57) );
  AO22X1M U20 ( .A0(writeData[18]), .A1(n1), .B0(outreg[18]), .B1(n35), .Y(n56) );
  AO22X1M U21 ( .A0(writeData[19]), .A1(n1), .B0(outreg[19]), .B1(n35), .Y(n55) );
  AO22X1M U22 ( .A0(writeData[20]), .A1(n1), .B0(outreg[20]), .B1(n35), .Y(n54) );
  AO22X1M U23 ( .A0(writeData[21]), .A1(n1), .B0(outreg[21]), .B1(n35), .Y(n53) );
  AO22X1M U24 ( .A0(writeData[22]), .A1(n1), .B0(outreg[22]), .B1(n35), .Y(n52) );
  AO22X1M U25 ( .A0(writeData[23]), .A1(n1), .B0(outreg[23]), .B1(n35), .Y(n51) );
  AO22X1M U26 ( .A0(writeData[24]), .A1(n1), .B0(outreg[24]), .B1(n35), .Y(n50) );
  AO22X1M U27 ( .A0(writeData[25]), .A1(n1), .B0(outreg[25]), .B1(n35), .Y(n49) );
  AO22X1M U28 ( .A0(writeData[26]), .A1(n1), .B0(outreg[26]), .B1(n35), .Y(n48) );
  AO22X1M U29 ( .A0(writeData[27]), .A1(n1), .B0(outreg[27]), .B1(n35), .Y(n47) );
  AO22X1M U30 ( .A0(writeData[28]), .A1(n1), .B0(outreg[28]), .B1(n35), .Y(n46) );
  AO22X1M U31 ( .A0(writeData[29]), .A1(n1), .B0(outreg[29]), .B1(n35), .Y(n45) );
  AO22X1M U32 ( .A0(writeData[30]), .A1(n1), .B0(outreg[30]), .B1(n35), .Y(n44) );
  AO22X1M U33 ( .A0(writeData[31]), .A1(n1), .B0(outreg[31]), .B1(n35), .Y(n43) );
  CLKNAND2X2M U35 ( .A(regWrite), .B(decOut_i), .Y(n75) );
  DFFRQX2M \outreg_reg[31]  ( .D(n43), .CK(CLK), .RN(n39), .Q(outreg[31]) );
  DFFRQX2M \outreg_reg[30]  ( .D(n44), .CK(CLK), .RN(n39), .Q(outreg[30]) );
  DFFRQX2M \outreg_reg[29]  ( .D(n45), .CK(CLK), .RN(n39), .Q(outreg[29]) );
  DFFRQX2M \outreg_reg[28]  ( .D(n46), .CK(CLK), .RN(n39), .Q(outreg[28]) );
  DFFRQX2M \outreg_reg[27]  ( .D(n47), .CK(CLK), .RN(n39), .Q(outreg[27]) );
  DFFRQX2M \outreg_reg[26]  ( .D(n48), .CK(CLK), .RN(n39), .Q(outreg[26]) );
  DFFRQX2M \outreg_reg[25]  ( .D(n49), .CK(CLK), .RN(n38), .Q(outreg[25]) );
  DFFRQX2M \outreg_reg[24]  ( .D(n50), .CK(CLK), .RN(n38), .Q(outreg[24]) );
  DFFRQX2M \outreg_reg[23]  ( .D(n51), .CK(CLK), .RN(n38), .Q(outreg[23]) );
  DFFRQX2M \outreg_reg[22]  ( .D(n52), .CK(CLK), .RN(n38), .Q(outreg[22]) );
  DFFRQX2M \outreg_reg[21]  ( .D(n53), .CK(CLK), .RN(n38), .Q(outreg[21]) );
  DFFRQX2M \outreg_reg[20]  ( .D(n54), .CK(CLK), .RN(n38), .Q(outreg[20]) );
  DFFRQX2M \outreg_reg[19]  ( .D(n55), .CK(CLK), .RN(n38), .Q(outreg[19]) );
  DFFRQX2M \outreg_reg[18]  ( .D(n56), .CK(CLK), .RN(n38), .Q(outreg[18]) );
  DFFRQX2M \outreg_reg[17]  ( .D(n57), .CK(CLK), .RN(n38), .Q(outreg[17]) );
  DFFRQX2M \outreg_reg[16]  ( .D(n58), .CK(CLK), .RN(n38), .Q(outreg[16]) );
  DFFRQX2M \outreg_reg[15]  ( .D(n59), .CK(CLK), .RN(n38), .Q(outreg[15]) );
  DFFRQX2M \outreg_reg[14]  ( .D(n60), .CK(CLK), .RN(n38), .Q(outreg[14]) );
  DFFRQX2M \outreg_reg[13]  ( .D(n61), .CK(CLK), .RN(n38), .Q(outreg[13]) );
  DFFRQX2M \outreg_reg[12]  ( .D(n62), .CK(CLK), .RN(n37), .Q(outreg[12]) );
  DFFRQX2M \outreg_reg[11]  ( .D(n63), .CK(CLK), .RN(n37), .Q(outreg[11]) );
  DFFRQX2M \outreg_reg[10]  ( .D(n64), .CK(CLK), .RN(n37), .Q(outreg[10]) );
  DFFRQX2M \outreg_reg[9]  ( .D(n65), .CK(CLK), .RN(n37), .Q(outreg[9]) );
  DFFRQX2M \outreg_reg[8]  ( .D(n66), .CK(CLK), .RN(n37), .Q(outreg[8]) );
  DFFRQX2M \outreg_reg[7]  ( .D(n67), .CK(CLK), .RN(n37), .Q(outreg[7]) );
  DFFRQX2M \outreg_reg[6]  ( .D(n68), .CK(CLK), .RN(n37), .Q(outreg[6]) );
  DFFRQX2M \outreg_reg[5]  ( .D(n69), .CK(CLK), .RN(n37), .Q(outreg[5]) );
  DFFRQX2M \outreg_reg[4]  ( .D(n70), .CK(CLK), .RN(n37), .Q(outreg[4]) );
  DFFRQX2M \outreg_reg[3]  ( .D(n71), .CK(CLK), .RN(n37), .Q(outreg[3]) );
  DFFRQX2M \outreg_reg[2]  ( .D(n72), .CK(CLK), .RN(n37), .Q(outreg[2]) );
  DFFRQX2M \outreg_reg[1]  ( .D(n73), .CK(CLK), .RN(n37), .Q(outreg[1]) );
  DFFRQX2M \outreg_reg[0]  ( .D(n74), .CK(CLK), .RN(n37), .Q(outreg[0]) );
  INVX2M U34 ( .A(n40), .Y(n38) );
  INVX2M U36 ( .A(n40), .Y(n39) );
  INVX2M U37 ( .A(n36), .Y(n1) );
  BUFX2M U38 ( .A(n42), .Y(n40) );
  INVX2M U39 ( .A(n41), .Y(n37) );
  BUFX2M U40 ( .A(n42), .Y(n41) );
  BUFX2M U41 ( .A(n75), .Y(n35) );
  BUFX2M U42 ( .A(n75), .Y(n36) );
  INVX2M U43 ( .A(RST), .Y(n42) );
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
  wire   n1, n2;

  REG_32_0 R0 ( .CLK(CLK), .RST(n1), .regWrite(regWrite), .decOut_i(
        decOut_i[0]), .writeData(writeData_i), .outreg(R0_o) );
  REG_32_7 R1 ( .CLK(CLK), .RST(n1), .regWrite(regWrite), .decOut_i(
        decOut_i[1]), .writeData(writeData_i), .outreg(R1_o) );
  REG_32_6 R2 ( .CLK(CLK), .RST(n1), .regWrite(regWrite), .decOut_i(
        decOut_i[2]), .writeData(writeData_i), .outreg(R2_o) );
  REG_32_5 R3 ( .CLK(CLK), .RST(n1), .regWrite(regWrite), .decOut_i(
        decOut_i[3]), .writeData(writeData_i), .outreg(R3_o) );
  REG_32_4 R4 ( .CLK(CLK), .RST(n1), .regWrite(regWrite), .decOut_i(
        decOut_i[4]), .writeData(writeData_i), .outreg(R4_o) );
  REG_32_3 R5 ( .CLK(CLK), .RST(n1), .regWrite(regWrite), .decOut_i(
        decOut_i[5]), .writeData(writeData_i), .outreg(R5_o) );
  REG_32_2 R6 ( .CLK(CLK), .RST(n1), .regWrite(regWrite), .decOut_i(
        decOut_i[6]), .writeData(writeData_i), .outreg(R6_o) );
  REG_32_1 R7 ( .CLK(CLK), .RST(n1), .regWrite(regWrite), .decOut_i(
        decOut_i[7]), .writeData(writeData_i), .outreg(R7_o) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module MUX_0 ( R0_i, R1_i, R2_i, R3_i, R4_i, R5_i, R6_i, R7_i, select_i, 
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n11, n12, n13, n14, n139, n140, n141, n142, n143, n144,
         n145, n146;

  NAND4X12M U1 ( .A(n3), .B(n4), .C(n5), .D(n6), .Y(outBus_o[9]) );
  NAND4X12M U6 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(outBus_o[8]) );
  NAND4X12M U11 ( .A(n19), .B(n20), .C(n21), .D(n22), .Y(outBus_o[7]) );
  NAND4X12M U16 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(outBus_o[6]) );
  NAND4X12M U21 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(outBus_o[5]) );
  NAND4X12M U26 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(outBus_o[4]) );
  NAND4X12M U31 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(outBus_o[3]) );
  NAND4X12M U36 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(outBus_o[31]) );
  NAND4X12M U41 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(outBus_o[30]) );
  NAND4X12M U46 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(outBus_o[2]) );
  NAND4X12M U51 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(outBus_o[29]) );
  NAND4X12M U56 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(outBus_o[28]) );
  NAND4X12M U61 ( .A(n59), .B(n60), .C(n61), .D(n62), .Y(outBus_o[27]) );
  NAND4X12M U66 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(outBus_o[26]) );
  NAND4X12M U71 ( .A(n67), .B(n68), .C(n69), .D(n70), .Y(outBus_o[25]) );
  NAND4X12M U76 ( .A(n71), .B(n72), .C(n73), .D(n74), .Y(outBus_o[24]) );
  NAND4X12M U81 ( .A(n75), .B(n76), .C(n77), .D(n78), .Y(outBus_o[23]) );
  NAND4X12M U86 ( .A(n79), .B(n80), .C(n81), .D(n82), .Y(outBus_o[22]) );
  NAND4X12M U91 ( .A(n83), .B(n84), .C(n85), .D(n86), .Y(outBus_o[21]) );
  NAND4X12M U96 ( .A(n87), .B(n88), .C(n89), .D(n90), .Y(outBus_o[20]) );
  NAND4X12M U101 ( .A(n91), .B(n92), .C(n93), .D(n94), .Y(outBus_o[1]) );
  NAND4X12M U106 ( .A(n95), .B(n96), .C(n97), .D(n98), .Y(outBus_o[19]) );
  NAND4X12M U111 ( .A(n99), .B(n100), .C(n101), .D(n102), .Y(outBus_o[18]) );
  NAND4X12M U116 ( .A(n103), .B(n104), .C(n105), .D(n106), .Y(outBus_o[17]) );
  NAND4X12M U121 ( .A(n107), .B(n108), .C(n109), .D(n110), .Y(outBus_o[16]) );
  NAND4X12M U126 ( .A(n111), .B(n112), .C(n113), .D(n114), .Y(outBus_o[15]) );
  NAND4X12M U131 ( .A(n115), .B(n116), .C(n117), .D(n118), .Y(outBus_o[14]) );
  NAND4X12M U136 ( .A(n119), .B(n120), .C(n121), .D(n122), .Y(outBus_o[13]) );
  NAND4X12M U141 ( .A(n123), .B(n124), .C(n125), .D(n126), .Y(outBus_o[12]) );
  NAND4X12M U146 ( .A(n127), .B(n128), .C(n129), .D(n130), .Y(outBus_o[11]) );
  NAND4X12M U151 ( .A(n131), .B(n132), .C(n133), .D(n134), .Y(outBus_o[10]) );
  NAND4X12M U156 ( .A(n135), .B(n136), .C(n137), .D(n138), .Y(outBus_o[0]) );
  NOR3X4M U2 ( .A(select_i[1]), .B(select_i[2]), .C(n2), .Y(n11) );
  NOR3X4M U3 ( .A(n2), .B(select_i[2]), .C(n1), .Y(n12) );
  NOR3X4M U4 ( .A(select_i[1]), .B(select_i[2]), .C(select_i[0]), .Y(n13) );
  NOR3X4M U5 ( .A(select_i[0]), .B(select_i[2]), .C(n1), .Y(n14) );
  AND3X2M U7 ( .A(select_i[2]), .B(select_i[0]), .C(n1), .Y(n140) );
  AND3X2M U8 ( .A(select_i[2]), .B(select_i[0]), .C(n1), .Y(n139) );
  AND3X2M U9 ( .A(select_i[2]), .B(select_i[1]), .C(select_i[0]), .Y(n144) );
  AND3X2M U10 ( .A(select_i[2]), .B(select_i[1]), .C(select_i[0]), .Y(n143) );
  AND3X2M U12 ( .A(select_i[2]), .B(select_i[1]), .C(n2), .Y(n146) );
  AND3X2M U13 ( .A(select_i[2]), .B(n2), .C(n1), .Y(n142) );
  AND3X2M U14 ( .A(select_i[2]), .B(select_i[1]), .C(n2), .Y(n145) );
  AND3X2M U15 ( .A(select_i[2]), .B(n2), .C(n1), .Y(n141) );
  AND3X2M U17 ( .A(select_i[2]), .B(select_i[0]), .C(n1), .Y(n9) );
  AND3X2M U18 ( .A(select_i[2]), .B(select_i[1]), .C(select_i[0]), .Y(n7) );
  AND3X2M U19 ( .A(select_i[2]), .B(select_i[1]), .C(n2), .Y(n8) );
  AND3X2M U20 ( .A(select_i[2]), .B(n2), .C(n1), .Y(n10) );
  INVX2M U22 ( .A(select_i[1]), .Y(n1) );
  INVX2M U23 ( .A(select_i[0]), .Y(n2) );
  AOI22X1M U24 ( .A0(R1_i[0]), .A1(n11), .B0(R0_i[0]), .B1(n13), .Y(n135) );
  AOI22X1M U25 ( .A0(R3_i[0]), .A1(n12), .B0(R2_i[0]), .B1(n14), .Y(n136) );
  AOI22X1M U27 ( .A0(R5_i[0]), .A1(n139), .B0(R4_i[0]), .B1(n141), .Y(n137) );
  AOI22X1M U28 ( .A0(R1_i[1]), .A1(n11), .B0(R0_i[1]), .B1(n13), .Y(n91) );
  AOI22X1M U29 ( .A0(R3_i[1]), .A1(n12), .B0(R2_i[1]), .B1(n14), .Y(n92) );
  AOI22X1M U30 ( .A0(R5_i[1]), .A1(n9), .B0(R4_i[1]), .B1(n10), .Y(n93) );
  AOI22X1M U32 ( .A0(R1_i[2]), .A1(n11), .B0(R0_i[2]), .B1(n13), .Y(n47) );
  AOI22X1M U33 ( .A0(R3_i[2]), .A1(n12), .B0(R2_i[2]), .B1(n14), .Y(n48) );
  AOI22X1M U34 ( .A0(R5_i[2]), .A1(n140), .B0(R4_i[2]), .B1(n142), .Y(n49) );
  AOI22X1M U35 ( .A0(R1_i[3]), .A1(n11), .B0(R0_i[3]), .B1(n13), .Y(n35) );
  AOI22X1M U37 ( .A0(R3_i[3]), .A1(n12), .B0(R2_i[3]), .B1(n14), .Y(n36) );
  AOI22X1M U38 ( .A0(R5_i[3]), .A1(n140), .B0(R4_i[3]), .B1(n142), .Y(n37) );
  AOI22X1M U39 ( .A0(R1_i[4]), .A1(n11), .B0(R0_i[4]), .B1(n13), .Y(n31) );
  AOI22X1M U40 ( .A0(R3_i[4]), .A1(n12), .B0(R2_i[4]), .B1(n14), .Y(n32) );
  AOI22X1M U42 ( .A0(R5_i[4]), .A1(n9), .B0(R4_i[4]), .B1(n10), .Y(n33) );
  AOI22X1M U43 ( .A0(R1_i[5]), .A1(n11), .B0(R0_i[5]), .B1(n13), .Y(n27) );
  AOI22X1M U44 ( .A0(R3_i[5]), .A1(n12), .B0(R2_i[5]), .B1(n14), .Y(n28) );
  AOI22X1M U45 ( .A0(R5_i[5]), .A1(n139), .B0(R4_i[5]), .B1(n141), .Y(n29) );
  AOI22X1M U47 ( .A0(R1_i[6]), .A1(n11), .B0(R0_i[6]), .B1(n13), .Y(n23) );
  AOI22X1M U48 ( .A0(R3_i[6]), .A1(n12), .B0(R2_i[6]), .B1(n14), .Y(n24) );
  AOI22X1M U49 ( .A0(R5_i[6]), .A1(n140), .B0(R4_i[6]), .B1(n142), .Y(n25) );
  AOI22X1M U50 ( .A0(R1_i[7]), .A1(n11), .B0(R0_i[7]), .B1(n13), .Y(n19) );
  AOI22X1M U52 ( .A0(R3_i[7]), .A1(n12), .B0(R2_i[7]), .B1(n14), .Y(n20) );
  AOI22X1M U53 ( .A0(R5_i[7]), .A1(n9), .B0(R4_i[7]), .B1(n10), .Y(n21) );
  AOI22X1M U54 ( .A0(R1_i[8]), .A1(n11), .B0(R0_i[8]), .B1(n13), .Y(n15) );
  AOI22X1M U55 ( .A0(R3_i[8]), .A1(n12), .B0(R2_i[8]), .B1(n14), .Y(n16) );
  AOI22X1M U57 ( .A0(R5_i[8]), .A1(n139), .B0(R4_i[8]), .B1(n141), .Y(n17) );
  AOI22X1M U58 ( .A0(R1_i[9]), .A1(n11), .B0(R0_i[9]), .B1(n13), .Y(n3) );
  AOI22X1M U59 ( .A0(R3_i[9]), .A1(n12), .B0(R2_i[9]), .B1(n14), .Y(n4) );
  AOI22X1M U60 ( .A0(R5_i[9]), .A1(n140), .B0(R4_i[9]), .B1(n142), .Y(n5) );
  AOI22X1M U62 ( .A0(R1_i[10]), .A1(n11), .B0(R0_i[10]), .B1(n13), .Y(n131) );
  AOI22X1M U63 ( .A0(R3_i[10]), .A1(n12), .B0(R2_i[10]), .B1(n14), .Y(n132) );
  AOI22X1M U64 ( .A0(R5_i[10]), .A1(n140), .B0(R4_i[10]), .B1(n142), .Y(n133)
         );
  AOI22X1M U65 ( .A0(R1_i[11]), .A1(n11), .B0(R0_i[11]), .B1(n13), .Y(n127) );
  AOI22X1M U67 ( .A0(R3_i[11]), .A1(n12), .B0(R2_i[11]), .B1(n14), .Y(n128) );
  AOI22X1M U68 ( .A0(R5_i[11]), .A1(n9), .B0(R4_i[11]), .B1(n10), .Y(n129) );
  AOI22X1M U69 ( .A0(R1_i[12]), .A1(n11), .B0(R0_i[12]), .B1(n13), .Y(n123) );
  AOI22X1M U70 ( .A0(R3_i[12]), .A1(n12), .B0(R2_i[12]), .B1(n14), .Y(n124) );
  AOI22X1M U72 ( .A0(R5_i[12]), .A1(n139), .B0(R4_i[12]), .B1(n141), .Y(n125)
         );
  AOI22X1M U73 ( .A0(R1_i[13]), .A1(n11), .B0(R0_i[13]), .B1(n13), .Y(n119) );
  AOI22X1M U74 ( .A0(R3_i[13]), .A1(n12), .B0(R2_i[13]), .B1(n14), .Y(n120) );
  AOI22X1M U75 ( .A0(R5_i[13]), .A1(n140), .B0(R4_i[13]), .B1(n142), .Y(n121)
         );
  AOI22X1M U77 ( .A0(R1_i[14]), .A1(n11), .B0(R0_i[14]), .B1(n13), .Y(n115) );
  AOI22X1M U78 ( .A0(R3_i[14]), .A1(n12), .B0(R2_i[14]), .B1(n14), .Y(n116) );
  AOI22X1M U79 ( .A0(R5_i[14]), .A1(n9), .B0(R4_i[14]), .B1(n10), .Y(n117) );
  AOI22X1M U80 ( .A0(R1_i[15]), .A1(n11), .B0(R0_i[15]), .B1(n13), .Y(n111) );
  AOI22X1M U82 ( .A0(R3_i[15]), .A1(n12), .B0(R2_i[15]), .B1(n14), .Y(n112) );
  AOI22X1M U83 ( .A0(R5_i[15]), .A1(n139), .B0(R4_i[15]), .B1(n141), .Y(n113)
         );
  AOI22X1M U84 ( .A0(R1_i[16]), .A1(n11), .B0(R0_i[16]), .B1(n13), .Y(n107) );
  AOI22X1M U85 ( .A0(R3_i[16]), .A1(n12), .B0(R2_i[16]), .B1(n14), .Y(n108) );
  AOI22X1M U87 ( .A0(R5_i[16]), .A1(n140), .B0(R4_i[16]), .B1(n142), .Y(n109)
         );
  AOI22X1M U88 ( .A0(R1_i[17]), .A1(n11), .B0(R0_i[17]), .B1(n13), .Y(n103) );
  AOI22X1M U89 ( .A0(R3_i[17]), .A1(n12), .B0(R2_i[17]), .B1(n14), .Y(n104) );
  AOI22X1M U90 ( .A0(R5_i[17]), .A1(n9), .B0(R4_i[17]), .B1(n10), .Y(n105) );
  AOI22X1M U92 ( .A0(R1_i[18]), .A1(n11), .B0(R0_i[18]), .B1(n13), .Y(n99) );
  AOI22X1M U93 ( .A0(R3_i[18]), .A1(n12), .B0(R2_i[18]), .B1(n14), .Y(n100) );
  AOI22X1M U94 ( .A0(R5_i[18]), .A1(n139), .B0(R4_i[18]), .B1(n141), .Y(n101)
         );
  AOI22X1M U95 ( .A0(R1_i[19]), .A1(n11), .B0(R0_i[19]), .B1(n13), .Y(n95) );
  AOI22X1M U97 ( .A0(R3_i[19]), .A1(n12), .B0(R2_i[19]), .B1(n14), .Y(n96) );
  AOI22X1M U98 ( .A0(R5_i[19]), .A1(n140), .B0(R4_i[19]), .B1(n142), .Y(n97)
         );
  AOI22X1M U99 ( .A0(R1_i[20]), .A1(n11), .B0(R0_i[20]), .B1(n13), .Y(n87) );
  AOI22X1M U100 ( .A0(R3_i[20]), .A1(n12), .B0(R2_i[20]), .B1(n14), .Y(n88) );
  AOI22X1M U102 ( .A0(R5_i[20]), .A1(n139), .B0(R4_i[20]), .B1(n141), .Y(n89)
         );
  AOI22X1M U103 ( .A0(R1_i[21]), .A1(n11), .B0(R0_i[21]), .B1(n13), .Y(n83) );
  AOI22X1M U104 ( .A0(R3_i[21]), .A1(n12), .B0(R2_i[21]), .B1(n14), .Y(n84) );
  AOI22X1M U105 ( .A0(R5_i[21]), .A1(n140), .B0(R4_i[21]), .B1(n142), .Y(n85)
         );
  AOI22X1M U107 ( .A0(R1_i[22]), .A1(n11), .B0(R0_i[22]), .B1(n13), .Y(n79) );
  AOI22X1M U108 ( .A0(R3_i[22]), .A1(n12), .B0(R2_i[22]), .B1(n14), .Y(n80) );
  AOI22X1M U109 ( .A0(R5_i[22]), .A1(n9), .B0(R4_i[22]), .B1(n10), .Y(n81) );
  AOI22X1M U110 ( .A0(R1_i[23]), .A1(n11), .B0(R0_i[23]), .B1(n13), .Y(n75) );
  AOI22X1M U112 ( .A0(R3_i[23]), .A1(n12), .B0(R2_i[23]), .B1(n14), .Y(n76) );
  AOI22X1M U113 ( .A0(R5_i[23]), .A1(n139), .B0(R4_i[23]), .B1(n141), .Y(n77)
         );
  AOI22X1M U114 ( .A0(R1_i[24]), .A1(n11), .B0(R0_i[24]), .B1(n13), .Y(n71) );
  AOI22X1M U115 ( .A0(R3_i[24]), .A1(n12), .B0(R2_i[24]), .B1(n14), .Y(n72) );
  AOI22X1M U117 ( .A0(R5_i[24]), .A1(n140), .B0(R4_i[24]), .B1(n142), .Y(n73)
         );
  AOI22X1M U118 ( .A0(R1_i[25]), .A1(n11), .B0(R0_i[25]), .B1(n13), .Y(n67) );
  AOI22X1M U119 ( .A0(R3_i[25]), .A1(n12), .B0(R2_i[25]), .B1(n14), .Y(n68) );
  AOI22X1M U120 ( .A0(R5_i[25]), .A1(n9), .B0(R4_i[25]), .B1(n10), .Y(n69) );
  AOI22X1M U122 ( .A0(R1_i[26]), .A1(n11), .B0(R0_i[26]), .B1(n13), .Y(n63) );
  AOI22X1M U123 ( .A0(R3_i[26]), .A1(n12), .B0(R2_i[26]), .B1(n14), .Y(n64) );
  AOI22X1M U124 ( .A0(R5_i[26]), .A1(n139), .B0(R4_i[26]), .B1(n141), .Y(n65)
         );
  AOI22X1M U125 ( .A0(R1_i[27]), .A1(n11), .B0(R0_i[27]), .B1(n13), .Y(n59) );
  AOI22X1M U127 ( .A0(R3_i[27]), .A1(n12), .B0(R2_i[27]), .B1(n14), .Y(n60) );
  AOI22X1M U128 ( .A0(R5_i[27]), .A1(n140), .B0(R4_i[27]), .B1(n142), .Y(n61)
         );
  AOI22X1M U129 ( .A0(R1_i[28]), .A1(n11), .B0(R0_i[28]), .B1(n13), .Y(n55) );
  AOI22X1M U130 ( .A0(R3_i[28]), .A1(n12), .B0(R2_i[28]), .B1(n14), .Y(n56) );
  AOI22X1M U132 ( .A0(R5_i[28]), .A1(n9), .B0(R4_i[28]), .B1(n10), .Y(n57) );
  AOI22X1M U133 ( .A0(R1_i[29]), .A1(n11), .B0(R0_i[29]), .B1(n13), .Y(n51) );
  AOI22X1M U134 ( .A0(R3_i[29]), .A1(n12), .B0(R2_i[29]), .B1(n14), .Y(n52) );
  AOI22X1M U135 ( .A0(R5_i[29]), .A1(n139), .B0(R4_i[29]), .B1(n141), .Y(n53)
         );
  AOI22X1M U137 ( .A0(R1_i[30]), .A1(n11), .B0(R0_i[30]), .B1(n13), .Y(n43) );
  AOI22X1M U138 ( .A0(R3_i[30]), .A1(n12), .B0(R2_i[30]), .B1(n14), .Y(n44) );
  AOI22X1M U139 ( .A0(R5_i[30]), .A1(n9), .B0(R4_i[30]), .B1(n10), .Y(n45) );
  AOI22X1M U140 ( .A0(R1_i[31]), .A1(n11), .B0(R0_i[31]), .B1(n13), .Y(n39) );
  AOI22X1M U142 ( .A0(R3_i[31]), .A1(n12), .B0(R2_i[31]), .B1(n14), .Y(n40) );
  AOI22X1M U143 ( .A0(R5_i[31]), .A1(n139), .B0(R4_i[31]), .B1(n141), .Y(n41)
         );
  AOI22X1M U144 ( .A0(R7_i[0]), .A1(n143), .B0(R6_i[0]), .B1(n145), .Y(n138)
         );
  AOI22X1M U145 ( .A0(R7_i[1]), .A1(n7), .B0(R6_i[1]), .B1(n8), .Y(n94) );
  AOI22X1M U147 ( .A0(R7_i[2]), .A1(n144), .B0(R6_i[2]), .B1(n146), .Y(n50) );
  AOI22X1M U148 ( .A0(R7_i[3]), .A1(n144), .B0(R6_i[3]), .B1(n146), .Y(n38) );
  AOI22X1M U149 ( .A0(R7_i[4]), .A1(n7), .B0(R6_i[4]), .B1(n8), .Y(n34) );
  AOI22X1M U150 ( .A0(R7_i[5]), .A1(n143), .B0(R6_i[5]), .B1(n145), .Y(n30) );
  AOI22X1M U152 ( .A0(R7_i[6]), .A1(n144), .B0(R6_i[6]), .B1(n146), .Y(n26) );
  AOI22X1M U153 ( .A0(R7_i[7]), .A1(n7), .B0(R6_i[7]), .B1(n8), .Y(n22) );
  AOI22X1M U154 ( .A0(R7_i[8]), .A1(n143), .B0(R6_i[8]), .B1(n145), .Y(n18) );
  AOI22X1M U155 ( .A0(R7_i[9]), .A1(n144), .B0(R6_i[9]), .B1(n146), .Y(n6) );
  AOI22X1M U157 ( .A0(R7_i[10]), .A1(n144), .B0(R6_i[10]), .B1(n146), .Y(n134)
         );
  AOI22X1M U158 ( .A0(R7_i[11]), .A1(n7), .B0(R6_i[11]), .B1(n8), .Y(n130) );
  AOI22X1M U159 ( .A0(R7_i[12]), .A1(n143), .B0(R6_i[12]), .B1(n145), .Y(n126)
         );
  AOI22X1M U160 ( .A0(R7_i[13]), .A1(n144), .B0(R6_i[13]), .B1(n146), .Y(n122)
         );
  AOI22X1M U161 ( .A0(R7_i[14]), .A1(n7), .B0(R6_i[14]), .B1(n8), .Y(n118) );
  AOI22X1M U162 ( .A0(R7_i[15]), .A1(n143), .B0(R6_i[15]), .B1(n145), .Y(n114)
         );
  AOI22X1M U163 ( .A0(R7_i[16]), .A1(n144), .B0(R6_i[16]), .B1(n146), .Y(n110)
         );
  AOI22X1M U164 ( .A0(R7_i[17]), .A1(n7), .B0(R6_i[17]), .B1(n8), .Y(n106) );
  AOI22X1M U165 ( .A0(R7_i[18]), .A1(n143), .B0(R6_i[18]), .B1(n145), .Y(n102)
         );
  AOI22X1M U166 ( .A0(R7_i[19]), .A1(n144), .B0(R6_i[19]), .B1(n146), .Y(n98)
         );
  AOI22X1M U167 ( .A0(R7_i[20]), .A1(n143), .B0(R6_i[20]), .B1(n145), .Y(n90)
         );
  AOI22X1M U168 ( .A0(R7_i[21]), .A1(n144), .B0(R6_i[21]), .B1(n146), .Y(n86)
         );
  AOI22X1M U169 ( .A0(R7_i[22]), .A1(n7), .B0(R6_i[22]), .B1(n8), .Y(n82) );
  AOI22X1M U170 ( .A0(R7_i[23]), .A1(n143), .B0(R6_i[23]), .B1(n145), .Y(n78)
         );
  AOI22X1M U171 ( .A0(R7_i[24]), .A1(n144), .B0(R6_i[24]), .B1(n146), .Y(n74)
         );
  AOI22X1M U172 ( .A0(R7_i[25]), .A1(n7), .B0(R6_i[25]), .B1(n8), .Y(n70) );
  AOI22X1M U173 ( .A0(R7_i[26]), .A1(n143), .B0(R6_i[26]), .B1(n145), .Y(n66)
         );
  AOI22X1M U174 ( .A0(R7_i[27]), .A1(n144), .B0(R6_i[27]), .B1(n146), .Y(n62)
         );
  AOI22X1M U175 ( .A0(R7_i[28]), .A1(n7), .B0(R6_i[28]), .B1(n8), .Y(n58) );
  AOI22X1M U176 ( .A0(R7_i[29]), .A1(n143), .B0(R6_i[29]), .B1(n145), .Y(n54)
         );
  AOI22X1M U177 ( .A0(R7_i[30]), .A1(n7), .B0(R6_i[30]), .B1(n8), .Y(n46) );
  AOI22X1M U178 ( .A0(R7_i[31]), .A1(n143), .B0(R6_i[31]), .B1(n145), .Y(n42)
         );
endmodule


module MUX_1 ( R0_i, R1_i, R2_i, R3_i, R4_i, R5_i, R6_i, R7_i, select_i, 
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
  wire   n11, n12, n13, n14, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280;

  NAND4X12M U1 ( .A(n278), .B(n277), .C(n276), .D(n275), .Y(outBus_o[9]) );
  NAND4X12M U6 ( .A(n270), .B(n269), .C(n268), .D(n267), .Y(outBus_o[8]) );
  NAND4X12M U11 ( .A(n266), .B(n265), .C(n264), .D(n263), .Y(outBus_o[7]) );
  NAND4X12M U16 ( .A(n262), .B(n261), .C(n260), .D(n259), .Y(outBus_o[6]) );
  NAND4X12M U21 ( .A(n258), .B(n257), .C(n256), .D(n255), .Y(outBus_o[5]) );
  NAND4X12M U26 ( .A(n254), .B(n253), .C(n252), .D(n251), .Y(outBus_o[4]) );
  NAND4X12M U31 ( .A(n250), .B(n249), .C(n248), .D(n247), .Y(outBus_o[3]) );
  NAND4X12M U36 ( .A(n246), .B(n245), .C(n244), .D(n243), .Y(outBus_o[31]) );
  NAND4X12M U41 ( .A(n242), .B(n241), .C(n240), .D(n239), .Y(outBus_o[30]) );
  NAND4X12M U46 ( .A(n238), .B(n237), .C(n236), .D(n235), .Y(outBus_o[2]) );
  NAND4X12M U51 ( .A(n234), .B(n233), .C(n232), .D(n231), .Y(outBus_o[29]) );
  NAND4X12M U56 ( .A(n230), .B(n229), .C(n228), .D(n227), .Y(outBus_o[28]) );
  NAND4X12M U61 ( .A(n226), .B(n225), .C(n224), .D(n223), .Y(outBus_o[27]) );
  NAND4X12M U66 ( .A(n222), .B(n221), .C(n220), .D(n219), .Y(outBus_o[26]) );
  NAND4X12M U71 ( .A(n218), .B(n217), .C(n216), .D(n215), .Y(outBus_o[25]) );
  NAND4X12M U76 ( .A(n214), .B(n213), .C(n212), .D(n211), .Y(outBus_o[24]) );
  NAND4X12M U81 ( .A(n210), .B(n209), .C(n208), .D(n207), .Y(outBus_o[23]) );
  NAND4X12M U86 ( .A(n206), .B(n205), .C(n204), .D(n203), .Y(outBus_o[22]) );
  NAND4X12M U91 ( .A(n202), .B(n201), .C(n200), .D(n199), .Y(outBus_o[21]) );
  NAND4X12M U96 ( .A(n198), .B(n197), .C(n196), .D(n195), .Y(outBus_o[20]) );
  NAND4X12M U101 ( .A(n194), .B(n193), .C(n192), .D(n191), .Y(outBus_o[1]) );
  NAND4X12M U106 ( .A(n190), .B(n189), .C(n188), .D(n187), .Y(outBus_o[19]) );
  NAND4X12M U111 ( .A(n186), .B(n185), .C(n184), .D(n183), .Y(outBus_o[18]) );
  NAND4X12M U116 ( .A(n182), .B(n181), .C(n180), .D(n179), .Y(outBus_o[17]) );
  NAND4X12M U121 ( .A(n178), .B(n177), .C(n176), .D(n175), .Y(outBus_o[16]) );
  NAND4X12M U126 ( .A(n174), .B(n173), .C(n172), .D(n171), .Y(outBus_o[15]) );
  NAND4X12M U131 ( .A(n170), .B(n169), .C(n168), .D(n167), .Y(outBus_o[14]) );
  NAND4X12M U136 ( .A(n166), .B(n165), .C(n164), .D(n163), .Y(outBus_o[13]) );
  NAND4X12M U141 ( .A(n162), .B(n161), .C(n160), .D(n159), .Y(outBus_o[12]) );
  NAND4X12M U146 ( .A(n158), .B(n157), .C(n156), .D(n155), .Y(outBus_o[11]) );
  NAND4X12M U151 ( .A(n154), .B(n153), .C(n152), .D(n151), .Y(outBus_o[10]) );
  NAND4X12M U156 ( .A(n150), .B(n149), .C(n148), .D(n147), .Y(outBus_o[0]) );
  NOR3X4M U2 ( .A(select_i[1]), .B(select_i[2]), .C(n279), .Y(n11) );
  NOR3X4M U3 ( .A(n279), .B(select_i[2]), .C(n280), .Y(n12) );
  NOR3X4M U4 ( .A(select_i[1]), .B(select_i[2]), .C(select_i[0]), .Y(n13) );
  NOR3X4M U5 ( .A(select_i[0]), .B(select_i[2]), .C(n280), .Y(n14) );
  AND3X2M U7 ( .A(select_i[2]), .B(select_i[0]), .C(n280), .Y(n140) );
  AND3X2M U8 ( .A(select_i[2]), .B(select_i[0]), .C(n280), .Y(n139) );
  AND3X2M U9 ( .A(select_i[2]), .B(select_i[1]), .C(select_i[0]), .Y(n144) );
  AND3X2M U10 ( .A(select_i[2]), .B(select_i[1]), .C(select_i[0]), .Y(n143) );
  AND3X2M U12 ( .A(select_i[2]), .B(select_i[1]), .C(n279), .Y(n146) );
  AND3X2M U13 ( .A(select_i[2]), .B(n279), .C(n280), .Y(n142) );
  AND3X2M U14 ( .A(select_i[2]), .B(select_i[1]), .C(n279), .Y(n145) );
  AND3X2M U15 ( .A(select_i[2]), .B(n279), .C(n280), .Y(n141) );
  AND3X2M U17 ( .A(select_i[2]), .B(select_i[0]), .C(n280), .Y(n272) );
  AND3X2M U18 ( .A(select_i[2]), .B(select_i[1]), .C(select_i[0]), .Y(n274) );
  AND3X2M U19 ( .A(select_i[2]), .B(select_i[1]), .C(n279), .Y(n273) );
  AND3X2M U20 ( .A(select_i[2]), .B(n279), .C(n280), .Y(n271) );
  INVX2M U22 ( .A(select_i[1]), .Y(n280) );
  INVX2M U23 ( .A(select_i[0]), .Y(n279) );
  AOI22X1M U24 ( .A0(R1_i[0]), .A1(n11), .B0(R0_i[0]), .B1(n13), .Y(n150) );
  AOI22X1M U25 ( .A0(R3_i[0]), .A1(n12), .B0(R2_i[0]), .B1(n14), .Y(n149) );
  AOI22X1M U27 ( .A0(R5_i[0]), .A1(n139), .B0(R4_i[0]), .B1(n141), .Y(n148) );
  AOI22X1M U28 ( .A0(R1_i[1]), .A1(n11), .B0(R0_i[1]), .B1(n13), .Y(n194) );
  AOI22X1M U29 ( .A0(R3_i[1]), .A1(n12), .B0(R2_i[1]), .B1(n14), .Y(n193) );
  AOI22X1M U30 ( .A0(R5_i[1]), .A1(n272), .B0(R4_i[1]), .B1(n271), .Y(n192) );
  AOI22X1M U32 ( .A0(R1_i[2]), .A1(n11), .B0(R0_i[2]), .B1(n13), .Y(n238) );
  AOI22X1M U33 ( .A0(R3_i[2]), .A1(n12), .B0(R2_i[2]), .B1(n14), .Y(n237) );
  AOI22X1M U34 ( .A0(R5_i[2]), .A1(n140), .B0(R4_i[2]), .B1(n142), .Y(n236) );
  AOI22X1M U35 ( .A0(R1_i[3]), .A1(n11), .B0(R0_i[3]), .B1(n13), .Y(n250) );
  AOI22X1M U37 ( .A0(R3_i[3]), .A1(n12), .B0(R2_i[3]), .B1(n14), .Y(n249) );
  AOI22X1M U38 ( .A0(R5_i[3]), .A1(n140), .B0(R4_i[3]), .B1(n142), .Y(n248) );
  AOI22X1M U39 ( .A0(R1_i[4]), .A1(n11), .B0(R0_i[4]), .B1(n13), .Y(n254) );
  AOI22X1M U40 ( .A0(R3_i[4]), .A1(n12), .B0(R2_i[4]), .B1(n14), .Y(n253) );
  AOI22X1M U42 ( .A0(R5_i[4]), .A1(n272), .B0(R4_i[4]), .B1(n271), .Y(n252) );
  AOI22X1M U43 ( .A0(R1_i[5]), .A1(n11), .B0(R0_i[5]), .B1(n13), .Y(n258) );
  AOI22X1M U44 ( .A0(R3_i[5]), .A1(n12), .B0(R2_i[5]), .B1(n14), .Y(n257) );
  AOI22X1M U45 ( .A0(R5_i[5]), .A1(n139), .B0(R4_i[5]), .B1(n141), .Y(n256) );
  AOI22X1M U47 ( .A0(R1_i[6]), .A1(n11), .B0(R0_i[6]), .B1(n13), .Y(n262) );
  AOI22X1M U48 ( .A0(R3_i[6]), .A1(n12), .B0(R2_i[6]), .B1(n14), .Y(n261) );
  AOI22X1M U49 ( .A0(R5_i[6]), .A1(n140), .B0(R4_i[6]), .B1(n142), .Y(n260) );
  AOI22X1M U50 ( .A0(R1_i[7]), .A1(n11), .B0(R0_i[7]), .B1(n13), .Y(n266) );
  AOI22X1M U52 ( .A0(R3_i[7]), .A1(n12), .B0(R2_i[7]), .B1(n14), .Y(n265) );
  AOI22X1M U53 ( .A0(R5_i[7]), .A1(n272), .B0(R4_i[7]), .B1(n271), .Y(n264) );
  AOI22X1M U54 ( .A0(R1_i[8]), .A1(n11), .B0(R0_i[8]), .B1(n13), .Y(n270) );
  AOI22X1M U55 ( .A0(R3_i[8]), .A1(n12), .B0(R2_i[8]), .B1(n14), .Y(n269) );
  AOI22X1M U57 ( .A0(R5_i[8]), .A1(n139), .B0(R4_i[8]), .B1(n141), .Y(n268) );
  AOI22X1M U58 ( .A0(R1_i[9]), .A1(n11), .B0(R0_i[9]), .B1(n13), .Y(n278) );
  AOI22X1M U59 ( .A0(R3_i[9]), .A1(n12), .B0(R2_i[9]), .B1(n14), .Y(n277) );
  AOI22X1M U60 ( .A0(R5_i[9]), .A1(n140), .B0(R4_i[9]), .B1(n142), .Y(n276) );
  AOI22X1M U62 ( .A0(R1_i[10]), .A1(n11), .B0(R0_i[10]), .B1(n13), .Y(n154) );
  AOI22X1M U63 ( .A0(R3_i[10]), .A1(n12), .B0(R2_i[10]), .B1(n14), .Y(n153) );
  AOI22X1M U64 ( .A0(R5_i[10]), .A1(n140), .B0(R4_i[10]), .B1(n142), .Y(n152)
         );
  AOI22X1M U65 ( .A0(R1_i[11]), .A1(n11), .B0(R0_i[11]), .B1(n13), .Y(n158) );
  AOI22X1M U67 ( .A0(R3_i[11]), .A1(n12), .B0(R2_i[11]), .B1(n14), .Y(n157) );
  AOI22X1M U68 ( .A0(R5_i[11]), .A1(n272), .B0(R4_i[11]), .B1(n271), .Y(n156)
         );
  AOI22X1M U69 ( .A0(R1_i[12]), .A1(n11), .B0(R0_i[12]), .B1(n13), .Y(n162) );
  AOI22X1M U70 ( .A0(R3_i[12]), .A1(n12), .B0(R2_i[12]), .B1(n14), .Y(n161) );
  AOI22X1M U72 ( .A0(R5_i[12]), .A1(n139), .B0(R4_i[12]), .B1(n141), .Y(n160)
         );
  AOI22X1M U73 ( .A0(R1_i[13]), .A1(n11), .B0(R0_i[13]), .B1(n13), .Y(n166) );
  AOI22X1M U74 ( .A0(R3_i[13]), .A1(n12), .B0(R2_i[13]), .B1(n14), .Y(n165) );
  AOI22X1M U75 ( .A0(R5_i[13]), .A1(n140), .B0(R4_i[13]), .B1(n142), .Y(n164)
         );
  AOI22X1M U77 ( .A0(R1_i[14]), .A1(n11), .B0(R0_i[14]), .B1(n13), .Y(n170) );
  AOI22X1M U78 ( .A0(R3_i[14]), .A1(n12), .B0(R2_i[14]), .B1(n14), .Y(n169) );
  AOI22X1M U79 ( .A0(R5_i[14]), .A1(n272), .B0(R4_i[14]), .B1(n271), .Y(n168)
         );
  AOI22X1M U80 ( .A0(R1_i[15]), .A1(n11), .B0(R0_i[15]), .B1(n13), .Y(n174) );
  AOI22X1M U82 ( .A0(R3_i[15]), .A1(n12), .B0(R2_i[15]), .B1(n14), .Y(n173) );
  AOI22X1M U83 ( .A0(R5_i[15]), .A1(n139), .B0(R4_i[15]), .B1(n141), .Y(n172)
         );
  AOI22X1M U84 ( .A0(R1_i[16]), .A1(n11), .B0(R0_i[16]), .B1(n13), .Y(n178) );
  AOI22X1M U85 ( .A0(R3_i[16]), .A1(n12), .B0(R2_i[16]), .B1(n14), .Y(n177) );
  AOI22X1M U87 ( .A0(R5_i[16]), .A1(n140), .B0(R4_i[16]), .B1(n142), .Y(n176)
         );
  AOI22X1M U88 ( .A0(R1_i[17]), .A1(n11), .B0(R0_i[17]), .B1(n13), .Y(n182) );
  AOI22X1M U89 ( .A0(R3_i[17]), .A1(n12), .B0(R2_i[17]), .B1(n14), .Y(n181) );
  AOI22X1M U90 ( .A0(R5_i[17]), .A1(n272), .B0(R4_i[17]), .B1(n271), .Y(n180)
         );
  AOI22X1M U92 ( .A0(R1_i[18]), .A1(n11), .B0(R0_i[18]), .B1(n13), .Y(n186) );
  AOI22X1M U93 ( .A0(R3_i[18]), .A1(n12), .B0(R2_i[18]), .B1(n14), .Y(n185) );
  AOI22X1M U94 ( .A0(R5_i[18]), .A1(n139), .B0(R4_i[18]), .B1(n141), .Y(n184)
         );
  AOI22X1M U95 ( .A0(R1_i[19]), .A1(n11), .B0(R0_i[19]), .B1(n13), .Y(n190) );
  AOI22X1M U97 ( .A0(R3_i[19]), .A1(n12), .B0(R2_i[19]), .B1(n14), .Y(n189) );
  AOI22X1M U98 ( .A0(R5_i[19]), .A1(n140), .B0(R4_i[19]), .B1(n142), .Y(n188)
         );
  AOI22X1M U99 ( .A0(R1_i[20]), .A1(n11), .B0(R0_i[20]), .B1(n13), .Y(n198) );
  AOI22X1M U100 ( .A0(R3_i[20]), .A1(n12), .B0(R2_i[20]), .B1(n14), .Y(n197)
         );
  AOI22X1M U102 ( .A0(R5_i[20]), .A1(n139), .B0(R4_i[20]), .B1(n141), .Y(n196)
         );
  AOI22X1M U103 ( .A0(R1_i[21]), .A1(n11), .B0(R0_i[21]), .B1(n13), .Y(n202)
         );
  AOI22X1M U104 ( .A0(R3_i[21]), .A1(n12), .B0(R2_i[21]), .B1(n14), .Y(n201)
         );
  AOI22X1M U105 ( .A0(R5_i[21]), .A1(n140), .B0(R4_i[21]), .B1(n142), .Y(n200)
         );
  AOI22X1M U107 ( .A0(R1_i[22]), .A1(n11), .B0(R0_i[22]), .B1(n13), .Y(n206)
         );
  AOI22X1M U108 ( .A0(R3_i[22]), .A1(n12), .B0(R2_i[22]), .B1(n14), .Y(n205)
         );
  AOI22X1M U109 ( .A0(R5_i[22]), .A1(n272), .B0(R4_i[22]), .B1(n271), .Y(n204)
         );
  AOI22X1M U110 ( .A0(R1_i[23]), .A1(n11), .B0(R0_i[23]), .B1(n13), .Y(n210)
         );
  AOI22X1M U112 ( .A0(R3_i[23]), .A1(n12), .B0(R2_i[23]), .B1(n14), .Y(n209)
         );
  AOI22X1M U113 ( .A0(R5_i[23]), .A1(n139), .B0(R4_i[23]), .B1(n141), .Y(n208)
         );
  AOI22X1M U114 ( .A0(R1_i[24]), .A1(n11), .B0(R0_i[24]), .B1(n13), .Y(n214)
         );
  AOI22X1M U115 ( .A0(R3_i[24]), .A1(n12), .B0(R2_i[24]), .B1(n14), .Y(n213)
         );
  AOI22X1M U117 ( .A0(R5_i[24]), .A1(n140), .B0(R4_i[24]), .B1(n142), .Y(n212)
         );
  AOI22X1M U118 ( .A0(R1_i[25]), .A1(n11), .B0(R0_i[25]), .B1(n13), .Y(n218)
         );
  AOI22X1M U119 ( .A0(R3_i[25]), .A1(n12), .B0(R2_i[25]), .B1(n14), .Y(n217)
         );
  AOI22X1M U120 ( .A0(R5_i[25]), .A1(n272), .B0(R4_i[25]), .B1(n271), .Y(n216)
         );
  AOI22X1M U122 ( .A0(R1_i[26]), .A1(n11), .B0(R0_i[26]), .B1(n13), .Y(n222)
         );
  AOI22X1M U123 ( .A0(R3_i[26]), .A1(n12), .B0(R2_i[26]), .B1(n14), .Y(n221)
         );
  AOI22X1M U124 ( .A0(R5_i[26]), .A1(n139), .B0(R4_i[26]), .B1(n141), .Y(n220)
         );
  AOI22X1M U125 ( .A0(R1_i[27]), .A1(n11), .B0(R0_i[27]), .B1(n13), .Y(n226)
         );
  AOI22X1M U127 ( .A0(R3_i[27]), .A1(n12), .B0(R2_i[27]), .B1(n14), .Y(n225)
         );
  AOI22X1M U128 ( .A0(R5_i[27]), .A1(n140), .B0(R4_i[27]), .B1(n142), .Y(n224)
         );
  AOI22X1M U129 ( .A0(R1_i[28]), .A1(n11), .B0(R0_i[28]), .B1(n13), .Y(n230)
         );
  AOI22X1M U130 ( .A0(R3_i[28]), .A1(n12), .B0(R2_i[28]), .B1(n14), .Y(n229)
         );
  AOI22X1M U132 ( .A0(R5_i[28]), .A1(n272), .B0(R4_i[28]), .B1(n271), .Y(n228)
         );
  AOI22X1M U133 ( .A0(R1_i[29]), .A1(n11), .B0(R0_i[29]), .B1(n13), .Y(n234)
         );
  AOI22X1M U134 ( .A0(R3_i[29]), .A1(n12), .B0(R2_i[29]), .B1(n14), .Y(n233)
         );
  AOI22X1M U135 ( .A0(R5_i[29]), .A1(n139), .B0(R4_i[29]), .B1(n141), .Y(n232)
         );
  AOI22X1M U137 ( .A0(R1_i[30]), .A1(n11), .B0(R0_i[30]), .B1(n13), .Y(n242)
         );
  AOI22X1M U138 ( .A0(R3_i[30]), .A1(n12), .B0(R2_i[30]), .B1(n14), .Y(n241)
         );
  AOI22X1M U139 ( .A0(R5_i[30]), .A1(n272), .B0(R4_i[30]), .B1(n271), .Y(n240)
         );
  AOI22X1M U140 ( .A0(R1_i[31]), .A1(n11), .B0(R0_i[31]), .B1(n13), .Y(n246)
         );
  AOI22X1M U142 ( .A0(R3_i[31]), .A1(n12), .B0(R2_i[31]), .B1(n14), .Y(n245)
         );
  AOI22X1M U143 ( .A0(R5_i[31]), .A1(n139), .B0(R4_i[31]), .B1(n141), .Y(n244)
         );
  AOI22X1M U144 ( .A0(R7_i[0]), .A1(n143), .B0(R6_i[0]), .B1(n145), .Y(n147)
         );
  AOI22X1M U145 ( .A0(R7_i[1]), .A1(n274), .B0(R6_i[1]), .B1(n273), .Y(n191)
         );
  AOI22X1M U147 ( .A0(R7_i[2]), .A1(n144), .B0(R6_i[2]), .B1(n146), .Y(n235)
         );
  AOI22X1M U148 ( .A0(R7_i[3]), .A1(n144), .B0(R6_i[3]), .B1(n146), .Y(n247)
         );
  AOI22X1M U149 ( .A0(R7_i[4]), .A1(n274), .B0(R6_i[4]), .B1(n273), .Y(n251)
         );
  AOI22X1M U150 ( .A0(R7_i[5]), .A1(n143), .B0(R6_i[5]), .B1(n145), .Y(n255)
         );
  AOI22X1M U152 ( .A0(R7_i[6]), .A1(n144), .B0(R6_i[6]), .B1(n146), .Y(n259)
         );
  AOI22X1M U153 ( .A0(R7_i[7]), .A1(n274), .B0(R6_i[7]), .B1(n273), .Y(n263)
         );
  AOI22X1M U154 ( .A0(R7_i[8]), .A1(n143), .B0(R6_i[8]), .B1(n145), .Y(n267)
         );
  AOI22X1M U155 ( .A0(R7_i[9]), .A1(n144), .B0(R6_i[9]), .B1(n146), .Y(n275)
         );
  AOI22X1M U157 ( .A0(R7_i[10]), .A1(n144), .B0(R6_i[10]), .B1(n146), .Y(n151)
         );
  AOI22X1M U158 ( .A0(R7_i[11]), .A1(n274), .B0(R6_i[11]), .B1(n273), .Y(n155)
         );
  AOI22X1M U159 ( .A0(R7_i[12]), .A1(n143), .B0(R6_i[12]), .B1(n145), .Y(n159)
         );
  AOI22X1M U160 ( .A0(R7_i[13]), .A1(n144), .B0(R6_i[13]), .B1(n146), .Y(n163)
         );
  AOI22X1M U161 ( .A0(R7_i[14]), .A1(n274), .B0(R6_i[14]), .B1(n273), .Y(n167)
         );
  AOI22X1M U162 ( .A0(R7_i[15]), .A1(n143), .B0(R6_i[15]), .B1(n145), .Y(n171)
         );
  AOI22X1M U163 ( .A0(R7_i[16]), .A1(n144), .B0(R6_i[16]), .B1(n146), .Y(n175)
         );
  AOI22X1M U164 ( .A0(R7_i[17]), .A1(n274), .B0(R6_i[17]), .B1(n273), .Y(n179)
         );
  AOI22X1M U165 ( .A0(R7_i[18]), .A1(n143), .B0(R6_i[18]), .B1(n145), .Y(n183)
         );
  AOI22X1M U166 ( .A0(R7_i[19]), .A1(n144), .B0(R6_i[19]), .B1(n146), .Y(n187)
         );
  AOI22X1M U167 ( .A0(R7_i[20]), .A1(n143), .B0(R6_i[20]), .B1(n145), .Y(n195)
         );
  AOI22X1M U168 ( .A0(R7_i[21]), .A1(n144), .B0(R6_i[21]), .B1(n146), .Y(n199)
         );
  AOI22X1M U169 ( .A0(R7_i[22]), .A1(n274), .B0(R6_i[22]), .B1(n273), .Y(n203)
         );
  AOI22X1M U170 ( .A0(R7_i[23]), .A1(n143), .B0(R6_i[23]), .B1(n145), .Y(n207)
         );
  AOI22X1M U171 ( .A0(R7_i[24]), .A1(n144), .B0(R6_i[24]), .B1(n146), .Y(n211)
         );
  AOI22X1M U172 ( .A0(R7_i[25]), .A1(n274), .B0(R6_i[25]), .B1(n273), .Y(n215)
         );
  AOI22X1M U173 ( .A0(R7_i[26]), .A1(n143), .B0(R6_i[26]), .B1(n145), .Y(n219)
         );
  AOI22X1M U174 ( .A0(R7_i[27]), .A1(n144), .B0(R6_i[27]), .B1(n146), .Y(n223)
         );
  AOI22X1M U175 ( .A0(R7_i[28]), .A1(n274), .B0(R6_i[28]), .B1(n273), .Y(n227)
         );
  AOI22X1M U176 ( .A0(R7_i[29]), .A1(n143), .B0(R6_i[29]), .B1(n145), .Y(n231)
         );
  AOI22X1M U177 ( .A0(R7_i[30]), .A1(n274), .B0(R6_i[30]), .B1(n273), .Y(n239)
         );
  AOI22X1M U178 ( .A0(R7_i[31]), .A1(n143), .B0(R6_i[31]), .B1(n145), .Y(n243)
         );
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:0] dec_o;
  wire   [31:0] R0;
  wire   [31:0] R1;
  wire   [31:0] R2;
  wire   [31:0] R3;
  wire   [31:0] R4;
  wire   [31:0] R5;
  wire   [31:0] R6;
  wire   [31:0] R7;

  DECODER decoder ( .destreg_i({n6, n5, n4}), .destreg_o(dec_o) );
  REG_SET set ( .CLK(CLK), .RST(RST), .regWrite(regWrite), .decOut_i(dec_o), 
        .writeData_i(writeData), .R0_o(R0), .R1_o(R1), .R2_o(R2), .R3_o(R3), 
        .R4_o(R4), .R5_o(R5), .R6_o(R6), .R7_o(R7) );
  MUX_0 m1 ( .R0_i(R0), .R1_i(R1), .R2_i(R2), .R3_i(R3), .R4_i(R4), .R5_i(R5), 
        .R6_i(R6), .R7_i(R7), .select_i({n9, n8, n7}), .outBus_o(outBusA) );
  MUX_1 m2 ( .R0_i(R0), .R1_i(R1), .R2_i(R2), .R3_i(R3), .R4_i(R4), .R5_i(R5), 
        .R6_i(R6), .R7_i(R7), .select_i({n3, n2, n1}), .outBus_o(outBusB) );
  BUFX2M U1 ( .A(srcRegB[2]), .Y(n3) );
  BUFX2M U2 ( .A(srcRegA[2]), .Y(n9) );
  BUFX2M U3 ( .A(srcRegB[0]), .Y(n1) );
  BUFX2M U4 ( .A(srcRegA[0]), .Y(n7) );
  BUFX2M U5 ( .A(srcRegB[1]), .Y(n2) );
  BUFX2M U6 ( .A(srcRegA[1]), .Y(n8) );
  BUFX2M U7 ( .A(destReg[2]), .Y(n6) );
  BUFX2M U8 ( .A(destReg[0]), .Y(n4) );
  BUFX2M U9 ( .A(destReg[1]), .Y(n5) );
endmodule

