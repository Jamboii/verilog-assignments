module SSDetector(
    input clock,
    input in,
    input reset,
    output g,
    output r
    );
    parameter s0 = 3'd0, s1 = 3'd1, s2 =3'd2, s3 = 3'd3, s4 = 3'd4;
    reg [2:0] PRState, NXState;
    reg g;
    assign r = ~ g;   
    always @ (PRState) begin
        if (PRState == s4) g = 1'b1;
        else g = 1'b0;
    end
    always @ (posedge clock or negedge reset) begin
            if (reset == 1'b0) PRState = s0;
            else PRState = NXState;
    end    
    always @ (PRState or in) begin
       case(PRState)
           s0 : if (in == 1'b0) NXState = s1;
                       else NXState = s0;
           s1 : if (in == 1'b1) NXState = s2;
                       else NXState = s1;
           s2 : if (in == 1'b1) NXState = s3;
                       else NXState = s1;
           s3 : if (in == 1'b0) NXState = s4;
                       else NXState = s0;
           s4: NXState = s4;
       endcase
    end
endmodule
