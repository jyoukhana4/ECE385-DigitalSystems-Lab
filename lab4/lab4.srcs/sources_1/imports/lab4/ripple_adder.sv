module full_adder (input logic x, y, z,
                    output logic s, c );
    assign s = x^y^z;
    assign c = (x&y)|(y&z)|(x&z);
endmodule

module ADDER4 (input logic [3:0] A, B,
                input logic c_in,
                output logic [3:0] S,
                output logic c_out);
    
    logic c1, c2, c3;

    full_adder FA0(.x(A[0]), .y(B[0]), .z(c_in), .s(S[0]), .c(c1));
    full_adder FA1(.x(A[1]), .y(B[1]), .z(c1), .s(S[1]), .c(c2));
    full_adder FA2(.x(A[2]), .y(B[2]), .z(c2), .s(S[2]), .c(c3));
    full_adder FA3(.x(A[3]), .y(B[3]), .z(c3), .s(S[3]), .c(c_out));

endmodule

// 8 bit adder subtracter with 9th bit logic
module ripple_adder (
	input  logic  [7:0] a, 
    input  logic  [7:0] s,
	input  logic       fn,
	output logic  [8:0] xa,
	output logic       cout);
	//fn is function select
	logic [7:0] b_inv;
    logic [8:0] a_ext;
    logic [8:0] s_ext;
    assign b_inv = s ^ {8{fn}}; // Invert B if subtracting 
    assign a_ext = {a[7], a}; // most significant bit of a for sign extension
    assign s_ext = {b_inv[7], b_inv}; // most significant bit of s for sign extension
    logic c4, c8;
    
    ADDER4 ADDR4_0 (.A(a_ext[3:0]), .B(s_ext[3:0]), .c_in(fn), .S(xa[3:0]), .c_out(c4));
    ADDER4 ADDR4_1 (.A(a_ext[7:4]), .B(s_ext[7:4]), .c_in(c4), .S(xa[7:4]), .c_out(c8));
    full_adder ninthbit (.x(a_ext[8]), .y(s_ext[8]), .z(c8), .s(xa[8]), .c(cout)); // 9th bit adder

endmodule