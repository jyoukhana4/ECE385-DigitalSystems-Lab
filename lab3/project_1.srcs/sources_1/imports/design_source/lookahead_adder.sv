module lookahead (input logic x, y, z,
                    output logic s, g, p );
    always_comb begin
        s = x^y^z;
        g = x&y; // Generate Cout = 1
        p = x^y; // propogate Cout = C
        end
endmodule

module la_4 (input logic [3:0] A, B,
                input logic c_in,
                output logic [3:0] S,
                output logic pg, gg);
    
    logic c1, c2, c3;
    logic [3:0] p; //propogate 4 adders
    logic [3:0] g; //generate 4 adders
    
    lookahead LA0 (.x(A[0]), .y(B[0]), .z(c_in), .s(S[0]), .p(p[0]), .g(g[0]));
    assign c1 = g[0] | (p[0]&c_in);
    lookahead LA1 (.x(A[1]), .y(B[1]), .z(c1), .s(S[1]), .p(p[1]), .g(g[1]));
    assign c2 = g[1] | (p[1]&g[0]) | (p[1]&p[0]&c_in);
    lookahead LA2 (.x(A[2]), .y(B[2]), .z(c2), .s(S[2]), .p(p[2]), .g(g[2]));
    assign c3 = g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&c_in);
    lookahead LA3 (.x(A[3]), .y(B[3]), .z(c3), .s(S[3]), .p(p[3]), .g(g[3]));
    always_comb begin
    pg = p[3] & p[2] & p[1] & p[0];
    gg = g[3] | (g[2]&p[3]) | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&g[0]);
    end
endmodule

module lookahead_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);
    
    logic c4,c8,c12;
    logic g0,g4,g8,g12;
    logic p0,p4,p8,p12;

    la_4 LA0 (.A(a[3:0]), .B(b[3:0]), .c_in(cin), .S(s[3:0]), .pg(p0), .gg(g0));
    assign c4 = g0 | (p0&cin);
    la_4 LA1 (.A(a[7:4]), .B(b[7:4]), .c_in(c4), .S(s[7:4]), .pg(p4), .gg(g4));
    assign c8 = g4 | (p4&g0) | (p4&p0&cin);
    la_4 LA2 (.A(a[11:8]), .B(b[11:8]), .c_in(c8), .S(s[11:8]), .pg(p8), .gg(g8));
    assign c12 = g8 | (p8&g4) | (p8&p4&g0) | (p8&p4&p0&cin);
    la_4 LA3 (.A(a[15:12]), .B(b[15:12]), .c_in(c12), .S(s[15:12]), .pg(p12), .gg(g12));
    assign cout = g12 | (p12&g8) | (p12&p8&g4) | (p12&p8&p4&g0) | (p12&p8&p4&p0&cin);
    
endmodule
