module fsm_tb();
reg clk,reset,a,b;
wire y;
fsm DUT(clk,reset,a,b,y);
always
#5 clk = ~clk;
initial begin
clk = 1;
reset = 1;
a = 0;
b = 0;
#10
reset = 0;
#10
a = 1;
#40
b = 1;
#100
$stop;
end
endmodule
