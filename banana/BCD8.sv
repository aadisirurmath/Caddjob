module BCD8(
input logic[7:0] A,B,
input logic Cin,
output logic[7:0] S,
inout logic Cout
    );
logic C;
BCDA I1(A[3:0],B[3:0],Cin,S[3:0],C);
BCDA I2(A[7:4],B[7:4],C,S[7:4],Cout);
endmodule
