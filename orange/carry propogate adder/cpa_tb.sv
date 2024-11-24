module cpa_tb();
reg[3:0] A,B;
wire[3:0] Y;
cpa DUT(A,B,Y);
initial begin
#10
A = 4'b0010; B = 4'b0110;
#10
A = 4'b0110; B = 4'b0111;
#10
A = 4'b1011; B = 4'b1110;
#10
A = 4'b1010; B = 4'b0110;
#10
A = 4'b1111; B = 4'b1110;
#10
$stop;
end
endmodule
