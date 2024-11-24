module PE83_tb();
reg[7:0] A;
wire[2:0] Y;
wire V;
PE83 DUT(A,Y,V);
initial begin
#10
A = 8'b00000000;
#10
A = 8'b00000011;
#10
A = 8'b00000111;
#10
A = 8'b00001111;
#10
A = 8'b00011111;
#10
A = 8'b00111111;
#10
A = 8'b01111111;
#10
A = 8'b11111111;
#10
$stop;
end
endmodule
