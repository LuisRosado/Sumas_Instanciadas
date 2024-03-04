`timescale 1ns / 1ns

module Full_Adder (
input fa_a,
input fa_b,
input fa_cin,
output fa_sum,
output fa_cout
);


wire c1,c2,c3;


Half_Adder ha1(
.ha_a(fa_a),
.ha_b(fa_b),
.ha_c(c3),
.ha_s(c1)
);


Half_Adder ha2(
.ha_a(fa_cin),
.ha_b(c1),
.ha_c(c2),
.ha_s(fa_sum)
);


assign fa_cout = c2|c3;



endmodule
