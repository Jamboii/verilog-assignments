module toll_tb();
// Inputs
   reg N1;
   reg N2;
   reg D;
   reg Q;
// Output
   wire Paid;
   wire Stop;
// Instantiate the UUT
   toll UUT (
		.N1(N1), 
		.N2(N2), 
		.D(D), 
		.Q(Q), 
		.Paid(Paid), 
		.Stop(Stop)
   );
// Initialize Inputs
    initial begin
		N1 = 1;
		N2 = 1;
		D = 1;
		Q = 1;
		// Wait 50 ns for global reset to finish
		#50;
		N1 = 1;
		N2 = 1;
		D = 1;
		Q = 0;
		// Wait 50 ns for global reset to finish
		#50;       
		N1 = 1;
		N2 = 1;
		D = 0;
		Q = 1;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 1;
		N2 = 1;
		D = 0;
		Q = 0;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 1;
		N2 = 0;
		D = 1;
		Q = 1;
		// Wait 50 ns for global reset to finish
		#50;    
		N1 = 1;
		N2 = 0;
		D = 1;
		Q = 0;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 1;
		N2 = 0;
		D = 0;
		Q = 1;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 1;
		N2 = 0;
		D = 0;
		Q = 0;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 0;
		N2 = 1;
		D = 1;
		Q = 1;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 0;
		N2 = 1;
		D = 1;
		Q = 0;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 0;
		N2 = 1;
		D = 0;
		Q = 1;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 0;
		N2 = 1;
		D = 0;
		Q = 0;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 0;
		N2 = 0;
		D = 1;
		Q = 1;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 0;
		N2 = 0;
		D = 1;
		Q = 0;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 0;
		N2 = 0;
		D = 0;
		Q = 1;
		// Wait 50 ns for global reset to finish
		#50;     
		N1 = 0;
		N2 = 0;
		D = 0;
		Q = 0;
		// Wait 50 ns for global reset to finish
		#50;     		
		// Add stimulus here
	end
endmodule