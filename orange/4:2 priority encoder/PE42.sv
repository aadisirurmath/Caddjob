module PE42(
input logic[3:0] A,
output logic[1:0] Y,
output logic V
   );
always_comb
casez(A)
4'b0000:begin Y=2'b00;V=0;end
4'b0001:begin Y=2'b00;V=1;end
4'b001?:begin Y=2'b01;V=1;end
4'b01??:begin Y=2'b10;V=1;end
4'b1???:begin Y=2'b11;V=1;end
endcase
endmodule
