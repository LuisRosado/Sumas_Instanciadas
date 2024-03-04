
`timescale 1ns / 1ns

module TB_Sumador8Bits;

// Inputs
reg [7:0] s8_a;
reg [7:0] s8_b;
reg s8_cin;

// Outputs
wire [7:0] s8_sum;
wire s8_cout;


Sumador8Bits uut (
.s8_a(s8_a), 
.s8_b(s8_b), 
.s8_cin(s8_cin), 
.s8_sum(s8_sum), 
.s8_cout(s8_cout)
);

initial 
begin
	s8_a = 8'd15;
	s8_b = 8'd15;
	s8_cin = 1'd0;	
	#100;
        
		
	s8_a = 8'd3;
	s8_b = 8'd12;
	#100;
		
				
	s8_a = 8'd8;
	s8_b = 8'd8;
	#100;
		
				
	s8_a = 8'd13;
	s8_b = 8'd7;
	#100;
		
				
	s8_a = 8'd5;
	s8_b = 8'd20;
	#100;	

end
      
endmodule
