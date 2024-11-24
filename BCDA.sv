module BCDA(
input logic[3:0] A,B,
input logic Cin,
output logic[3:0] S,
output logic C
    );
logic[3:0] X;
logic C1;
CLA I1(A,B,Cin,X,C1);
or(C,C1,X[2]&X[3],X[1]&X[3]);
always_comb
if(C)
S = X + 4'b0110;
else
S = X;
endmodule
