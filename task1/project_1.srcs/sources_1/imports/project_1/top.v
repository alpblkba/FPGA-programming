/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Mar 12 18:11:13 2025
/////////////////////////////////////////////////////////////


module blackbox0_W3 ( clk, rst, in, out );
  input [2:0] in;
  output [2:0] out;
  input clk, rst;


  DFFNRX1 out_reg_2_ ( .D(in[2]), .CP(clk), .RST_N(rst), .Q(out[2]) );
  DFFNRX1 out_reg_1_ ( .D(in[1]), .CP(clk), .RST_N(rst), .Q(out[1]) );
  DFFNRX1 out_reg_0_ ( .D(in[0]), .CP(clk), .RST_N(rst), .Q(out[0]) );
endmodule


module blackbox0_W13 ( clk, rst, in, out );
  input [12:0] in;
  output [12:0] out;
  input clk, rst;


  DFFNRX1 out_reg_12_ ( .D(in[12]), .CP(clk), .RST_N(rst), .Q(out[12]) );
  DFFNRX1 out_reg_11_ ( .D(in[11]), .CP(clk), .RST_N(rst), .Q(out[11]) );
  DFFNRX1 out_reg_10_ ( .D(in[10]), .CP(clk), .RST_N(rst), .Q(out[10]) );
  DFFNRX1 out_reg_9_ ( .D(in[9]), .CP(clk), .RST_N(rst), .Q(out[9]) );
  DFFNRX1 out_reg_8_ ( .D(in[8]), .CP(clk), .RST_N(rst), .Q(out[8]) );
  DFFNRX1 out_reg_7_ ( .D(in[7]), .CP(clk), .RST_N(rst), .Q(out[7]) );
  DFFNRX1 out_reg_6_ ( .D(in[6]), .CP(clk), .RST_N(rst), .Q(out[6]) );
  DFFNRX1 out_reg_5_ ( .D(in[5]), .CP(clk), .RST_N(rst), .Q(out[5]) );
  DFFNRX1 out_reg_4_ ( .D(in[4]), .CP(clk), .RST_N(rst), .Q(out[4]) );
  DFFNRX1 out_reg_3_ ( .D(in[3]), .CP(clk), .RST_N(rst), .Q(out[3]) );
  DFFNRX1 out_reg_2_ ( .D(in[2]), .CP(clk), .RST_N(rst), .Q(out[2]) );
  DFFNRX1 out_reg_1_ ( .D(in[1]), .CP(clk), .RST_N(rst), .Q(out[1]) );
  DFFNRX1 out_reg_0_ ( .D(in[0]), .CP(clk), .RST_N(rst), .Q(out[0]) );
endmodule


module blackbox0_W8 ( clk, rst, in, out );
  input [7:0] in;
  output [7:0] out;
  input clk, rst;


  DFFNRX1 out_reg_7_ ( .D(in[7]), .CP(clk), .RST_N(rst), .Q(out[7]) );
  DFFNRX1 out_reg_6_ ( .D(in[6]), .CP(clk), .RST_N(rst), .Q(out[6]) );
  DFFNRX1 out_reg_5_ ( .D(in[5]), .CP(clk), .RST_N(rst), .Q(out[5]) );
  DFFNRX1 out_reg_4_ ( .D(in[4]), .CP(clk), .RST_N(rst), .Q(out[4]) );
  DFFNRX1 out_reg_3_ ( .D(in[3]), .CP(clk), .RST_N(rst), .Q(out[3]) );
  DFFNRX1 out_reg_2_ ( .D(in[2]), .CP(clk), .RST_N(rst), .Q(out[2]) );
  DFFNRX1 out_reg_0_ ( .D(in[0]), .CP(clk), .RST_N(rst), .Q(out[0]) );
endmodule


module blackbox0_W19_1 ( clk, rst, in, out );
  input [18:0] in;
  output [18:0] out;
  input clk, rst;


  DFFNRX1 out_reg_18_ ( .D(in[18]), .CP(clk), .RST_N(rst), .Q(out[18]) );
  DFFNRX1 out_reg_17_ ( .D(in[17]), .CP(clk), .RST_N(rst), .Q(out[17]) );
  DFFNRX1 out_reg_16_ ( .D(in[16]), .CP(clk), .RST_N(rst), .Q(out[16]) );
  DFFNRX1 out_reg_15_ ( .D(in[15]), .CP(clk), .RST_N(rst), .Q(out[15]) );
  DFFNRX1 out_reg_14_ ( .D(in[14]), .CP(clk), .RST_N(rst), .Q(out[14]) );
  DFFNRX1 out_reg_13_ ( .D(in[13]), .CP(clk), .RST_N(rst), .Q(out[13]) );
  DFFNRX1 out_reg_12_ ( .D(in[12]), .CP(clk), .RST_N(rst), .Q(out[12]) );
  DFFNRX1 out_reg_11_ ( .D(in[11]), .CP(clk), .RST_N(rst), .Q(out[11]) );
  DFFNRX1 out_reg_10_ ( .D(in[10]), .CP(clk), .RST_N(rst), .Q(out[10]) );
  DFFNRX1 out_reg_9_ ( .D(in[9]), .CP(clk), .RST_N(rst), .Q(out[9]) );
  DFFNRX1 out_reg_8_ ( .D(in[8]), .CP(clk), .RST_N(rst), .Q(out[8]) );
  DFFNRX1 out_reg_7_ ( .D(in[7]), .CP(clk), .RST_N(rst), .Q(out[7]) );
  DFFNRX1 out_reg_6_ ( .D(in[6]), .CP(clk), .RST_N(rst), .Q(out[6]) );
  DFFNRX1 out_reg_5_ ( .D(in[5]), .CP(clk), .RST_N(rst), .Q(out[5]) );
  DFFNRX1 out_reg_4_ ( .D(in[4]), .CP(clk), .RST_N(rst), .Q(out[4]) );
  DFFNRX1 out_reg_3_ ( .D(in[3]), .CP(clk), .RST_N(rst), .Q(out[3]) );
  DFFNRX1 out_reg_2_ ( .D(in[2]), .CP(clk), .RST_N(rst), .Q(out[2]) );
  DFFNRX1 out_reg_1_ ( .D(in[1]), .CP(clk), .RST_N(rst), .Q(out[1]) );
  DFFNRX1 out_reg_0_ ( .D(in[0]), .CP(clk), .RST_N(rst), .Q(out[0]) );
endmodule


module blackbox0_W1 ( clk, rst, in, out );
  input [0:0] in;
  output [0:0] out;
  input clk, rst;


  DFFNRX1 out_reg_0_ ( .D(in[0]), .CP(clk), .RST_N(rst), .Q(out[0]) );
endmodule


module blackbox1_W3_MAX6 ( en, state, stateNext );
  input [2:0] state;
  output [2:0] stateNext;
  input en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  INVX1 U3 ( .IN(state[1]), .OUT(n1) );
  INVX1 U4 ( .IN(n10), .OUT(n2) );
  INVX1 U5 ( .IN(n2), .OUT(n3) );
  INVX1 U6 ( .IN(state[1]), .OUT(n4) );
  INVX1 U7 ( .IN(state[1]), .OUT(n5) );
  INVX1 U8 ( .IN(n3), .OUT(n6) );
  NOR2 U9 ( .IN1(state[0]), .IN2(en), .OUT(n9) );
  NAND2 U10 ( .IN1(state[0]), .IN2(en), .OUT(n10) );
  NAND2 U11 ( .IN1(state[1]), .IN2(state[2]), .OUT(n7) );
  NAND2 U12 ( .IN1(n3), .IN2(n7), .OUT(n8) );
  NOR2 U13 ( .IN1(n9), .IN2(n8), .OUT(stateNext[0]) );
  NAND2 U14 ( .IN1(n6), .IN2(n1), .OUT(n12) );
  NOR2 U15 ( .IN1(state[2]), .IN2(n5), .OUT(n13) );
  NAND2 U16 ( .IN1(n13), .IN2(n10), .OUT(n11) );
  NAND2 U17 ( .IN1(n12), .IN2(n11), .OUT(stateNext[1]) );
  NAND2 U18 ( .IN1(n6), .IN2(n13), .OUT(n15) );
  NAND2 U19 ( .IN1(state[2]), .IN2(n4), .OUT(n14) );
  NAND2 U20 ( .IN1(n15), .IN2(n14), .OUT(stateNext[2]) );
endmodule



    module blackbox2_ST_W3_IN0_W4_IN1_W4_IN2_W4_IN3_W8_OUT0_W5_OUT1_W8_OUT2_W4_OUT3_W4 ( 
        en, state, in0, in1, in2, in3, out0, out1, out2, out3 );
  input [2:0] state;
  input [3:0] in0;
  input [3:0] in1;
  input [3:0] in2;
  input [7:0] in3;
  output [4:0] out0;
  output [7:0] out1;
  output [3:0] out2;
  output [3:0] out3;
  input en;
  wire   n68, n69, \out3[2] , \out30[1] , \out3[0] , \out3[3] , n70, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n17, n20, n21, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;
  assign out2[2] = \out3[2] ;
  assign out3[2] = \out3[2] ;
  assign out2[0] = \out3[0] ;
  assign out3[0] = \out3[0] ;
  assign out2[3] = \out3[3] ;
  assign out3[3] = \out3[3] ;
  assign out3[1] = out2[1];

  INVX1 U3 ( .IN(n54), .OUT(n1) );
  INVX1 U4 ( .IN(n1), .OUT(n2) );
  INVX1 U5 ( .IN(n1), .OUT(n3) );
  INVX1 U6 ( .IN(n36), .OUT(n4) );
  INVX1 U7 ( .IN(n36), .OUT(n5) );
  INVX1 U8 ( .IN(state[0]), .OUT(n6) );
  INVX1 U9 ( .IN(state[0]), .OUT(n7) );
  INVX1 U10 ( .IN(state[0]), .OUT(n8) );
  INVX1 U11 ( .IN(n54), .OUT(n9) );
  INVX1 U12 ( .IN(n9), .OUT(n10) );
  INVX1 U13 ( .IN(n9), .OUT(n11) );
  INVX1 U14 ( .IN(state[1]), .OUT(n12) );
  AND2 U15 ( .IN1(n30), .IN2(n29), .OUT(\out30[1] ) );
  INVX1 U16 ( .IN(\out30[1] ), .OUT(out2[1]) );
  AND2 U17 ( .IN1(n44), .IN2(n43), .OUT(n69) );
  INVX1 U18 ( .IN(n69), .OUT(\out3[2] ) );
  AND2 U19 ( .IN1(n10), .IN2(in3[6]), .OUT(out1[6]) );
  AND2 U20 ( .IN1(n35), .IN2(n34), .OUT(n70) );
  INVX1 U21 ( .IN(n70), .OUT(\out3[0] ) );
  AND2 U22 ( .IN1(n51), .IN2(n50), .OUT(n68) );
  INVX1 U23 ( .IN(n68), .OUT(n17) );
  INVX1 U24 ( .IN(n68), .OUT(\out3[3] ) );
  AND2 U25 ( .IN1(n2), .IN2(in3[5]), .OUT(out1[5]) );
  INVX1 U26 ( .IN(\out30[1] ), .OUT(n20) );
  INVX1 U27 ( .IN(n69), .OUT(n21) );
  AND2 U28 ( .IN1(n20), .IN2(n7), .OUT(out1[1]) );
  AND2 U29 ( .IN1(n11), .IN2(in3[4]), .OUT(out1[4]) );
  INVX1 U30 ( .IN(n70), .OUT(n24) );
  NAND2 U31 ( .IN1(en), .IN2(state[2]), .OUT(n25) );
  NOR2 U32 ( .IN1(state[1]), .IN2(n25), .OUT(n65) );
  NAND2 U33 ( .IN1(n65), .IN2(in2[1]), .OUT(n30) );
  NOR2 U34 ( .IN1(state[2]), .IN2(n12), .OUT(n62) );
  NAND2 U35 ( .IN1(in1[1]), .IN2(n62), .OUT(n27) );
  NOR2 U36 ( .IN1(state[2]), .IN2(state[1]), .OUT(n57) );
  NAND2 U37 ( .IN1(in0[1]), .IN2(n57), .OUT(n26) );
  NAND2 U38 ( .IN1(n27), .IN2(n26), .OUT(n28) );
  NAND2 U39 ( .IN1(en), .IN2(n28), .OUT(n29) );
  NAND2 U40 ( .IN1(n65), .IN2(in2[0]), .OUT(n35) );
  NAND2 U41 ( .IN1(in1[0]), .IN2(n62), .OUT(n32) );
  NAND2 U42 ( .IN1(in0[0]), .IN2(n57), .OUT(n31) );
  NAND2 U43 ( .IN1(n32), .IN2(n31), .OUT(n33) );
  NAND2 U44 ( .IN1(en), .IN2(n33), .OUT(n34) );
  NAND2 U45 ( .IN1(state[2]), .IN2(state[1]), .OUT(n37) );
  NAND2 U46 ( .IN1(state[0]), .IN2(en), .OUT(n36) );
  NAND2 U47 ( .IN1(n37), .IN2(n5), .OUT(n61) );
  INVX1 U48 ( .IN(n61), .OUT(n54) );
  NAND2 U49 ( .IN1(in3[0]), .IN2(n11), .OUT(n39) );
  NAND2 U50 ( .IN1(n24), .IN2(n8), .OUT(n38) );
  NAND2 U51 ( .IN1(n39), .IN2(n38), .OUT(out1[0]) );
  NAND2 U52 ( .IN1(n65), .IN2(in2[2]), .OUT(n44) );
  NAND2 U53 ( .IN1(in1[2]), .IN2(n62), .OUT(n41) );
  NAND2 U54 ( .IN1(in0[2]), .IN2(n57), .OUT(n40) );
  NAND2 U55 ( .IN1(n41), .IN2(n40), .OUT(n42) );
  NAND2 U56 ( .IN1(en), .IN2(n42), .OUT(n43) );
  NAND2 U57 ( .IN1(in3[2]), .IN2(n10), .OUT(n46) );
  NAND2 U58 ( .IN1(n21), .IN2(n7), .OUT(n45) );
  NAND2 U59 ( .IN1(n46), .IN2(n45), .OUT(out1[2]) );
  NAND2 U60 ( .IN1(n65), .IN2(in2[3]), .OUT(n51) );
  NAND2 U61 ( .IN1(in1[3]), .IN2(n62), .OUT(n48) );
  NAND2 U62 ( .IN1(in0[3]), .IN2(n57), .OUT(n47) );
  NAND2 U63 ( .IN1(n48), .IN2(n47), .OUT(n49) );
  NAND2 U64 ( .IN1(en), .IN2(n49), .OUT(n50) );
  NAND2 U65 ( .IN1(in3[3]), .IN2(n3), .OUT(n53) );
  NAND2 U66 ( .IN1(n17), .IN2(n8), .OUT(n52) );
  NAND2 U67 ( .IN1(n53), .IN2(n52), .OUT(out1[3]) );
  NAND2 U68 ( .IN1(n2), .IN2(in3[7]), .OUT(n55) );
  INVX1 U69 ( .IN(n55), .OUT(out1[7]) );
  NAND2 U70 ( .IN1(n6), .IN2(en), .OUT(n56) );
  INVX1 U71 ( .IN(n56), .OUT(n63) );
  NAND2 U72 ( .IN1(n62), .IN2(n63), .OUT(n59) );
  NAND2 U73 ( .IN1(n57), .IN2(n4), .OUT(n58) );
  NAND2 U74 ( .IN1(n59), .IN2(n58), .OUT(out0[0]) );
  INVX1 U75 ( .IN(n65), .OUT(n60) );
  NAND2 U76 ( .IN1(n60), .IN2(n59), .OUT(out0[1]) );
  NAND2 U77 ( .IN1(n61), .IN2(n60), .OUT(out0[2]) );
  NAND2 U78 ( .IN1(n4), .IN2(n62), .OUT(n67) );
  NAND2 U79 ( .IN1(n63), .IN2(n12), .OUT(n64) );
  NAND2 U80 ( .IN1(n67), .IN2(n64), .OUT(out0[3]) );
  NAND2 U81 ( .IN1(n65), .IN2(n6), .OUT(n66) );
  NAND2 U82 ( .IN1(n67), .IN2(n66), .OUT(out0[4]) );
endmodule


module blackbox3_s_IN0_W5_IN1_W8 ( in0, in1, out );
  input [4:0] in0;
  input [7:0] in1;
  output [12:0] out;
  wire   out_12, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422;
  assign out[12] = out[8];

  AND2 U2 ( .IN1(in0[4]), .IN2(in1[0]), .OUT(n1) );
  INVX1 U3 ( .IN(n270), .OUT(n2) );
  INVX1 U4 ( .IN(n2), .OUT(n3) );
  INVX1 U5 ( .IN(n2), .OUT(n4) );
  INVX1 U6 ( .IN(n286), .OUT(n5) );
  INVX1 U7 ( .IN(n5), .OUT(n6) );
  INVX1 U8 ( .IN(n5), .OUT(n7) );
  INVX1 U9 ( .IN(n253), .OUT(n8) );
  INVX1 U10 ( .IN(n8), .OUT(n9) );
  INVX1 U11 ( .IN(n8), .OUT(n10) );
  INVX1 U12 ( .IN(n259), .OUT(n11) );
  INVX1 U13 ( .IN(n11), .OUT(n12) );
  INVX1 U14 ( .IN(n11), .OUT(n13) );
  INVX1 U15 ( .IN(n351), .OUT(n14) );
  INVX1 U16 ( .IN(n14), .OUT(n15) );
  INVX1 U17 ( .IN(n14), .OUT(n16) );
  INVX1 U18 ( .IN(n311), .OUT(n17) );
  INVX1 U19 ( .IN(n17), .OUT(n18) );
  INVX1 U20 ( .IN(n17), .OUT(n19) );
  INVX1 U21 ( .IN(n322), .OUT(n20) );
  INVX1 U22 ( .IN(n20), .OUT(n21) );
  INVX1 U23 ( .IN(n20), .OUT(n22) );
  INVX1 U24 ( .IN(n308), .OUT(n23) );
  INVX1 U25 ( .IN(n23), .OUT(n24) );
  INVX1 U26 ( .IN(n23), .OUT(n25) );
  INVX1 U27 ( .IN(n348), .OUT(n26) );
  INVX1 U28 ( .IN(n26), .OUT(n27) );
  INVX1 U29 ( .IN(n26), .OUT(n28) );
  INVX1 U30 ( .IN(n415), .OUT(n29) );
  INVX1 U31 ( .IN(n29), .OUT(n30) );
  INVX1 U32 ( .IN(n29), .OUT(n31) );
  INVX1 U33 ( .IN(n360), .OUT(n32) );
  INVX1 U34 ( .IN(n32), .OUT(n33) );
  INVX1 U35 ( .IN(n32), .OUT(n34) );
  INVX1 U36 ( .IN(n368), .OUT(n35) );
  INVX1 U37 ( .IN(n35), .OUT(n36) );
  INVX1 U38 ( .IN(n35), .OUT(n37) );
  INVX1 U39 ( .IN(n411), .OUT(n38) );
  INVX1 U40 ( .IN(n38), .OUT(n39) );
  INVX1 U41 ( .IN(n38), .OUT(n40) );
  INVX1 U42 ( .IN(n399), .OUT(n41) );
  INVX1 U43 ( .IN(n41), .OUT(n42) );
  INVX1 U44 ( .IN(n41), .OUT(n43) );
  INVX1 U45 ( .IN(n291), .OUT(n44) );
  INVX1 U46 ( .IN(n44), .OUT(n45) );
  INVX1 U47 ( .IN(n44), .OUT(n46) );
  INVX1 U48 ( .IN(n401), .OUT(n47) );
  INVX1 U49 ( .IN(n47), .OUT(n48) );
  INVX1 U50 ( .IN(n47), .OUT(n49) );
  INVX1 U51 ( .IN(n232), .OUT(n50) );
  INVX1 U52 ( .IN(n50), .OUT(n51) );
  INVX1 U53 ( .IN(n50), .OUT(n52) );
  INVX1 U54 ( .IN(n287), .OUT(n53) );
  INVX1 U55 ( .IN(n53), .OUT(n54) );
  INVX1 U56 ( .IN(n53), .OUT(n55) );
  INVX1 U57 ( .IN(n364), .OUT(n56) );
  INVX1 U58 ( .IN(n56), .OUT(n57) );
  INVX1 U59 ( .IN(n56), .OUT(n58) );
  INVX1 U60 ( .IN(n365), .OUT(n59) );
  INVX1 U61 ( .IN(n59), .OUT(n60) );
  INVX1 U62 ( .IN(n59), .OUT(n61) );
  INVX1 U63 ( .IN(n399), .OUT(n62) );
  INVX1 U64 ( .IN(n62), .OUT(n63) );
  AND2 U65 ( .IN1(in0[0]), .IN2(in1[0]), .OUT(out[0]) );
  INVX1 U66 ( .IN(out[0]), .OUT(n64) );
  INVX1 U67 ( .IN(out[0]), .OUT(n65) );
  AND2 U68 ( .IN1(in0[0]), .IN2(in1[1]), .OUT(n168) );
  INVX1 U69 ( .IN(n168), .OUT(n66) );
  INVX1 U70 ( .IN(n168), .OUT(n67) );
  AND2 U71 ( .IN1(in0[1]), .IN2(in1[0]), .OUT(n184) );
  INVX1 U72 ( .IN(n184), .OUT(n68) );
  INVX1 U73 ( .IN(n184), .OUT(n69) );
  AND2 U74 ( .IN1(in0[1]), .IN2(in1[1]), .OUT(n142) );
  INVX1 U75 ( .IN(n142), .OUT(n70) );
  INVX1 U76 ( .IN(n142), .OUT(n71) );
  INVX1 U77 ( .IN(n142), .OUT(n72) );
  AND2 U78 ( .IN1(in0[2]), .IN2(in1[0]), .OUT(n155) );
  INVX1 U79 ( .IN(n155), .OUT(n73) );
  INVX1 U80 ( .IN(n155), .OUT(n74) );
  AND2 U81 ( .IN1(n117), .IN2(n153), .OUT(n195) );
  INVX1 U82 ( .IN(n195), .OUT(n75) );
  INVX1 U83 ( .IN(n195), .OUT(n76) );
  AND2 U84 ( .IN1(n160), .IN2(n159), .OUT(n198) );
  INVX1 U85 ( .IN(n198), .OUT(n77) );
  INVX1 U86 ( .IN(n198), .OUT(n78) );
  AND2 U87 ( .IN1(in1[3]), .IN2(in0[1]), .OUT(n234) );
  INVX1 U88 ( .IN(n234), .OUT(n79) );
  INVX1 U89 ( .IN(n234), .OUT(n80) );
  AND2 U90 ( .IN1(in0[0]), .IN2(in1[4]), .OUT(n231) );
  INVX1 U91 ( .IN(n231), .OUT(n81) );
  INVX1 U92 ( .IN(n231), .OUT(n82) );
  AND2 U93 ( .IN1(n193), .IN2(n192), .OUT(n207) );
  INVX1 U94 ( .IN(n207), .OUT(n83) );
  INVX1 U95 ( .IN(n207), .OUT(n84) );
  AND2 U96 ( .IN1(n212), .IN2(n211), .OUT(n263) );
  INVX1 U97 ( .IN(n263), .OUT(n85) );
  INVX1 U98 ( .IN(n263), .OUT(n86) );
  AND2 U99 ( .IN1(n220), .IN2(n219), .OUT(n260) );
  INVX1 U100 ( .IN(n260), .OUT(n87) );
  INVX1 U101 ( .IN(n260), .OUT(n88) );
  INVX1 U102 ( .IN(n52), .OUT(n89) );
  INVX1 U103 ( .IN(n42), .OUT(n90) );
  AND2 U104 ( .IN1(n222), .IN2(n221), .OUT(n249) );
  INVX1 U105 ( .IN(n249), .OUT(n91) );
  AND2 U106 ( .IN1(n162), .IN2(n161), .OUT(n173) );
  INVX1 U107 ( .IN(n173), .OUT(n92) );
  INVX1 U108 ( .IN(n156), .OUT(n93) );
  AND2 U109 ( .IN1(n337), .IN2(n336), .OUT(n404) );
  INVX1 U110 ( .IN(n404), .OUT(n94) );
  INVX1 U111 ( .IN(n404), .OUT(n95) );
  AND2 U112 ( .IN1(n390), .IN2(n389), .OUT(n391) );
  INVX1 U113 ( .IN(n391), .OUT(n96) );
  INVX1 U114 ( .IN(n391), .OUT(n97) );
  AND2 U115 ( .IN1(n240), .IN2(n239), .OUT(n242) );
  INVX1 U116 ( .IN(n242), .OUT(n98) );
  INVX1 U117 ( .IN(n213), .OUT(n99) );
  AND2 U118 ( .IN1(n370), .IN2(n369), .OUT(n373) );
  INVX1 U119 ( .IN(n373), .OUT(n100) );
  AND2 U120 ( .IN1(n331), .IN2(n330), .OUT(n333) );
  INVX1 U121 ( .IN(n333), .OUT(n101) );
  INVX1 U122 ( .IN(n333), .OUT(n102) );
  AND2 U123 ( .IN1(n380), .IN2(n379), .OUT(n383) );
  INVX1 U124 ( .IN(n383), .OUT(n103) );
  INVX1 U125 ( .IN(n383), .OUT(n104) );
  AND2 U126 ( .IN1(n181), .IN2(n180), .OUT(n208) );
  INVX1 U127 ( .IN(n208), .OUT(n105) );
  INVX1 U128 ( .IN(n208), .OUT(n106) );
  AND2 U129 ( .IN1(n343), .IN2(n342), .OUT(n412) );
  INVX1 U130 ( .IN(n412), .OUT(n107) );
  INVX1 U131 ( .IN(n412), .OUT(n108) );
  AND2 U132 ( .IN1(n265), .IN2(n264), .OUT(n347) );
  INVX1 U133 ( .IN(n347), .OUT(n109) );
  INVX1 U134 ( .IN(n347), .OUT(n110) );
  AND2 U135 ( .IN1(n278), .IN2(n277), .OUT(n306) );
  INVX1 U136 ( .IN(n306), .OUT(n111) );
  INVX1 U137 ( .IN(n306), .OUT(n112) );
  AND2 U138 ( .IN1(n200), .IN2(n199), .OUT(n210) );
  INVX1 U139 ( .IN(n210), .OUT(n113) );
  INVX1 U140 ( .IN(n210), .OUT(n114) );
  AND2 U141 ( .IN1(n144), .IN2(n143), .OUT(n158) );
  INVX1 U142 ( .IN(n158), .OUT(n115) );
  INVX1 U143 ( .IN(n158), .OUT(n116) );
  INVX1 U144 ( .IN(n215), .OUT(n117) );
  INVX1 U145 ( .IN(n215), .OUT(n118) );
  AND2 U146 ( .IN1(n285), .IN2(n284), .OUT(n305) );
  INVX1 U147 ( .IN(n305), .OUT(n119) );
  INVX1 U148 ( .IN(n305), .OUT(n120) );
  AND2 U149 ( .IN1(n230), .IN2(n229), .OUT(n252) );
  INVX1 U150 ( .IN(n252), .OUT(n121) );
  INVX1 U151 ( .IN(n252), .OUT(n122) );
  AND2 U152 ( .IN1(n236), .IN2(n235), .OUT(n256) );
  INVX1 U153 ( .IN(n256), .OUT(n123) );
  INVX1 U154 ( .IN(n256), .OUT(n124) );
  AND2 U155 ( .IN1(in0[4]), .IN2(in1[3]), .OUT(n359) );
  INVX1 U156 ( .IN(n359), .OUT(n125) );
  INVX1 U157 ( .IN(n359), .OUT(n126) );
  AND2 U158 ( .IN1(in0[2]), .IN2(in1[5]), .OUT(n358) );
  INVX1 U159 ( .IN(n358), .OUT(n127) );
  INVX1 U160 ( .IN(n358), .OUT(n128) );
  AND2 U161 ( .IN1(in0[0]), .IN2(in1[6]), .OUT(n323) );
  INVX1 U162 ( .IN(n323), .OUT(n129) );
  INVX1 U163 ( .IN(n323), .OUT(n130) );
  AND2 U164 ( .IN1(n422), .IN2(n421), .OUT(out_12) );
  INVX1 U165 ( .IN(out_12), .OUT(out[8]) );
  INVX1 U166 ( .IN(out_12), .OUT(out[9]) );
  INVX1 U167 ( .IN(out_12), .OUT(out[10]) );
  INVX1 U168 ( .IN(out_12), .OUT(out[11]) );
  AND2 U169 ( .IN1(n272), .IN2(n271), .OUT(n398) );
  INVX1 U170 ( .IN(n398), .OUT(n135) );
  INVX1 U171 ( .IN(n398), .OUT(n136) );
  INVX1 U172 ( .IN(n398), .OUT(n137) );
  INVX1 U173 ( .IN(n398), .OUT(n138) );
  NAND2 U174 ( .IN1(n168), .IN2(n69), .OUT(n140) );
  NAND2 U175 ( .IN1(n184), .IN2(n67), .OUT(n139) );
  NAND2 U176 ( .IN1(n140), .IN2(n139), .OUT(out[1]) );
  NOR2 U177 ( .IN1(n71), .IN2(n65), .OUT(n156) );
  NAND2 U178 ( .IN1(in0[0]), .IN2(in1[2]), .OUT(n141) );
  NOR2 U179 ( .IN1(n72), .IN2(n141), .OUT(n186) );
  INVX1 U180 ( .IN(n186), .OUT(n144) );
  NAND2 U181 ( .IN1(n70), .IN2(n141), .OUT(n143) );
  NAND2 U182 ( .IN1(n156), .IN2(n116), .OUT(n146) );
  INVX1 U183 ( .IN(n156), .OUT(n154) );
  NAND2 U184 ( .IN1(n158), .IN2(n93), .OUT(n145) );
  NAND2 U185 ( .IN1(n146), .IN2(n145), .OUT(n147) );
  NAND2 U186 ( .IN1(n147), .IN2(n74), .OUT(n150) );
  INVX1 U187 ( .IN(n147), .OUT(n148) );
  NAND2 U188 ( .IN1(n155), .IN2(n148), .OUT(n149) );
  NAND2 U189 ( .IN1(n150), .IN2(n149), .OUT(out[2]) );
  NAND2 U190 ( .IN1(in0[0]), .IN2(in1[3]), .OUT(n152) );
  NAND2 U191 ( .IN1(in0[2]), .IN2(in1[1]), .OUT(n151) );
  NOR2 U192 ( .IN1(n152), .IN2(n151), .OUT(n215) );
  INVX1 U193 ( .IN(n215), .OUT(n214) );
  NAND2 U194 ( .IN1(n152), .IN2(n151), .OUT(n153) );
  NAND2 U195 ( .IN1(n73), .IN2(n154), .OUT(n160) );
  NAND2 U196 ( .IN1(n156), .IN2(n155), .OUT(n157) );
  NAND2 U197 ( .IN1(n115), .IN2(n157), .OUT(n159) );
  NAND2 U198 ( .IN1(n195), .IN2(n198), .OUT(n162) );
  NAND2 U199 ( .IN1(n78), .IN2(n76), .OUT(n161) );
  NAND2 U200 ( .IN1(in0[3]), .IN2(in1[1]), .OUT(n232) );
  NOR2 U201 ( .IN1(n64), .IN2(n52), .OUT(n172) );
  NAND2 U202 ( .IN1(in0[3]), .IN2(in1[0]), .OUT(n164) );
  INVX1 U203 ( .IN(n164), .OUT(n166) );
  NAND2 U204 ( .IN1(in1[2]), .IN2(in0[1]), .OUT(n165) );
  NAND2 U205 ( .IN1(n166), .IN2(n165), .OUT(n170) );
  NOR2 U206 ( .IN1(n166), .IN2(n165), .OUT(n167) );
  NAND2 U207 ( .IN1(n66), .IN2(n167), .OUT(n169) );
  NAND2 U208 ( .IN1(n170), .IN2(n169), .OUT(n171) );
  NOR2 U209 ( .IN1(n172), .IN2(n171), .OUT(n194) );
  INVX1 U210 ( .IN(n194), .OUT(n196) );
  NAND2 U211 ( .IN1(n92), .IN2(n196), .OUT(n175) );
  NAND2 U212 ( .IN1(n194), .IN2(n173), .OUT(n174) );
  NAND2 U213 ( .IN1(n175), .IN2(n174), .OUT(out[3]) );
  NAND2 U214 ( .IN1(n89), .IN2(n82), .OUT(n177) );
  NAND2 U215 ( .IN1(n231), .IN2(n51), .OUT(n176) );
  NAND2 U216 ( .IN1(n177), .IN2(n176), .OUT(n179) );
  INVX1 U217 ( .IN(n179), .OUT(n178) );
  NAND2 U218 ( .IN1(n80), .IN2(n178), .OUT(n181) );
  NAND2 U219 ( .IN1(n234), .IN2(n179), .OUT(n180) );
  NAND2 U220 ( .IN1(in0[2]), .IN2(in1[2]), .OUT(n182) );
  NAND2 U221 ( .IN1(n182), .IN2(n1), .OUT(n241) );
  INVX1 U222 ( .IN(n241), .OUT(n291) );
  NOR2 U223 ( .IN1(n1), .IN2(n182), .OUT(n183) );
  NOR2 U224 ( .IN1(n45), .IN2(n183), .OUT(n218) );
  NAND2 U225 ( .IN1(in1[2]), .IN2(in0[3]), .OUT(n287) );
  NOR2 U226 ( .IN1(n55), .IN2(n68), .OUT(n185) );
  NOR2 U227 ( .IN1(n186), .IN2(n185), .OUT(n213) );
  INVX1 U228 ( .IN(n213), .OUT(n216) );
  NAND2 U229 ( .IN1(n218), .IN2(n99), .OUT(n189) );
  INVX1 U230 ( .IN(n218), .OUT(n187) );
  NAND2 U231 ( .IN1(n213), .IN2(n187), .OUT(n188) );
  NAND2 U232 ( .IN1(n189), .IN2(n188), .OUT(n191) );
  INVX1 U233 ( .IN(n191), .OUT(n190) );
  NAND2 U234 ( .IN1(n118), .IN2(n190), .OUT(n193) );
  NAND2 U235 ( .IN1(n215), .IN2(n191), .OUT(n192) );
  NAND2 U236 ( .IN1(n75), .IN2(n194), .OUT(n200) );
  NAND2 U237 ( .IN1(n196), .IN2(n195), .OUT(n197) );
  NAND2 U238 ( .IN1(n77), .IN2(n197), .OUT(n199) );
  NAND2 U239 ( .IN1(n207), .IN2(n210), .OUT(n202) );
  NAND2 U240 ( .IN1(n114), .IN2(n84), .OUT(n201) );
  NAND2 U241 ( .IN1(n202), .IN2(n201), .OUT(n204) );
  INVX1 U242 ( .IN(n204), .OUT(n203) );
  NAND2 U243 ( .IN1(n106), .IN2(n203), .OUT(n206) );
  NAND2 U244 ( .IN1(n208), .IN2(n204), .OUT(n205) );
  NAND2 U245 ( .IN1(n206), .IN2(n205), .OUT(out[4]) );
  NAND2 U246 ( .IN1(n105), .IN2(n83), .OUT(n212) );
  NAND2 U247 ( .IN1(n207), .IN2(n208), .OUT(n209) );
  NAND2 U248 ( .IN1(n113), .IN2(n209), .OUT(n211) );
  NAND2 U249 ( .IN1(n214), .IN2(n213), .OUT(n220) );
  NAND2 U250 ( .IN1(n216), .IN2(n215), .OUT(n217) );
  NAND2 U251 ( .IN1(n218), .IN2(n217), .OUT(n219) );
  NAND2 U252 ( .IN1(n86), .IN2(n88), .OUT(n222) );
  NAND2 U253 ( .IN1(n260), .IN2(n263), .OUT(n221) );
  NAND2 U254 ( .IN1(in0[4]), .IN2(in1[1]), .OUT(n225) );
  INVX1 U255 ( .IN(n225), .OUT(n223) );
  NAND2 U256 ( .IN1(in0[2]), .IN2(in1[3]), .OUT(n224) );
  NAND2 U257 ( .IN1(n223), .IN2(n224), .OUT(n272) );
  INVX1 U258 ( .IN(n224), .OUT(n226) );
  NAND2 U259 ( .IN1(n226), .IN2(n225), .OUT(n269) );
  NAND2 U260 ( .IN1(n272), .IN2(n269), .OUT(n227) );
  NAND2 U261 ( .IN1(in0[0]), .IN2(in1[5]), .OUT(n270) );
  NAND2 U262 ( .IN1(n227), .IN2(n3), .OUT(n230) );
  NOR2 U263 ( .IN1(n3), .IN2(n227), .OUT(n228) );
  INVX1 U264 ( .IN(n228), .OUT(n229) );
  NAND2 U265 ( .IN1(n51), .IN2(n81), .OUT(n236) );
  NAND2 U266 ( .IN1(n89), .IN2(n231), .OUT(n233) );
  NAND2 U267 ( .IN1(n79), .IN2(n233), .OUT(n235) );
  NAND2 U268 ( .IN1(n122), .IN2(n256), .OUT(n238) );
  NAND2 U269 ( .IN1(n124), .IN2(n252), .OUT(n237) );
  NAND2 U270 ( .IN1(n238), .IN2(n237), .OUT(n245) );
  NAND2 U271 ( .IN1(in1[4]), .IN2(in0[1]), .OUT(n286) );
  INVX1 U272 ( .IN(n7), .OUT(n288) );
  NAND2 U273 ( .IN1(n288), .IN2(n54), .OUT(n240) );
  INVX1 U274 ( .IN(n54), .OUT(n289) );
  NAND2 U275 ( .IN1(n289), .IN2(n6), .OUT(n239) );
  NAND2 U276 ( .IN1(n98), .IN2(n241), .OUT(n244) );
  NAND2 U277 ( .IN1(n45), .IN2(n242), .OUT(n243) );
  NAND2 U278 ( .IN1(n244), .IN2(n243), .OUT(n253) );
  INVX1 U279 ( .IN(n10), .OUT(n254) );
  NAND2 U280 ( .IN1(n245), .IN2(n254), .OUT(n248) );
  INVX1 U281 ( .IN(n245), .OUT(n246) );
  NAND2 U282 ( .IN1(n9), .IN2(n246), .OUT(n247) );
  NAND2 U283 ( .IN1(n248), .IN2(n247), .OUT(n259) );
  INVX1 U284 ( .IN(n13), .OUT(n261) );
  NAND2 U285 ( .IN1(n91), .IN2(n261), .OUT(n251) );
  NAND2 U286 ( .IN1(n12), .IN2(n249), .OUT(n250) );
  NAND2 U287 ( .IN1(n251), .IN2(n250), .OUT(out[5]) );
  NAND2 U288 ( .IN1(n9), .IN2(n121), .OUT(n258) );
  NAND2 U289 ( .IN1(n252), .IN2(n254), .OUT(n255) );
  NAND2 U290 ( .IN1(n123), .IN2(n255), .OUT(n257) );
  NAND2 U291 ( .IN1(n258), .IN2(n257), .OUT(n351) );
  NAND2 U292 ( .IN1(n87), .IN2(n12), .OUT(n265) );
  NAND2 U293 ( .IN1(n261), .IN2(n260), .OUT(n262) );
  NAND2 U294 ( .IN1(n85), .IN2(n262), .OUT(n264) );
  NAND2 U295 ( .IN1(n15), .IN2(n347), .OUT(n268) );
  INVX1 U296 ( .IN(n15), .OUT(n266) );
  NAND2 U297 ( .IN1(n110), .IN2(n266), .OUT(n267) );
  NAND2 U298 ( .IN1(n268), .IN2(n267), .OUT(n301) );
  NAND2 U299 ( .IN1(n4), .IN2(n269), .OUT(n271) );
  NAND2 U300 ( .IN1(in1[3]), .IN2(in0[3]), .OUT(n399) );
  NAND2 U301 ( .IN1(n398), .IN2(n42), .OUT(n274) );
  NAND2 U302 ( .IN1(n90), .IN2(n136), .OUT(n273) );
  NAND2 U303 ( .IN1(n274), .IN2(n273), .OUT(n275) );
  NAND2 U304 ( .IN1(in1[5]), .IN2(in0[1]), .OUT(n311) );
  NAND2 U305 ( .IN1(n275), .IN2(n19), .OUT(n278) );
  INVX1 U306 ( .IN(n18), .OUT(n401) );
  INVX1 U307 ( .IN(n275), .OUT(n276) );
  NAND2 U308 ( .IN1(n48), .IN2(n276), .OUT(n277) );
  NAND2 U309 ( .IN1(in0[2]), .IN2(in1[4]), .OUT(n322) );
  NAND2 U310 ( .IN1(n323), .IN2(n21), .OUT(n280) );
  INVX1 U311 ( .IN(n21), .OUT(n324) );
  NAND2 U312 ( .IN1(n324), .IN2(n130), .OUT(n279) );
  NAND2 U313 ( .IN1(n280), .IN2(n279), .OUT(n282) );
  NAND2 U314 ( .IN1(in0[4]), .IN2(in1[2]), .OUT(n281) );
  NAND2 U315 ( .IN1(n282), .IN2(n281), .OUT(n285) );
  INVX1 U316 ( .IN(n281), .OUT(n326) );
  INVX1 U317 ( .IN(n282), .OUT(n283) );
  NAND2 U318 ( .IN1(n326), .IN2(n283), .OUT(n284) );
  NAND2 U319 ( .IN1(n55), .IN2(n6), .OUT(n293) );
  NAND2 U320 ( .IN1(n289), .IN2(n288), .OUT(n290) );
  NAND2 U321 ( .IN1(n46), .IN2(n290), .OUT(n292) );
  NAND2 U322 ( .IN1(n293), .IN2(n292), .OUT(n308) );
  INVX1 U323 ( .IN(n24), .OUT(n294) );
  NAND2 U324 ( .IN1(n120), .IN2(n294), .OUT(n296) );
  NAND2 U325 ( .IN1(n24), .IN2(n305), .OUT(n295) );
  NAND2 U326 ( .IN1(n296), .IN2(n295), .OUT(n298) );
  INVX1 U327 ( .IN(n298), .OUT(n297) );
  NAND2 U328 ( .IN1(n306), .IN2(n297), .OUT(n300) );
  NAND2 U329 ( .IN1(n112), .IN2(n298), .OUT(n299) );
  NAND2 U330 ( .IN1(n300), .IN2(n299), .OUT(n348) );
  NAND2 U331 ( .IN1(n301), .IN2(n27), .OUT(n304) );
  INVX1 U332 ( .IN(n27), .OUT(n349) );
  INVX1 U333 ( .IN(n301), .OUT(n302) );
  NAND2 U334 ( .IN1(n349), .IN2(n302), .OUT(n303) );
  NAND2 U335 ( .IN1(n304), .IN2(n303), .OUT(out[6]) );
  NAND2 U336 ( .IN1(n306), .IN2(n119), .OUT(n310) );
  NAND2 U337 ( .IN1(n305), .IN2(n111), .OUT(n307) );
  NAND2 U338 ( .IN1(n25), .IN2(n307), .OUT(n309) );
  NAND2 U339 ( .IN1(n310), .IN2(n309), .OUT(n415) );
  NAND2 U340 ( .IN1(n137), .IN2(n18), .OUT(n314) );
  NAND2 U341 ( .IN1(n398), .IN2(n48), .OUT(n312) );
  NAND2 U342 ( .IN1(n63), .IN2(n312), .OUT(n313) );
  NAND2 U343 ( .IN1(n314), .IN2(n313), .OUT(n341) );
  NAND2 U344 ( .IN1(in0[0]), .IN2(in1[7]), .OUT(n360) );
  NAND2 U345 ( .IN1(n358), .IN2(n33), .OUT(n317) );
  INVX1 U346 ( .IN(n33), .OUT(n315) );
  NAND2 U347 ( .IN1(n315), .IN2(n128), .OUT(n316) );
  NAND2 U348 ( .IN1(n317), .IN2(n316), .OUT(n318) );
  NAND2 U349 ( .IN1(n318), .IN2(n126), .OUT(n321) );
  INVX1 U350 ( .IN(n318), .OUT(n319) );
  NAND2 U351 ( .IN1(n359), .IN2(n319), .OUT(n320) );
  NAND2 U352 ( .IN1(n321), .IN2(n320), .OUT(n337) );
  NAND2 U353 ( .IN1(n129), .IN2(n22), .OUT(n328) );
  NAND2 U354 ( .IN1(n323), .IN2(n324), .OUT(n325) );
  NAND2 U355 ( .IN1(n326), .IN2(n325), .OUT(n327) );
  NAND2 U356 ( .IN1(n328), .IN2(n327), .OUT(n368) );
  NAND2 U357 ( .IN1(in0[3]), .IN2(in1[4]), .OUT(n364) );
  NOR2 U358 ( .IN1(n36), .IN2(n57), .OUT(n329) );
  INVX1 U359 ( .IN(n329), .OUT(n331) );
  NAND2 U360 ( .IN1(n36), .IN2(n57), .OUT(n330) );
  NAND2 U361 ( .IN1(in0[1]), .IN2(in1[6]), .OUT(n365) );
  NOR2 U362 ( .IN1(n101), .IN2(n60), .OUT(n332) );
  INVX1 U363 ( .IN(n332), .OUT(n335) );
  NAND2 U364 ( .IN1(n102), .IN2(n60), .OUT(n334) );
  NAND2 U365 ( .IN1(n335), .IN2(n334), .OUT(n336) );
  NOR2 U366 ( .IN1(n337), .IN2(n336), .OUT(n396) );
  INVX1 U367 ( .IN(n396), .OUT(n338) );
  NAND2 U368 ( .IN1(n94), .IN2(n338), .OUT(n340) );
  NOR2 U369 ( .IN1(n341), .IN2(n340), .OUT(n339) );
  INVX1 U370 ( .IN(n339), .OUT(n343) );
  NAND2 U371 ( .IN1(n341), .IN2(n340), .OUT(n342) );
  NAND2 U372 ( .IN1(n30), .IN2(n108), .OUT(n346) );
  INVX1 U373 ( .IN(n30), .OUT(n344) );
  NAND2 U374 ( .IN1(n412), .IN2(n344), .OUT(n345) );
  NAND2 U375 ( .IN1(n346), .IN2(n345), .OUT(n354) );
  NAND2 U376 ( .IN1(n28), .IN2(n109), .OUT(n353) );
  NAND2 U377 ( .IN1(n347), .IN2(n349), .OUT(n350) );
  NAND2 U378 ( .IN1(n16), .IN2(n350), .OUT(n352) );
  NAND2 U379 ( .IN1(n353), .IN2(n352), .OUT(n411) );
  INVX1 U380 ( .IN(n40), .OUT(n413) );
  NAND2 U381 ( .IN1(n354), .IN2(n413), .OUT(n357) );
  INVX1 U382 ( .IN(n354), .OUT(n355) );
  NAND2 U383 ( .IN1(n39), .IN2(n355), .OUT(n356) );
  NAND2 U384 ( .IN1(n357), .IN2(n356), .OUT(out[7]) );
  NOR2 U385 ( .IN1(n359), .IN2(n127), .OUT(n363) );
  NOR2 U386 ( .IN1(n125), .IN2(n358), .OUT(n361) );
  NOR2 U387 ( .IN1(n361), .IN2(n34), .OUT(n362) );
  NOR2 U388 ( .IN1(n363), .IN2(n362), .OUT(n371) );
  NAND2 U389 ( .IN1(n58), .IN2(n61), .OUT(n370) );
  NOR2 U390 ( .IN1(n61), .IN2(n58), .OUT(n366) );
  INVX1 U391 ( .IN(n366), .OUT(n367) );
  NAND2 U392 ( .IN1(n37), .IN2(n367), .OUT(n369) );
  NAND2 U393 ( .IN1(n371), .IN2(n373), .OUT(n375) );
  INVX1 U394 ( .IN(n371), .OUT(n372) );
  NAND2 U395 ( .IN1(n100), .IN2(n372), .OUT(n374) );
  NAND2 U396 ( .IN1(n375), .IN2(n374), .OUT(n392) );
  NAND2 U397 ( .IN1(in0[4]), .IN2(in1[4]), .OUT(n378) );
  NAND2 U398 ( .IN1(in0[3]), .IN2(in1[5]), .OUT(n377) );
  NOR2 U399 ( .IN1(n378), .IN2(n377), .OUT(n376) );
  INVX1 U400 ( .IN(n376), .OUT(n380) );
  NAND2 U401 ( .IN1(n378), .IN2(n377), .OUT(n379) );
  NAND2 U402 ( .IN1(in0[1]), .IN2(in1[7]), .OUT(n382) );
  NOR2 U403 ( .IN1(n103), .IN2(n382), .OUT(n381) );
  INVX1 U404 ( .IN(n381), .OUT(n385) );
  NAND2 U405 ( .IN1(n104), .IN2(n382), .OUT(n384) );
  NAND2 U406 ( .IN1(n385), .IN2(n384), .OUT(n388) );
  NAND2 U407 ( .IN1(in1[6]), .IN2(in0[2]), .OUT(n387) );
  NOR2 U408 ( .IN1(n388), .IN2(n387), .OUT(n386) );
  INVX1 U409 ( .IN(n386), .OUT(n390) );
  NAND2 U410 ( .IN1(n388), .IN2(n387), .OUT(n389) );
  NAND2 U411 ( .IN1(n392), .IN2(n96), .OUT(n395) );
  NOR2 U412 ( .IN1(n392), .IN2(n97), .OUT(n393) );
  INVX1 U413 ( .IN(n393), .OUT(n394) );
  NAND2 U414 ( .IN1(n395), .IN2(n394), .OUT(n408) );
  NOR2 U415 ( .IN1(n63), .IN2(n138), .OUT(n397) );
  NOR2 U416 ( .IN1(n397), .IN2(n396), .OUT(n403) );
  NAND2 U417 ( .IN1(n43), .IN2(n135), .OUT(n400) );
  NAND2 U418 ( .IN1(n49), .IN2(n400), .OUT(n402) );
  NAND2 U419 ( .IN1(n403), .IN2(n402), .OUT(n405) );
  NAND2 U420 ( .IN1(n405), .IN2(n95), .OUT(n407) );
  NAND2 U421 ( .IN1(n408), .IN2(n407), .OUT(n406) );
  INVX1 U422 ( .IN(n406), .OUT(n410) );
  NOR2 U423 ( .IN1(n408), .IN2(n407), .OUT(n409) );
  NOR2 U424 ( .IN1(n410), .IN2(n409), .OUT(n420) );
  NAND2 U425 ( .IN1(n107), .IN2(n39), .OUT(n417) );
  NAND2 U426 ( .IN1(n413), .IN2(n412), .OUT(n414) );
  NAND2 U427 ( .IN1(n31), .IN2(n414), .OUT(n416) );
  NAND2 U428 ( .IN1(n417), .IN2(n416), .OUT(n419) );
  NOR2 U429 ( .IN1(n420), .IN2(n419), .OUT(n418) );
  INVX1 U430 ( .IN(n418), .OUT(n422) );
  NAND2 U431 ( .IN1(n420), .IN2(n419), .OUT(n421) );
endmodule


module blackbox3_IN_W4 ( in0, in1, out );
  input [3:0] in0;
  input [3:0] in1;
  output [7:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  assign out[0] = in1[0];

  INVX1 U1 ( .IN(in1[2]), .OUT(n1) );
  INVX1 U2 ( .IN(in0[1]), .OUT(n2) );
  INVX1 U3 ( .IN(in1[0]), .OUT(n3) );
  NOR2 U4 ( .IN1(in1[0]), .IN2(n2), .OUT(out[2]) );
  NOR2 U5 ( .IN1(in0[1]), .IN2(n1), .OUT(n10) );
  NOR2 U6 ( .IN1(n2), .IN2(in1[2]), .OUT(n4) );
  NOR2 U7 ( .IN1(n10), .IN2(n4), .OUT(n5) );
  NOR2 U8 ( .IN1(n5), .IN2(n3), .OUT(out[3]) );
  INVX1 U9 ( .IN(in1[3]), .OUT(n9) );
  NOR2 U10 ( .IN1(n1), .IN2(n9), .OUT(out[7]) );
  NOR2 U11 ( .IN1(in1[2]), .IN2(in1[3]), .OUT(n6) );
  NOR2 U12 ( .IN1(out[7]), .IN2(n6), .OUT(n11) );
  NAND2 U13 ( .IN1(n11), .IN2(in1[0]), .OUT(n8) );
  NAND2 U14 ( .IN1(n10), .IN2(n3), .OUT(n7) );
  NAND2 U15 ( .IN1(n8), .IN2(n7), .OUT(out[4]) );
  NOR2 U16 ( .IN1(n10), .IN2(n9), .OUT(out[6]) );
  NAND2 U17 ( .IN1(in0[1]), .IN2(n11), .OUT(n13) );
  NAND2 U18 ( .IN1(in1[0]), .IN2(out[7]), .OUT(n12) );
  NAND2 U19 ( .IN1(n13), .IN2(n12), .OUT(out[5]) );
endmodule


module blackbox4_ST_W3_IN0_W13_IN1_W19_OUT0_W19_OUT1_W13_CONST13 ( en, state, 
        in0, in1, out0, out1 );
  input [2:0] state;
  input [12:0] in0;
  input [18:0] in1;
  output [18:0] out0;
  output [12:0] out1;
  input en;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37;

  AND2 U3 ( .IN1(n36), .IN2(in1[9]), .OUT(out0[9]) );
  AND2 U4 ( .IN1(n36), .IN2(in1[10]), .OUT(out0[10]) );
  AND2 U5 ( .IN1(n36), .IN2(in1[11]), .OUT(out0[11]) );
  AND2 U6 ( .IN1(n36), .IN2(in1[12]), .OUT(out0[12]) );
  AND2 U7 ( .IN1(n36), .IN2(in1[13]), .OUT(out0[13]) );
  AND2 U8 ( .IN1(n36), .IN2(in1[14]), .OUT(out0[14]) );
  AND2 U9 ( .IN1(n36), .IN2(in1[15]), .OUT(out0[15]) );
  AND2 U10 ( .IN1(en), .IN2(in0[2]), .OUT(out1[2]) );
  AND2 U11 ( .IN1(en), .IN2(in0[4]), .OUT(out1[4]) );
  AND2 U12 ( .IN1(en), .IN2(in0[5]), .OUT(out1[5]) );
  AND2 U13 ( .IN1(en), .IN2(in0[6]), .OUT(out1[6]) );
  AND2 U14 ( .IN1(en), .IN2(in0[7]), .OUT(out1[7]) );
  AND2 U15 ( .IN1(en), .IN2(in0[8]), .OUT(out1[8]) );
  AND2 U16 ( .IN1(n36), .IN2(in1[18]), .OUT(out0[18]) );
  AND2 U17 ( .IN1(n36), .IN2(in1[17]), .OUT(out0[17]) );
  AND2 U18 ( .IN1(n36), .IN2(in1[16]), .OUT(out0[16]) );
  AND2 U19 ( .IN1(en), .IN2(in0[11]), .OUT(out1[11]) );
  AND2 U20 ( .IN1(en), .IN2(in0[10]), .OUT(out1[10]) );
  AND2 U21 ( .IN1(en), .IN2(in0[9]), .OUT(out1[9]) );
  AND2 U22 ( .IN1(n36), .IN2(in1[8]), .OUT(out0[8]) );
  AND2 U23 ( .IN1(n36), .IN2(in1[7]), .OUT(out0[7]) );
  AND2 U24 ( .IN1(n36), .IN2(in1[6]), .OUT(out0[6]) );
  AND2 U25 ( .IN1(n36), .IN2(in1[5]), .OUT(out0[5]) );
  AND2 U26 ( .IN1(n36), .IN2(in1[4]), .OUT(out0[4]) );
  AND2 U27 ( .IN1(en), .IN2(in0[3]), .OUT(out1[3]) );
  AND2 U28 ( .IN1(en), .IN2(in0[1]), .OUT(out1[1]) );
  AND2 U29 ( .IN1(n36), .IN2(in1[1]), .OUT(out0[1]) );
  AND2 U30 ( .IN1(en), .IN2(in0[12]), .OUT(out1[12]) );
  INVX1 U31 ( .IN(en), .OUT(n32) );
  NOR2 U32 ( .IN1(state[2]), .IN2(state[0]), .OUT(n29) );
  INVX1 U33 ( .IN(n29), .OUT(n30) );
  NOR2 U34 ( .IN1(state[1]), .IN2(n30), .OUT(n31) );
  NOR2 U35 ( .IN1(n32), .IN2(n31), .OUT(n36) );
  INVX1 U36 ( .IN(in1[0]), .OUT(n33) );
  NAND2 U37 ( .IN1(n36), .IN2(n33), .OUT(out0[0]) );
  INVX1 U38 ( .IN(in1[2]), .OUT(n34) );
  NAND2 U39 ( .IN1(n36), .IN2(n34), .OUT(out0[2]) );
  INVX1 U40 ( .IN(in1[3]), .OUT(n35) );
  NAND2 U41 ( .IN1(n36), .IN2(n35), .OUT(out0[3]) );
  NAND2 U42 ( .IN1(en), .IN2(in0[0]), .OUT(n37) );
  INVX1 U43 ( .IN(n37), .OUT(out1[0]) );
endmodule


module blackbox5_IN0_W19_IN1_W13_OUT_W19 ( in0, in1, out );
  input [18:0] in0;
  input [12:0] in1;
  output [18:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238;

  INVX1 U1 ( .IN(in1[4]), .OUT(n1) );
  INVX1 U2 ( .IN(in1[5]), .OUT(n2) );
  INVX1 U3 ( .IN(in1[6]), .OUT(n3) );
  INVX1 U4 ( .IN(in1[7]), .OUT(n4) );
  INVX1 U5 ( .IN(in1[8]), .OUT(n5) );
  INVX1 U6 ( .IN(in0[9]), .OUT(n6) );
  INVX1 U7 ( .IN(in0[10]), .OUT(n7) );
  INVX1 U8 ( .IN(in0[11]), .OUT(n8) );
  AND2 U9 ( .IN1(n50), .IN2(n49), .OUT(n178) );
  INVX1 U10 ( .IN(n178), .OUT(n9) );
  INVX1 U11 ( .IN(n178), .OUT(n10) );
  AND2 U12 ( .IN1(n53), .IN2(n52), .OUT(n187) );
  INVX1 U13 ( .IN(n187), .OUT(n11) );
  INVX1 U14 ( .IN(n187), .OUT(n12) );
  AND2 U15 ( .IN1(n56), .IN2(n55), .OUT(n195) );
  INVX1 U16 ( .IN(n195), .OUT(n13) );
  INVX1 U17 ( .IN(n195), .OUT(n14) );
  AND2 U18 ( .IN1(n59), .IN2(n58), .OUT(n203) );
  INVX1 U19 ( .IN(n203), .OUT(n15) );
  INVX1 U20 ( .IN(n203), .OUT(n16) );
  AND2 U21 ( .IN1(n62), .IN2(n61), .OUT(n211) );
  INVX1 U22 ( .IN(n211), .OUT(n17) );
  INVX1 U23 ( .IN(n211), .OUT(n18) );
  AND2 U24 ( .IN1(n65), .IN2(n64), .OUT(n219) );
  INVX1 U25 ( .IN(n219), .OUT(n19) );
  INVX1 U26 ( .IN(n219), .OUT(n20) );
  AND2 U27 ( .IN1(n68), .IN2(n67), .OUT(n227) );
  INVX1 U28 ( .IN(n227), .OUT(n21) );
  INVX1 U29 ( .IN(n227), .OUT(n22) );
  AND2 U30 ( .IN1(n71), .IN2(n70), .OUT(n235) );
  INVX1 U31 ( .IN(n235), .OUT(n23) );
  INVX1 U32 ( .IN(n235), .OUT(n24) );
  AND2 U33 ( .IN1(n74), .IN2(n73), .OUT(n83) );
  INVX1 U34 ( .IN(n83), .OUT(n25) );
  INVX1 U35 ( .IN(n83), .OUT(n26) );
  AND2 U36 ( .IN1(n85), .IN2(n84), .OUT(n94) );
  INVX1 U37 ( .IN(n94), .OUT(n27) );
  INVX1 U38 ( .IN(n94), .OUT(n28) );
  AND2 U39 ( .IN1(n96), .IN2(n95), .OUT(n105) );
  INVX1 U40 ( .IN(n105), .OUT(n29) );
  INVX1 U41 ( .IN(n105), .OUT(n30) );
  AND2 U42 ( .IN1(n107), .IN2(n106), .OUT(n116) );
  INVX1 U43 ( .IN(n116), .OUT(n31) );
  INVX1 U44 ( .IN(n116), .OUT(n32) );
  AND2 U45 ( .IN1(n118), .IN2(n117), .OUT(n127) );
  INVX1 U46 ( .IN(n127), .OUT(n33) );
  INVX1 U47 ( .IN(n127), .OUT(n34) );
  AND2 U48 ( .IN1(n129), .IN2(n128), .OUT(n138) );
  INVX1 U49 ( .IN(n138), .OUT(n35) );
  INVX1 U50 ( .IN(n138), .OUT(n36) );
  AND2 U51 ( .IN1(n140), .IN2(n139), .OUT(n149) );
  INVX1 U52 ( .IN(n149), .OUT(n37) );
  INVX1 U53 ( .IN(n149), .OUT(n38) );
  INVX1 U54 ( .IN(in1[12]), .OUT(n39) );
  INVX1 U55 ( .IN(in1[12]), .OUT(n40) );
  INVX1 U56 ( .IN(in1[12]), .OUT(n41) );
  INVX1 U57 ( .IN(in1[12]), .OUT(n42) );
  INVX1 U58 ( .IN(in1[12]), .OUT(n43) );
  INVX1 U59 ( .IN(in1[12]), .OUT(n44) );
  AND2 U60 ( .IN1(in0[0]), .IN2(in1[0]), .OUT(n168) );
  INVX1 U61 ( .IN(n168), .OUT(n45) );
  INVX1 U62 ( .IN(n168), .OUT(n46) );
  NOR2 U63 ( .IN1(in0[0]), .IN2(in1[0]), .OUT(n47) );
  NOR2 U64 ( .IN1(n168), .IN2(n47), .OUT(out[0]) );
  NAND2 U65 ( .IN1(in0[9]), .IN2(in1[9]), .OUT(n74) );
  NAND2 U66 ( .IN1(in1[8]), .IN2(in0[8]), .OUT(n71) );
  NAND2 U67 ( .IN1(in1[7]), .IN2(in0[7]), .OUT(n68) );
  NAND2 U68 ( .IN1(in1[6]), .IN2(in0[6]), .OUT(n65) );
  NAND2 U69 ( .IN1(in1[5]), .IN2(in0[5]), .OUT(n62) );
  NAND2 U70 ( .IN1(in1[4]), .IN2(in0[4]), .OUT(n59) );
  NAND2 U71 ( .IN1(in1[3]), .IN2(in0[3]), .OUT(n56) );
  NAND2 U72 ( .IN1(in1[2]), .IN2(in0[2]), .OUT(n53) );
  NAND2 U73 ( .IN1(in1[1]), .IN2(n168), .OUT(n50) );
  INVX1 U74 ( .IN(in1[1]), .OUT(n164) );
  NAND2 U75 ( .IN1(n46), .IN2(n164), .OUT(n48) );
  NAND2 U76 ( .IN1(in0[1]), .IN2(n48), .OUT(n49) );
  INVX1 U77 ( .IN(in0[2]), .OUT(n173) );
  INVX1 U78 ( .IN(in1[2]), .OUT(n174) );
  NAND2 U79 ( .IN1(n173), .IN2(n174), .OUT(n51) );
  NAND2 U80 ( .IN1(n9), .IN2(n51), .OUT(n52) );
  INVX1 U81 ( .IN(in0[3]), .OUT(n182) );
  INVX1 U82 ( .IN(in1[3]), .OUT(n183) );
  NAND2 U83 ( .IN1(n182), .IN2(n183), .OUT(n54) );
  NAND2 U84 ( .IN1(n11), .IN2(n54), .OUT(n55) );
  INVX1 U85 ( .IN(in0[4]), .OUT(n191) );
  NAND2 U86 ( .IN1(n191), .IN2(n1), .OUT(n57) );
  NAND2 U87 ( .IN1(n13), .IN2(n57), .OUT(n58) );
  INVX1 U88 ( .IN(in0[5]), .OUT(n199) );
  NAND2 U89 ( .IN1(n199), .IN2(n2), .OUT(n60) );
  NAND2 U90 ( .IN1(n15), .IN2(n60), .OUT(n61) );
  INVX1 U91 ( .IN(in0[6]), .OUT(n207) );
  NAND2 U92 ( .IN1(n207), .IN2(n3), .OUT(n63) );
  NAND2 U93 ( .IN1(n17), .IN2(n63), .OUT(n64) );
  INVX1 U94 ( .IN(in0[7]), .OUT(n215) );
  NAND2 U95 ( .IN1(n215), .IN2(n4), .OUT(n66) );
  NAND2 U96 ( .IN1(n19), .IN2(n66), .OUT(n67) );
  INVX1 U97 ( .IN(in0[8]), .OUT(n223) );
  NAND2 U98 ( .IN1(n223), .IN2(n5), .OUT(n69) );
  NAND2 U99 ( .IN1(n21), .IN2(n69), .OUT(n70) );
  INVX1 U100 ( .IN(in1[9]), .OUT(n231) );
  NAND2 U101 ( .IN1(n231), .IN2(n6), .OUT(n72) );
  NAND2 U102 ( .IN1(n23), .IN2(n72), .OUT(n73) );
  INVX1 U103 ( .IN(in1[10]), .OUT(n81) );
  NAND2 U104 ( .IN1(in0[10]), .IN2(n81), .OUT(n76) );
  NAND2 U105 ( .IN1(in1[10]), .IN2(n7), .OUT(n75) );
  NAND2 U106 ( .IN1(n76), .IN2(n75), .OUT(n78) );
  INVX1 U107 ( .IN(n78), .OUT(n77) );
  NAND2 U108 ( .IN1(n26), .IN2(n77), .OUT(n80) );
  NAND2 U109 ( .IN1(n83), .IN2(n78), .OUT(n79) );
  NAND2 U110 ( .IN1(n80), .IN2(n79), .OUT(out[10]) );
  NAND2 U111 ( .IN1(in0[10]), .IN2(in1[10]), .OUT(n85) );
  NAND2 U112 ( .IN1(n81), .IN2(n7), .OUT(n82) );
  NAND2 U113 ( .IN1(n25), .IN2(n82), .OUT(n84) );
  INVX1 U114 ( .IN(in1[11]), .OUT(n92) );
  NAND2 U115 ( .IN1(in0[11]), .IN2(n92), .OUT(n87) );
  NAND2 U116 ( .IN1(in1[11]), .IN2(n8), .OUT(n86) );
  NAND2 U117 ( .IN1(n87), .IN2(n86), .OUT(n89) );
  INVX1 U118 ( .IN(n89), .OUT(n88) );
  NAND2 U119 ( .IN1(n28), .IN2(n88), .OUT(n91) );
  NAND2 U120 ( .IN1(n94), .IN2(n89), .OUT(n90) );
  NAND2 U121 ( .IN1(n91), .IN2(n90), .OUT(out[11]) );
  NAND2 U122 ( .IN1(in0[11]), .IN2(in1[11]), .OUT(n96) );
  NAND2 U123 ( .IN1(n92), .IN2(n8), .OUT(n93) );
  NAND2 U124 ( .IN1(n27), .IN2(n93), .OUT(n95) );
  INVX1 U125 ( .IN(in0[12]), .OUT(n103) );
  NAND2 U126 ( .IN1(in1[12]), .IN2(n103), .OUT(n98) );
  NAND2 U127 ( .IN1(in0[12]), .IN2(n44), .OUT(n97) );
  NAND2 U128 ( .IN1(n98), .IN2(n97), .OUT(n100) );
  INVX1 U129 ( .IN(n100), .OUT(n99) );
  NAND2 U130 ( .IN1(n30), .IN2(n99), .OUT(n102) );
  NAND2 U131 ( .IN1(n105), .IN2(n100), .OUT(n101) );
  NAND2 U132 ( .IN1(n102), .IN2(n101), .OUT(out[12]) );
  NAND2 U133 ( .IN1(in1[12]), .IN2(in0[12]), .OUT(n107) );
  NAND2 U134 ( .IN1(n103), .IN2(n39), .OUT(n104) );
  NAND2 U135 ( .IN1(n29), .IN2(n104), .OUT(n106) );
  INVX1 U136 ( .IN(in0[13]), .OUT(n114) );
  NAND2 U137 ( .IN1(in1[12]), .IN2(n114), .OUT(n109) );
  NAND2 U138 ( .IN1(in0[13]), .IN2(n39), .OUT(n108) );
  NAND2 U139 ( .IN1(n109), .IN2(n108), .OUT(n111) );
  INVX1 U140 ( .IN(n111), .OUT(n110) );
  NAND2 U141 ( .IN1(n32), .IN2(n110), .OUT(n113) );
  NAND2 U142 ( .IN1(n116), .IN2(n111), .OUT(n112) );
  NAND2 U143 ( .IN1(n113), .IN2(n112), .OUT(out[13]) );
  NAND2 U144 ( .IN1(in1[12]), .IN2(in0[13]), .OUT(n118) );
  NAND2 U145 ( .IN1(n114), .IN2(n42), .OUT(n115) );
  NAND2 U146 ( .IN1(n31), .IN2(n115), .OUT(n117) );
  INVX1 U147 ( .IN(in0[14]), .OUT(n125) );
  NAND2 U148 ( .IN1(in1[12]), .IN2(n125), .OUT(n120) );
  NAND2 U149 ( .IN1(in0[14]), .IN2(n43), .OUT(n119) );
  NAND2 U150 ( .IN1(n120), .IN2(n119), .OUT(n122) );
  INVX1 U151 ( .IN(n122), .OUT(n121) );
  NAND2 U152 ( .IN1(n34), .IN2(n121), .OUT(n124) );
  NAND2 U153 ( .IN1(n127), .IN2(n122), .OUT(n123) );
  NAND2 U154 ( .IN1(n124), .IN2(n123), .OUT(out[14]) );
  NAND2 U155 ( .IN1(in1[12]), .IN2(in0[14]), .OUT(n129) );
  NAND2 U156 ( .IN1(n125), .IN2(n43), .OUT(n126) );
  NAND2 U157 ( .IN1(n33), .IN2(n126), .OUT(n128) );
  INVX1 U158 ( .IN(in0[15]), .OUT(n136) );
  NAND2 U159 ( .IN1(in1[12]), .IN2(n136), .OUT(n131) );
  NAND2 U160 ( .IN1(in0[15]), .IN2(n41), .OUT(n130) );
  NAND2 U161 ( .IN1(n131), .IN2(n130), .OUT(n133) );
  INVX1 U162 ( .IN(n133), .OUT(n132) );
  NAND2 U163 ( .IN1(n36), .IN2(n132), .OUT(n135) );
  NAND2 U164 ( .IN1(n138), .IN2(n133), .OUT(n134) );
  NAND2 U165 ( .IN1(n135), .IN2(n134), .OUT(out[15]) );
  NAND2 U166 ( .IN1(in1[12]), .IN2(in0[15]), .OUT(n140) );
  NAND2 U167 ( .IN1(n136), .IN2(n40), .OUT(n137) );
  NAND2 U168 ( .IN1(n35), .IN2(n137), .OUT(n139) );
  INVX1 U169 ( .IN(in0[16]), .OUT(n141) );
  NAND2 U170 ( .IN1(in1[12]), .IN2(n141), .OUT(n143) );
  NAND2 U171 ( .IN1(in0[16]), .IN2(n42), .OUT(n142) );
  NAND2 U172 ( .IN1(n143), .IN2(n142), .OUT(n145) );
  INVX1 U173 ( .IN(n145), .OUT(n144) );
  NAND2 U174 ( .IN1(n38), .IN2(n144), .OUT(n147) );
  NAND2 U175 ( .IN1(n149), .IN2(n145), .OUT(n146) );
  NAND2 U176 ( .IN1(n147), .IN2(n146), .OUT(out[16]) );
  NAND2 U177 ( .IN1(in0[16]), .IN2(n37), .OUT(n148) );
  NOR2 U178 ( .IN1(in1[12]), .IN2(n148), .OUT(n155) );
  NAND2 U179 ( .IN1(n141), .IN2(n149), .OUT(n150) );
  NOR2 U180 ( .IN1(n40), .IN2(n150), .OUT(n157) );
  NOR2 U181 ( .IN1(n155), .IN2(n157), .OUT(n151) );
  NAND2 U182 ( .IN1(in0[17]), .IN2(n151), .OUT(n154) );
  INVX1 U183 ( .IN(in0[17]), .OUT(n156) );
  INVX1 U184 ( .IN(n151), .OUT(n152) );
  NAND2 U185 ( .IN1(n156), .IN2(n152), .OUT(n153) );
  NAND2 U186 ( .IN1(n154), .IN2(n153), .OUT(out[17]) );
  NAND2 U187 ( .IN1(in0[17]), .IN2(n155), .OUT(n159) );
  NAND2 U188 ( .IN1(n157), .IN2(n156), .OUT(n158) );
  NAND2 U189 ( .IN1(n159), .IN2(n158), .OUT(n161) );
  NAND2 U190 ( .IN1(in0[18]), .IN2(n161), .OUT(n160) );
  INVX1 U191 ( .IN(n160), .OUT(n163) );
  NOR2 U192 ( .IN1(in0[18]), .IN2(n161), .OUT(n162) );
  NOR2 U193 ( .IN1(n163), .IN2(n162), .OUT(out[18]) );
  NAND2 U194 ( .IN1(in0[1]), .IN2(n164), .OUT(n167) );
  INVX1 U195 ( .IN(in0[1]), .OUT(n165) );
  NAND2 U196 ( .IN1(in1[1]), .IN2(n165), .OUT(n166) );
  NAND2 U197 ( .IN1(n167), .IN2(n166), .OUT(n169) );
  NAND2 U198 ( .IN1(n169), .IN2(n45), .OUT(n172) );
  INVX1 U199 ( .IN(n169), .OUT(n170) );
  NAND2 U200 ( .IN1(n168), .IN2(n170), .OUT(n171) );
  NAND2 U201 ( .IN1(n172), .IN2(n171), .OUT(out[1]) );
  NAND2 U202 ( .IN1(in1[2]), .IN2(n173), .OUT(n176) );
  NAND2 U203 ( .IN1(in0[2]), .IN2(n174), .OUT(n175) );
  NAND2 U204 ( .IN1(n176), .IN2(n175), .OUT(n179) );
  INVX1 U205 ( .IN(n179), .OUT(n177) );
  NAND2 U206 ( .IN1(n10), .IN2(n177), .OUT(n181) );
  NAND2 U207 ( .IN1(n178), .IN2(n179), .OUT(n180) );
  NAND2 U208 ( .IN1(n181), .IN2(n180), .OUT(out[2]) );
  NAND2 U209 ( .IN1(in1[3]), .IN2(n182), .OUT(n185) );
  NAND2 U210 ( .IN1(in0[3]), .IN2(n183), .OUT(n184) );
  NAND2 U211 ( .IN1(n185), .IN2(n184), .OUT(n188) );
  INVX1 U212 ( .IN(n188), .OUT(n186) );
  NAND2 U213 ( .IN1(n12), .IN2(n186), .OUT(n190) );
  NAND2 U214 ( .IN1(n187), .IN2(n188), .OUT(n189) );
  NAND2 U215 ( .IN1(n190), .IN2(n189), .OUT(out[3]) );
  NAND2 U216 ( .IN1(in1[4]), .IN2(n191), .OUT(n193) );
  NAND2 U217 ( .IN1(in0[4]), .IN2(n1), .OUT(n192) );
  NAND2 U218 ( .IN1(n193), .IN2(n192), .OUT(n196) );
  INVX1 U219 ( .IN(n196), .OUT(n194) );
  NAND2 U220 ( .IN1(n14), .IN2(n194), .OUT(n198) );
  NAND2 U221 ( .IN1(n195), .IN2(n196), .OUT(n197) );
  NAND2 U222 ( .IN1(n198), .IN2(n197), .OUT(out[4]) );
  NAND2 U223 ( .IN1(in1[5]), .IN2(n199), .OUT(n201) );
  NAND2 U224 ( .IN1(in0[5]), .IN2(n2), .OUT(n200) );
  NAND2 U225 ( .IN1(n201), .IN2(n200), .OUT(n204) );
  INVX1 U226 ( .IN(n204), .OUT(n202) );
  NAND2 U227 ( .IN1(n16), .IN2(n202), .OUT(n206) );
  NAND2 U228 ( .IN1(n203), .IN2(n204), .OUT(n205) );
  NAND2 U229 ( .IN1(n206), .IN2(n205), .OUT(out[5]) );
  NAND2 U230 ( .IN1(in1[6]), .IN2(n207), .OUT(n209) );
  NAND2 U231 ( .IN1(in0[6]), .IN2(n3), .OUT(n208) );
  NAND2 U232 ( .IN1(n209), .IN2(n208), .OUT(n212) );
  INVX1 U233 ( .IN(n212), .OUT(n210) );
  NAND2 U234 ( .IN1(n18), .IN2(n210), .OUT(n214) );
  NAND2 U235 ( .IN1(n211), .IN2(n212), .OUT(n213) );
  NAND2 U236 ( .IN1(n214), .IN2(n213), .OUT(out[6]) );
  NAND2 U237 ( .IN1(in1[7]), .IN2(n215), .OUT(n217) );
  NAND2 U238 ( .IN1(in0[7]), .IN2(n4), .OUT(n216) );
  NAND2 U239 ( .IN1(n217), .IN2(n216), .OUT(n220) );
  INVX1 U240 ( .IN(n220), .OUT(n218) );
  NAND2 U241 ( .IN1(n20), .IN2(n218), .OUT(n222) );
  NAND2 U242 ( .IN1(n219), .IN2(n220), .OUT(n221) );
  NAND2 U243 ( .IN1(n222), .IN2(n221), .OUT(out[7]) );
  NAND2 U244 ( .IN1(in1[8]), .IN2(n223), .OUT(n225) );
  NAND2 U245 ( .IN1(in0[8]), .IN2(n5), .OUT(n224) );
  NAND2 U246 ( .IN1(n225), .IN2(n224), .OUT(n228) );
  INVX1 U247 ( .IN(n228), .OUT(n226) );
  NAND2 U248 ( .IN1(n22), .IN2(n226), .OUT(n230) );
  NAND2 U249 ( .IN1(n227), .IN2(n228), .OUT(n229) );
  NAND2 U250 ( .IN1(n230), .IN2(n229), .OUT(out[8]) );
  NAND2 U251 ( .IN1(in0[9]), .IN2(n231), .OUT(n233) );
  NAND2 U252 ( .IN1(in1[9]), .IN2(n6), .OUT(n232) );
  NAND2 U253 ( .IN1(n233), .IN2(n232), .OUT(n236) );
  INVX1 U254 ( .IN(n236), .OUT(n234) );
  NAND2 U255 ( .IN1(n24), .IN2(n234), .OUT(n238) );
  NAND2 U256 ( .IN1(n235), .IN2(n236), .OUT(n237) );
  NAND2 U257 ( .IN1(n238), .IN2(n237), .OUT(out[9]) );
endmodule


module blackbox0_W19_0 ( clk, rst, in, out );
  input [18:0] in;
  output [18:0] out;
  input clk, rst;


  DFFNRX1 out_reg_18_ ( .D(in[18]), .CP(clk), .RST_N(rst), .Q(out[18]) );
  DFFNRX1 out_reg_17_ ( .D(in[17]), .CP(clk), .RST_N(rst), .Q(out[17]) );
  DFFNRX1 out_reg_16_ ( .D(in[16]), .CP(clk), .RST_N(rst), .Q(out[16]) );
  DFFNRX1 out_reg_15_ ( .D(in[15]), .CP(clk), .RST_N(rst), .Q(out[15]) );
  DFFNRX1 out_reg_14_ ( .D(in[14]), .CP(clk), .RST_N(rst), .Q(out[14]) );
  DFFNRX1 out_reg_13_ ( .D(in[13]), .CP(clk), .RST_N(rst), .Q(out[13]) );
  DFFNRX1 out_reg_12_ ( .D(in[12]), .CP(clk), .RST_N(rst), .Q(out[12]) );
  DFFNRX1 out_reg_11_ ( .D(in[11]), .CP(clk), .RST_N(rst), .Q(out[11]) );
  DFFNRX1 out_reg_10_ ( .D(in[10]), .CP(clk), .RST_N(rst), .Q(out[10]) );
  DFFNRX1 out_reg_9_ ( .D(in[9]), .CP(clk), .RST_N(rst), .Q(out[9]) );
  DFFNRX1 out_reg_8_ ( .D(in[8]), .CP(clk), .RST_N(rst), .Q(out[8]) );
  DFFNRX1 out_reg_7_ ( .D(in[7]), .CP(clk), .RST_N(rst), .Q(out[7]) );
  DFFNRX1 out_reg_6_ ( .D(in[6]), .CP(clk), .RST_N(rst), .Q(out[6]) );
  DFFNRX1 out_reg_5_ ( .D(in[5]), .CP(clk), .RST_N(rst), .Q(out[5]) );
  DFFNRX1 out_reg_4_ ( .D(in[4]), .CP(clk), .RST_N(rst), .Q(out[4]) );
  DFFNRX1 out_reg_3_ ( .D(in[3]), .CP(clk), .RST_N(rst), .Q(out[3]) );
  DFFNRX1 out_reg_2_ ( .D(in[2]), .CP(clk), .RST_N(rst), .Q(out[2]) );
  DFFNRX1 out_reg_1_ ( .D(in[1]), .CP(clk), .RST_N(rst), .Q(out[1]) );
  DFFNRX1 out_reg_0_ ( .D(in[0]), .CP(clk), .RST_N(rst), .Q(out[0]) );
endmodule


module top ( clk, rst, en, in0, in1, in2, done, out );
  input [3:0] in0;
  input [3:0] in1;
  input [3:0] in2;
  output [18:0] out;
  input clk, rst, en;
  output done;
  wire   mult2_1_, n2, n7, net3022, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6;
  wire   [2:0] stateNext;
  wire   [2:0] state;
  wire   [12:0] multRes0;
  wire   [12:0] multRes0Prev;
  wire   [7:0] multRes1;
  wire   [7:0] multRes1Prev;
  wire   [18:0] sumNext;
  wire   [18:0] sum;
  wire   [4:0] mult0;
  wire   [7:0] mult1;
  wire   [3:0] mult3;
  wire   [18:0] add0;
  wire   [12:0] add1;

  blackbox0_W3 bb0_state ( .clk(clk), .rst(rst), .in(stateNext), .out(state)
         );
  blackbox0_W13 bb0_multRes0Prev ( .clk(clk), .rst(rst), .in(multRes0), .out(
        multRes0Prev) );
  blackbox0_W8 bb0_multRes1Prev ( .clk(clk), .rst(rst), .in({multRes1[7:2], 
        1'b0, multRes1[0]}), .out({multRes1Prev[7:2], SYNOPSYS_UNCONNECTED_1, 
        multRes1Prev[0]}) );
  blackbox0_W19_1 bb0_sum ( .clk(clk), .rst(rst), .in(sumNext), .out(sum) );
  blackbox0_W1 bb0_done ( .clk(clk), .rst(rst), .in(n2), .out(done) );
  blackbox0_W19_0 bb0_out ( .clk(clk), .rst(rst), .in(sumNext), .out(out) );
  blackbox1_W3_MAX6 bb1 ( .en(en), .state(state), .stateNext(stateNext) );
  blackbox2_ST_W3_IN0_W4_IN1_W4_IN2_W4_IN3_W8_OUT0_W5_OUT1_W8_OUT2_W4_OUT3_W4 bb2 ( 
        .en(en), .state(state), .in0(in0), .in1(in1), .in2(in2), .in3({
        multRes1Prev[7:2], net3022, multRes1Prev[0]}), .out0(mult0), .out1(
        mult1), .out2({SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        mult2_1_, SYNOPSYS_UNCONNECTED_4}), .out3({mult3[3:2], 
        SYNOPSYS_UNCONNECTED_5, mult3[0]}) );
  blackbox3_s_IN0_W5_IN1_W8 bb3_s ( .in0(mult0), .in1(mult1), .out(multRes0)
         );
  blackbox3_IN_W4 bb3 ( .in0({1'b0, 1'b0, mult2_1_, 1'b0}), .in1({mult3[3:2], 
        1'b0, mult3[0]}), .out({multRes1[7:2], SYNOPSYS_UNCONNECTED_6, 
        multRes1[0]}) );
  blackbox4_ST_W3_IN0_W13_IN1_W19_OUT0_W19_OUT1_W13_CONST13 bb4 ( .en(en), 
        .state(state), .in0(multRes0Prev), .in1(sum), .out0(add0), .out1(add1)
         );
  blackbox5_IN0_W19_IN1_W13_OUT_W19 bb5 ( .in0(add0), .in1(add1), .out(sumNext) );
  NAND2 U8 ( .IN1(state[2]), .IN2(state[1]), .OUT(n7) );
  NOR2 U9 ( .IN1(state[0]), .IN2(n7), .OUT(n2) );
endmodule

