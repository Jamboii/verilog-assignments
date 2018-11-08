`timescale 1ns / 1ps

module alu
(
  input [63:0] A,B,
  input [3:0] SELECT,
  output [63:0] OUT
);

  reg [63:0] RESULT;
  wire [64:0] temp;
  assign OUT = RESULT;
  always @(A or B or SELECT)
  begin
	case(SELECT)
    	4'b0000: // 0 -> AND
        	RESULT = A & B;
    	4'b0001: // 1 -> OR
        	RESULT = A | B;
    	4'b0010: // 2 -> ADD
        	RESULT = A + B;
    	4'b0110: // 6 -> SUB
        	RESULT = A - B;
    	4'b0111: // 7 -> PASS B
        	RESULT = B;
    	4'b1100: // 12 -> NOR
        	RESULT = ~(A | B);   	 
	endcase
   end
endmodule
