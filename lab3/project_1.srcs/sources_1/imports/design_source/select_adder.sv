module adder (input logic x, y, z,
                    output logic s, c );
    assign s = x^y^z;
    assign c = (x&y)|(y&z)|(x&z);
endmodule

module ADDER_4 (input logic [3:0] A, B,
                input logic c_in,
                output logic [3:0] S,
                output logic c_out);
    
    logic c1, c2, c3;

    adder FA0(.x(A[0]), .y(B[0]), .z(c_in), .s(S[0]), .c(c1));
    adder FA1(.x(A[1]), .y(B[1]), .z(c1), .s(S[1]), .c(c2));
    adder FA2(.x(A[2]), .y(B[2]), .z(c2), .s(S[2]), .c(c3));
    adder FA3(.x(A[3]), .y(B[3]), .z(c3), .s(S[3]), .c(c_out));

endmodule

// two ripple adders for carry select
module ripple_adders (input logic [3:0] A, B,
                        input logic cin,
                        output logic [3:0] s,
                        output logic cout);
    logic c0, c1;
    logic [3:0] s0, s1; // two seperate sums for each ripple adder
    
    ADDER_4 add0(.A(A[3:0]), .B(B[3:0]), .c_in(1'b0), .S(s0[3:0]), .c_out(c0));
    ADDER_4 add1(.A(A[3:0]), .B(B[3:0]), .c_in(1'b1), .S(s1[3:0]), .c_out(c1));    

    always_comb begin
    cout = c0 | (c1&cin);
    if (cin == 1'b1)
        s = s1;
    else
        s = s0;
    end
endmodule



module select_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);
    
    logic c4,c8,c12;
    ripple_adders add0(.A(a[3:0]), .B(b[3:0]), .cin(cin), .s(s[3:0]), .cout(c4));
    ripple_adders add1(.A(a[7:4]), .B(b[7:4]), .cin(c4), .s(s[7:4]), .cout(c8)); 
    ripple_adders add2(.A(a[11:8]), .B(b[11:8]), .cin(c8), .s(s[11:8]), .cout(c12));
    ripple_adders add3(.A(a[15:12]), .B(b[15:12]), .cin(c12), .s(s[15:12]), .cout(cout));     

endmodule
