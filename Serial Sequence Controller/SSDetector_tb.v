module SSDetector_TB;
    //INPUT
    reg clock;
    reg in;
    reg reset;
    //wire output
    wire g;
    wire r;
    //UNIT UNDER TEST
    SSDetector uut(
        .clock(clock),
        .in(in),
        .reset(reset),
        .g(g),
        .r(r)        
    );
    initial begin
        // Give value to inputs
        in = 0; clock = 0; reset = 0; #50;
        in = 1; clock = 0; reset = 1; #50;
        in = 0; #50; clock = 1; #50;
        in = 1; clock = 0; #50;
        in =1; #50; clock = 1; #50;
        in = 0; clock = 0; #50;
    	in =1; #50; clock = 1; #50;
        in = 1; clock = 0; #50; 
        in =0; #50; clock = 1; #50;
        in = 1; clock = 0; #50; reset = 0; #50;        
    end
endmodule
