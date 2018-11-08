module behavioral_adder_64(
  input [63:0] A,
  input [63:0] B,
  output [64:0] SUM
);

  // Logic for sum of adder
  assign SUM = (A + B);
 
endmodule