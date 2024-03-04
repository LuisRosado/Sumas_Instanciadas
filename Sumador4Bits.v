`timescale 1ns / 1ns

module Sumador4Bits(
input [3:0] s4_a,
input [3:0] s4_b,
input s4_cin,    
output [3:0] s4_sum,
output s4_cout);

wire cout1,cout2,cout3;

Full_Adder fa0 (.fa_a(s4_a[0]), .fa_b(s4_b[0]), .fa_cin(s4_cin), .fa_sum(s4_sum[0]), .fa_cout(cout1));
Full_Adder fa1 (.fa_a(s4_a[1]), .fa_b(s4_b[1]), .fa_cin(cout1), .fa_sum(s4_sum[1]), .fa_cout(cout2));
Full_Adder fa2 (.fa_a(s4_a[2]), .fa_b(s4_b[2]), .fa_cin(cout2), .fa_sum(s4_sum[2]), .fa_cout(cout3));
Full_Adder fa3 (.fa_a(s4_a[3]), .fa_b(s4_b[3]), .fa_cin(cout3), .fa_sum(s4_sum[3]), .fa_cout(s4_cout));

endmodule
