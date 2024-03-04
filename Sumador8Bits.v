`timescale 1ns / 1ns

module Sumador8Bits(

input [7:0] s8_a,
input [7:0] s8_b,
input s8_cin,    
output [7:0] s8_sum,
output s8_cout
);

wire cout;

Sumador4Bits FA0 (.s4_a(s8_a[3:0]), .s4_b(s8_b[3:0]), .s4_cin(s8_cin), .s4_sum(s8_sum[3:0]), .s4_cout(cout));

Sumador4Bits FA1 (.s4_a(s8_a[7:4]), .s4_b(s8_b[7:4]), .s4_cin(cout), .s4_sum(s8_sum[7:4]), .s4_cout(s8_cout));

endmodule
