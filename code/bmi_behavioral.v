module BMI(H1, H0, W1, W0, Underweight, Normal, Overweight, Obese);

input H1, H0, W1, W0;
output reg Underweight, Normal, Overweight, Obese;

reg [1:0] Bit;
reg [3:0] D_in;

always @(*) begin

 D_in = {H1, H0, W1, W0};

 Underweight = 0;
 Normal = 0;
 Overweight = 0;
 Obese = 0;

 Bit = 2'b00;

 case (D_in)

 4'b0000: Bit = 2'b01;
 4'b0001: Bit = 2'b01;
 4'b0010: Bit = 2'b11;
 4'b0011: Bit = 2'b11;
 4'b0100: Bit = 2'b00;
 4'b0101: Bit = 2'b01;
 4'b0110: Bit = 2'b10;
 4'b0111: Bit = 2'b11;
 4'b1000: Bit = 2'b00;
 4'b1001: Bit = 2'b01;
 4'b1010: Bit = 2'b01;
 4'b1011: Bit = 2'b10;
 4'b1100: Bit = 2'b00;
 4'b1101: Bit = 2'b00;
 4'b1110: Bit = 2'b01;
 4'b1111: Bit = 2'b10;

 default: Bit = 2'b00;

 endcase

 case (Bit)

 2'b00: Underweight = 1;
 2'b01: Normal = 1;
 2'b10: Overweight = 1;
 2'b11: Obese = 1;

 endcase

end

endmodule
