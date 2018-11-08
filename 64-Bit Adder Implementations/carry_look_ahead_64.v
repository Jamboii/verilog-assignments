`timescale 1ns / 1ps
module carry_look_ahead_64
(
  input [63:0] A,
  input [63:0] B,
  output [63:0] SUM,
  output C
);
  // Wires will structurally connect each full_adder (2-bit look-ahead)
  wire C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10;
  wire C11, C12, C13, C14, C15, C16, C17, C18, C19, C20;
  wire C21, C22, C23, C24, C25, C26, C27, C28, C29, C30, C31;

  // First carry bit must be zero
  assign C0 = 1'b0;

  // 32 different two_bit_look_ahead adders are combined together to create a 64-bit carry look-ahead adder
  two_bit_look_ahead op1 (A[1:0], B[1:0], C0, SUM[1:0], C1),
  op2 (A[3:2], B[3:2], C1, SUM[3:2], C2),
  op3 (A[5:4], B[5:4], C2, SUM[5:4], C3),
  op4 (A[7:6], B[7:6], C3, SUM[7:6], C4),
  op5 (A[9:8], B[9:8], C4, SUM[9:8], C5),
  op6 (A[11:10], B[11:10], C5, SUM[11:10], C6),
  op7 (A[13:12], B[13:12], C6, SUM[13:12], C7),
  op8 (A[15:14], B[15:14], C7, SUM[15:14], C8),
  op9 (A[17:16], B[17:16], C8, SUM[17:16], C9),
  op10 (A[19:18], B[19:18], C9, SUM[19:18], C10),
  op11 (A[21:20], B[21:20], C10, SUM[21:20], C11),
  op12 (A[23:22], B[23:22], C11, SUM[23:22], C12),
  op13 (A[25:24], B[25:24], C12, SUM[25:24], C13),
  op14 (A[27:26], B[27:26], C13, SUM[27:26], C14),
  op15 (A[29:28], B[29:28], C14, SUM[29:28], C15),
  op16 (A[31:30], B[31:30], C15, SUM[31:30], C16),
  op17 (A[33:32], B[33:32], C16, SUM[33:32], C17),
  op18 (A[35:34], B[35:34], C17, SUM[35:34], C18),
  op19 (A[37:36], B[37:36], C18, SUM[37:36], C19),
  op20 (A[39:38], B[39:38], C19, SUM[39:38], C20),
  op21 (A[41:40], B[41:40], C20, SUM[41:40], C21),
  op22 (A[43:42], B[43:42], C21, SUM[43:42], C22),
  op23 (A[45:44], B[45:44], C22, SUM[45:44], C23),
  op24 (A[47:46], B[47:46], C23, SUM[47:46], C24),
  op25 (A[49:48], B[49:48], C24, SUM[49:48], C25),
  op26 (A[51:50], B[51:50], C25, SUM[51:50], C26),
  op27 (A[53:52], B[53:52], C26, SUM[53:52], C27),
  op28 (A[55:54], B[55:54], C27, SUM[55:54], C28),
  op29 (A[57:56], B[57:56], C28, SUM[57:56], C29),
  op30 (A[59:58], B[59:58], C29, SUM[59:58], C30),
  op31 (A[61:60], B[61:60], C30, SUM[61:60], C31),
  op32 (A[63:62], B[63:62], C31, SUM[63:62], C);
endmodule

module two_bit_look_ahead
(
  input [1:0] A,
  input [1:0] B,
  input C_IN,
  output [1:0] SUM,
  output C_OUT
);

  // Defining wires for gate connections
  wire tempSum;
  wire temp1;
  wire temp2;
  wire temp3;
  wire temp4;
  wire temp5;
  wire temp6;
  wire temp7;

  // Compute SUM output by using logic gates
  xor A1 (tempSum, A[0], B[0]);
  xor A2 (SUM[0], tempSum, C_IN);
  and A3 (temp1, tempSum, C_IN);
  and A4 (temp2, A[0], B[0]);
  xor A5 (temp3, A[1], B[1]);
  xor A6 (temp4, temp2, temp1);
  xor A7 (SUM[1], temp3, temp4);
  // Compute C_OUT bit by using logic gates
  and B1 (temp5, A[1], B[1]);
  or B2 (temp6, temp2, temp1);
  and B3 (temp7, temp3, temp6);
  or B4 (C_OUT, temp5, temp7);
endmodule
