module comb1(input logic A, B, C, D, output logic Y);
assign Y = (~A & ~B & ~C & ~D) | (~A & ~B & ~C) | (A & ~B & C & ~D) | (A & B & D) | (~A & ~B & C & ~D) | (B & ~C & D) | ~A;
endmodule
