module tb_bmi_structural;

reg H1n, H0n, W1n, W0n;

wire Underweight, Normal, Overweight, Obese;

BMI uut(H1n, H0n, W1n, W0n, Underweight, Normal, Overweight, Obese);

integer i;

initial begin

 for (i=0; i<16; i=i+1) begin

 {H1n,H0n,W1n,W0n} = i;

 #10;

 end

 $finish;

end

endmodule
