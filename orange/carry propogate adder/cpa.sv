module cpa(
input logic[3:0] A,B,
output logic[3:0] Y
    );
logic c1,c2,c3;
assign Y[0] = A[0]^B[0]; 
assign c1 = A[0]&B[0];
assign Y[1] = A[1]^B[1]^c1;
assign c2 = A[1]&B[1] | A[1]&c1 | B[1]&c1; 
assign Y[2] = A[2]^B[2]^c2; 
assign c3 = A[2]&B[2] | A[2]&c2 | B[2]&c2;
assign Y[3] = A[3]^B[3]^c3;
endmodule
