module toll(
	input N1,
	input N2,
	input D,
	input Q,
	output Paid,
	output Stop
);

	assign Paid = (N1 & N2) | D | Q;
	assign Stop = ~Paid;

endmodule