`timescale 1ns / 1ps

module alu_tb;
 
  // Inputs
  reg[63:0] A,B;
  reg[3:0] SELECT;
 
  // Outputs
  wire[63:0] OUT;
 
  // Assign variables to unit under test
  alu uut
  (
	.A(A),
	.B(B),
	.SELECT(SELECT),
	.OUT(OUT)
  );
 
  // Assign inputs and test on different ALU controls
  initial begin
	A = 64;
	B = 32;
 	 
	SELECT = 4'b0000; // test AND 
	#100;
	SELECT = 4'b0001; // test OR
	#100;
	SELECT = 4'b0010; // test ADD
	#100;
	SELECT = 4'b0110; // test SUB
	#100;
	SELECT = 4'b0111; // test PASS B
	#100;
	SELECT = 4'b1100; // test NOR
 	 
  end
endmodule
