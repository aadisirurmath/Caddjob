module BCD8_tb();
reg[7:0] A,B;
reg Cin;
wire[7:0] S;
wire Cout;
BCD8 DUT(A,B,Cin,S,Cout);
initial begin
#10
A = 8'b00000001;B = 8'b00000010;Cin = 0;
#10
A = 8'b01000101;B = 8'b01010101;Cin = 0;
#10
A = 8'b00100101;B = 8'b00110010;Cin = 0;
#10
A = 8'b10011001;B = 8'b01110010;Cin = 0;
#10
A = 8'b00101001;B = 8'b00000010;Cin = 0;
#10
A = 8'b10000101;B = 8'b00101001;Cin = 0;
#10
A = 8'b01100101;B = 8'b10011000;Cin = 0;
#10
$stop;
end
endmodule
