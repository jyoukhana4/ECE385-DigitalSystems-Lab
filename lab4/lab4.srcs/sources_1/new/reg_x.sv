

module reg_x(
	input  logic 		  Clk, 
	input  logic 		  Reset, 
	input  logic 		  Load, 
	input  logic          D,

	output logic     	  D_Out
    );
	always_ff @(posedge Clk)
	begin
	 	 if (Reset) //notice, this is a sycnrhonous reset, which is recommended on the FPGA
			D_Out <= 1'b0;
		 else if (Load)
			D_Out <= D;
    end
endmodule
