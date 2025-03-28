`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2025 02:29:57 PM
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

timeunit 10ns;    // Half clock cycle at 50 MHz
timeprecision 1ns;
  logic         clk;
  logic         reset;
  logic         run_i;
  logic [15:0]  sw_i;
  
  // Outputs from the DUT
  logic         sign_led;
  logic [7:0]   hex_seg_a;
  logic [3:0]   hex_grid_a;
  logic [7:0]   hex_seg_b;
  logic [3:0]   hex_grid_b;
  logic [15:0]  s;
adder_toplevel adder(.*);

always begin : CLOCK_GENERATION
    #1 clk = ~clk;
end
initial begin : CLOCK_INITIALIZATION
    clk = 0;
end

initial begin: TEST_VECTORS
  reset = 1;
    run_i <= 0;
    sw_i  <= 16'h0000;
    
    // Hold reset for a few cycles
    #12;
    reset = 0;
    #10;
    
    // Test 1: Add 1 (0x0001) to the accumulator
    sw_i  <= 16'h0001;
    run_i <= 1;  // Generate a pulse on run_i
    #10;
    run_i <= 0;
    #20;
    
    // Test 2: Add 16 (0x0010)
    sw_i  <= 16'h0010;
    run_i <= 1;
    #10;
    run_i <= 0;
    #20;

    // Test 3: Add 255 (0x00FF)
    sw_i  <= 16'h00FF;
    run_i <= 1;
    #10;
    run_i <= 0;
    #20;

    // Test 4: Add an arbitrary value (0x0A0A)
    sw_i  <= 16'h0A0A;
    run_i <= 1;
    #10;
    run_i <= 0;
    #20;
    
    // Finish simulation after a short delay
    #50;
    $finish;
  end
endmodule