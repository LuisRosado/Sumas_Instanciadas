`timescale 1ns / 1ns

module Half_Adder(

input ha_a, ha_b,
output ha_c, ha_s

);

 assign ha_s = ha_a ^ ha_b;
 assign ha_c = ha_a & ha_b;   
 
endmodule
