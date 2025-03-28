`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2025 12:40:41 PM
// Design Name: 
// Module Name: testbenchdemo
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


module testbenchdemo();

timeunit 10ns;
timeprecision 1ns;

logic clk, reset, continue_i, run_i;
logic [15:0] sw_i, led_o;
logic [7:0] hex_seg_left, hex_seg_right;
logic [3:0] hex_grid_left, hex_grid_right;
logic [15:0] MAR,MDR,IR,PC, HEX_dsplay;

processor_top processor(.*);

assign HEX_dsplay = processor.slc3.io_bridge.hex_display;
assign led_o = processor.slc3.led_o;
assign MAR = processor.slc3.cpu.mar;
assign MDR = processor.slc3.cpu.mdr;
assign IR  = processor.slc3.cpu.ir;
assign PC  = processor.slc3.cpu.pc;

always begin : CLOCK_GENERATION
#1 clk = ~clk;
end

initial begin : CLOCK_INITIALIZATION
clk = 0;
end

initial begin : TEST_VECTORS
sw_i = 10'b0001011010;    //005A
run_i = 0;
reset = 1;
#10;
reset = 0;
continue_i = 0;
#10 continue_i = 1; //trigger run
run_i = 0;
#30 continue_i = 1;
run_i = 1;

#100 continue_i = 0; run_i = 1;
sw_i = 10'b0000000011; //display
#20 continue_i = 1;
    run_i = 1;
#150 continue_i = 0; run_i = 1; //1
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //2
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //3
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //4
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //5
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //6
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //7
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //8
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //9
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //10
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //11
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //12
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //13
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //14
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //15
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //16
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //17
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1;
sw_i = 10'b0000000010; //sort
#50 continue_i = 1; run_i = 1;
#26000 continue_i = 0; run_i = 1;
sw_i = 10'b0000000011; //display //1
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //2
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //3
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //4
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //5
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //6
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //7
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //8
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //9
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //10
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //11
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //12
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //13
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //14
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //15
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //16
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1; //17
 #50 continue_i = 1; run_i = 1;
#150 continue_i = 0; run_i = 1;

    end
endmodule
