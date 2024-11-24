module prime(
input logic[3:0] A,
output logic D,P
    );
assign P = (A[1] & ~A[2] & ~A[3]) | (A[0] & A[2] & ~A[3]) | (A[0] & A[2] & ~A[1]) | (A[1] & A[0] & ~A[2]);
assign D = (A[0] & A[1] & A[2] & A[3])|(~A[0] & ~A[1] & A[2] & A[3])|(A[0] & ~A[1] & ~A[2] & A[3])|(~A[0] & A[1] & A[2] & ~A[3])|(A[0] & A[1] & ~A[2] & ~A[3]);
endmodule
