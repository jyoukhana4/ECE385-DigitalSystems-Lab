`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 05:59:07 AM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench();
    timeunit 10ns;
    timeprecision 1ns;
    logic Clk, Reset_Load_Clear, Run;
    logic [7:0] SW;
    logic [7:0] Aval, Bval;
    logic Xval;
    logic [7:0]  hex_seg;
    logic [3:0]  hex_grid;
    
    multiplier_toplevel multiplier(.*);
    
	initial begin: CLOCK_INITIALIZATION
		Clk = 1;
	end 

	always begin : CLOCK_GENERATION
		#1 Clk = ~Clk;
	end
    
 /*
//positive * positive
initial begin: TEST_VECTORS // 4 * 5
    Reset_Load_Clear <= 0;
    Run = 0;
    #10 SW = 8'b00000100;
    #10 Reset_Load_Clear <= 1;
    #10 Reset_Load_Clear <= 0;
    #10 SW = 8'b00000101;
    #10
    Run = 1;
    #10 
    Run = 0;
    #100;
    end
endmodule
*/
/*
// positive * negative
initial begin: TEST_VECTORS // -4 * 5
    Reset_Load_Clear <= 0;
    Run = 0;
    #10 SW = 8'b11111100;
    #10 Reset_Load_Clear <= 1;
    #10 Reset_Load_Clear <= 0;
    #10 SW = 8'b00000101;
    #10
    Run = 1;
    #10 
    Run = 0;
    #100;
    end
endmodule


/*
// negative * negative
initial begin: TEST_VECTORS // -4 * -5
    Reset_Load_Clear <= 0;
    Run = 0;
    #10 SW = 8'b11111100;
    #10 Reset_Load_Clear <= 1;
    #10 Reset_Load_Clear <= 0;
    #10 SW = 8'b11111011;
    #10
    Run = 1;
    #10 
    Run = 0;
    #100;
    end
endmodule
*/