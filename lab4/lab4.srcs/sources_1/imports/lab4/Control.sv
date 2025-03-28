//Two-always example for state machine

module control (
	input  logic Clk, 
	input  logic Reset,
	input  logic Run,
	input  logic M,

	output logic clear_ld, 
	output logic shift,
	output logic Add,
	output logic Sub,
	output logic clearXA
);

	enum logic [4:0] {
	    reset,
		start, 
		clear_xa, 
		add1, shift1,
		add2, shift2,
		add3, shift3,
		add4, shift4,
		add5, shift5,
		add6, shift6,
		add7, shift7,
		add8, shift8
	} curr_state, next_state; 

	always_comb
	begin
	// Assign outputs based on ‘state’
		unique case (curr_state) 
			start: 
			begin
			Add = 1'b0;
			Sub = 1'b0;
			shift = 1'b0;
			clearXA = 1'b0;
			clear_ld = 1'b0;
			end

			reset: 
			begin
			Add = 1'b0;
			Sub = 1'b0;
			shift = 1'b0;
			clearXA = 1'b0;
			clear_ld = 1'b1;
			end
			            
			clear_xa: 
			begin
			Add = 1'b0;
			Sub = 1'b0;
			shift = 1'b0;
			clearXA = 1'b1;
			clear_ld = 1'b0;
			end

            add1,add2,add3,add4,add5,add6,add7:
            begin
            if (M == 1'b1) // M = 1 starts ADD
            begin
            Add = 1'b1;
			Sub = 1'b0;
			shift = 1'b0;
			clearXA = 1'b0;
			clear_ld = 1'b0;
			end
            else begin
            Add = 1'b0;
			Sub = 1'b0;
			shift = 1'b0;
			clearXA = 1'b0;
			clear_ld = 1'b0;
            end
            end

            add8:
            begin
            if (M == 1'b1) 
            begin
                Add = 1'b0;
			     Sub = 1'b1;
			     shift = 1'b0;
			     clearXA = 1'b0;
			     clear_ld = 1'b0;
			end
            else begin
            Add = 1'b0;
			Sub = 1'b0;
			shift = 1'b0;
			clearXA = 1'b0;
			clear_ld = 1'b0;
            end
            end
            
            shift1,shift2,shift3,shift4,shift5,shift6,shift7,shift8:
            begin
            Add = 1'b0;
			Sub = 1'b0;
			shift = 1'b1;
			clearXA = 1'b0;
			clear_ld = 1'b0;
			end
			endcase
	end

// Assign outputs based on state
	always_comb
	begin

		next_state  = curr_state;	//required because I haven't enumerated all possibilities below. Synthesis would infer latch without this
		unique case (curr_state) 

			start:    
			begin
				if (Run) 
				begin
					next_state = clear_xa;
				end
			end
            reset:  next_state = start;
            clear_xa: next_state = add1;
            add1:   next_state = shift1;
            shift1: next_state = add2;
            add2:   next_state = shift2;
            shift2: next_state = add3;
            add3:   next_state = shift3;
            shift3: next_state = add4;
            add4:   next_state = shift4;
            shift4: next_state = add5;
            add5:   next_state = shift5;
            shift5: next_state = add6;
            add6:   next_state = shift6;
            shift6: next_state = add7;
            add7:   next_state = shift7;
            shift7: next_state = add8;
            add8:   next_state = shift8;
            shift8:   next_state = start;
					
		endcase
	end

	always_ff @(posedge Clk)  
	begin
		if (Reset)
		begin
			curr_state <= reset;
		end
		else 
		begin
			curr_state <= next_state;
		end
	end

endmodule
