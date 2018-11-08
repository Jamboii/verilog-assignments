`timescale 1ns / 1ps
module ripple_carry_64_tb;
  reg [63:0] A;
  reg [63:0] B;

  wire [63:0] SUM;
  wire C;

  ripple_carrry_64 uut
  (
	.A(A),
	.B(B),
	.SUM(SUM),
	.C(C)
  );
  initial begin
	A = 32;
	B = 32;
  end
endmodule