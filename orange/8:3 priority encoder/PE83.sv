module PE83(
input logic[7:0] A,
output logic[2:0] Y,
output logic V
    );
always_comb
casez(A)
8'b00000000:begin Y=3'b000;V=0; end
8'b00000001:begin Y=3'b000;V=1; end
8'b0000001?:begin Y=3'b001;V=1; end
8'b000001??:begin Y=3'b010;V=1; end
8'b00001???:begin Y=3'b011;V=1; end
8'b0001????:begin Y=3'b100;V=1; end
8'b001?????:begin Y=3'b101;V=1; end
8'b01??????:begin Y=3'b110;V=1; end
8'b1???????:begin Y=3'b111;V=1; end 
endcase
endmodule
