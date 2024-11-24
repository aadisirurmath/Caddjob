module PE42_tb();
reg[3:0] A;
wire[1:0] Y;
wire V;
PE42 DUT(A,Y,V);
initial begin
#10
A=4'b0000;
#10
A=4'b0001;
#10
A=4'b0011;
#10
A=4'b0111;
#10
A=4'b1111;
#10
$stop;
end
