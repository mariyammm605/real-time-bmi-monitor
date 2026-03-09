module BMI(H1n, H0n, W1n, W0n, Underweight, Normal, Overweight, Obese);

input H1n, H0n, W1n, W0n;

output Underweight, Normal, Overweight, Obese;

wire [15:0] D;

wire Bit1, Bit0;

assign D[0]  = (~H1n & ~H0n & ~W1n & ~W0n);
assign D[1]  = (~H1n & ~H0n & ~W1n &  W0n);
assign D[2]  = (~H1n & ~H0n &  W1n & ~W0n);
assign D[3]  = (~H1n & ~H0n &  W1n &  W0n);
assign D[4]  = (~H1n &  H0n & ~W1n & ~W0n);
assign D[5]  = (~H1n &  H0n & ~W1n &  W0n);
assign D[6]  = (~H1n &  H0n &  W1n & ~W0n);
assign D[7]  = (~H1n &  H0n &  W1n &  W0n);
assign D[8]  = ( H1n & ~H0n & ~W1n & ~W0n);
assign D[9]  = ( H1n & ~H0n & ~W1n &  W0n);
assign D[10] = ( H1n & ~H0n &  W1n & ~W0n);
assign D[11] = ( H1n & ~H0n &  W1n &  W0n);
assign D[12] = ( H1n &  H0n & ~W1n & ~W0n);
assign D[13] = ( H1n &  H0n & ~W1n &  W0n);
assign D[14] = ( H1n &  H0n &  W1n & ~W0n);
assign D[15] = ( H1n &  H0n &  W1n &  W0n);

assign Bit1 = D[2] | D[3] | D[6] | D[7] | D[11] | D[15];

assign Bit0 = D[0] | D[1] | D[2] | D[3] | D[5] | D[7] | D[9] | D[10] | D[14];

assign Underweight = (~Bit1) & (~Bit0);
assign Normal = (~Bit1) & (Bit0);
assign Overweight = (Bit1) & (~Bit0);
assign Obese = (Bit1) & (Bit0);

endmodule
