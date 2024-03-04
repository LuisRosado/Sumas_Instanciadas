`timescale 1ns / 1ns

module tb_Sumador4Bits;

	// Inputs
	reg [3:0] s4_a;
	reg [3:0] s4_b;
	reg s4_cin;

	// Outputs
	wire [3:0] s4_sum;
	wire s4_cout;

	// (UUT)
	Sumador4Bits uut (
		.s4_a(s4_a), 
		.s4_b(s4_b), 
		.s4_cin(s4_cin), 
		.s4_sum(s4_sum), 
		.s4_cout(s4_cout)
	);

	initial begin
	s4_a = 4'd1;
	s4_b = 4'd1;
	s4_cin = 1'd0;	
	#100;
        
		
	s4_a = 4'd3;
	s4_b = 4'd2;
	#100;
		
				
	s4_a = 4'd8;
	s4_b = 4'd7;
	#100;
		
				
	s4_a = 4'd7;
	s4_b = 4'd4;
	#100;
		
				
	s4_a = 4'd5;
	s4_b = 4'd9;
	#100;
	end
      
endmodule
