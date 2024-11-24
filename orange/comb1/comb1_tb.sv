module comb1_tb();
reg A, B, C, D;
wire Y;
comb1 uut (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Y(Y)
  );
  initial begin
    A = 0; B = 0; C = 0; D = 0;
    #10;
    A = 1; B = 1; C = 1; D = 1;
    #10;
    A = 1; B = 1; C = 1; D = 1;
    #10;
    $stop;
    end
endmodule
