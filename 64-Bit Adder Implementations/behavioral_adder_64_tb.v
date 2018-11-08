`timescale 1ns / 1ps
module behavioral_adder_64_tb;
  reg [63:0] A;
  reg [63:0] B;

  wire [64:0] SUM;

  behavioral_adder_64 uut
  (
	.A(A),
	.B(B),
	.SUM(SUM)
  );
  initial begin
	A = 32;
	B = 32;
  end
endmodule