module comb3(input logic A, B, C, D, output logic Y, Z);

  logic w1, w2, w3, w4, w5;

  assign w1 = (~A) & D;
  assign w2 = B & D;
  assign w3 = A & ~C & D;
  assign w4 = A & ~B & C;
  assign w5 = A & B & C & D;

  assign Y = w1 | w5 | w3 | w4;
  assign Z = w2 | w3;
endmodule
