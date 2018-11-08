`timescale 1ns / 1ps
module half_adder
(
  input A, B,
  output SUM, C_OUT
);
  xor(SUM, A, B);
  and(C_OUT, A, B);
endmodule

module full_adder
(
  input A, B, C_IN,
  output SUM, C_OUT
);
  wire S1, C1, C2;
  half_adder HA1(A, B, S1, C1);
  half_adder HA2(S1, C_IN, SUM, C2);
  or OG1(C_OUT, C1, C2);
endmodule

module ripple_carry_64
(
  input [63:0] A, [63:0] B,
  output [63:0] SUM, C
);

  // Wires will structurally connect each full_adder
  wire C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10;
  wire C11, C12, C13, C14, C15, C16, C17, C18, C19, C20;
  wire C21, C22, C23, C24, C25, C26, C27, C28, C29, C30;
  wire C31, C32, C33, C34, C35, C36, C37, C38, C39, C40;
  wire C41, C42, C43, C44, C45, C46, C47, C48, C49, C50;
  wire C51, C52, C53, C54, C55, C56, C57, C58, C59, C60;
  wire C61, C62, C63;

  // First carry bit must be zero
  assign C0 = 1'b0;

  // 64 full_adders to make up a 64-bit ripple carry adder
  full_adder op1 (A[0], B[0], C0, SUM[0], C1),
   op2 (A[1], B[1], C1, SUM[1], C2),
   op3 (A[2], B[2], C2, SUM[2], C3),
   op4 (A[3], B[3], C3, SUM[3], C4),
   op5 (A[4], B[4], C4, SUM[4], C5),
   op6 (A[5], B[5], C5, SUM[5], C6),
   op7 (A[6], B[6], C6, SUM[6], C7),
   op8 (A[7], B[7], C7, SUM[7], C8),
   op9 (A[8], B[8], C8, SUM[8], C9),
   op10 (A[9], B[9], C9, SUM[9], C10),
   op11 (A[10], B[10], C10, SUM[10], C11),
   op12 (A[11], B[11], C11, SUM[11], C12),
   op13 (A[12], B[12], C12, SUM[12], C13),
   op14 (A[13], B[13], C13, SUM[13], C14),
   op15 (A[14], B[14], C14, SUM[14], C15),
   op16 (A[15], B[15], C15, SUM[15], C16),
   op17 (A[16], B[16], C16, SUM[16], C17),
   op18 (A[17], B[17], C17, SUM[17], C18),
   op19 (A[18], B[18], C18, SUM[18], C19),
   op20 (A[19], B[19], C19, SUM[19], C20),
   op21 (A[20], B[20], C20, SUM[20], C21),
   op22 (A[21], B[21], C21, SUM[21], C22),
   op23 (A[22], B[22], C22, SUM[22], C23),
   op24 (A[23], B[23], C23, SUM[23], C24),
   op25 (A[24], B[24], C24, SUM[24], C25),
   op26 (A[25], B[25], C25, SUM[25], C26),
   op27 (A[26], B[26], C26, SUM[26], C27),
   op28 (A[27], B[27], C27, SUM[27], C28),
   op29 (A[28], B[28], C28, SUM[28], C29),
   op30 (A[29], B[29], C29, SUM[29], C30),
   op31 (A[30], B[30], C30, SUM[30], C31),
   op32 (A[31], B[31], C31, SUM[31], C32),
   op33 (A[32], B[32], C32, SUM[32], C33),
   op34 (A[33], B[33], C33, SUM[33], C34),
   op35 (A[34], B[34], C34, SUM[34], C35),
   op36 (A[35], B[35], C35, SUM[35], C36),
   op37 (A[36], B[36], C36, SUM[36], C37),
   op38 (A[37], B[37], C37, SUM[37], C38),
   op39 (A[38], B[38], C38, SUM[38], C39),
   op40 (A[39], B[39], C39, SUM[39], C40),
   op41 (A[40], B[40], C40, SUM[40], C41),
   op42 (A[41], B[41], C41, SUM[41], C42),
   op43 (A[42], B[42], C42, SUM[42], C43),
   op44 (A[43], B[43], C43, SUM[43], C44),
   op45 (A[44], B[44], C44, SUM[44], C45),
   op46 (A[45], B[45], C45, SUM[45], C46),
   op47 (A[46], B[46], C46, SUM[46], C47),
   op48 (A[47], B[47], C47, SUM[47], C48),
   op49 (A[48], B[48], C48, SUM[48], C49),
   op50 (A[49], B[49], C49, SUM[49], C50),
   op51 (A[50], B[50], C50, SUM[50], C51),
   op52 (A[51], B[51], C51, SUM[51], C52),
   op53 (A[52], B[52], C52, SUM[52], C53),
   op54 (A[53], B[53], C53, SUM[53], C54),
   op55 (A[54], B[54], C54, SUM[54], C55),
   op56 (A[55], B[55], C55, SUM[55], C56),
   op57 (A[56], B[56], C56, SUM[56], C57),
   op58 (A[57], B[57], C57, SUM[57], C58),
   op59 (A[58], B[58], C58, SUM[58], C59),
   op60 (A[59], B[59], C59, SUM[59], C60),
   op61 (A[60], B[60], C60, SUM[60], C61),
   op62 (A[61], B[61], C61, SUM[61], C62),
   op63 (A[62], B[62], C62, SUM[62], C63),
   op64 (A[63], B[63], C63, SUM[63], C);
   
endmodule
