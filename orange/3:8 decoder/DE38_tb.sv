module DE38_tb();
reg[3:0] A;
wire[7:0] Y;
DE38 DUT(A,Y);
initial begin
#10
A = 3'b000;
#10
A = 3'b001;
#10
A = 3'b010;
#10
A = 3'b011;
#10
A = 3'b100;
#10
A = 3'b101;
#10
A = 3'b110;
#10
A = 3'b111;
#10
$stop;
end
endmodule
