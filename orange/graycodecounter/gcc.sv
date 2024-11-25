module gcc(
    input logic clk,
    input logic reset,
    output logic[2:0] gray
);
logic[2:0] count;
always @(posedge clk, posedge reset) 
begin
    if (reset) 
        count <= 0;
    else 
        count <= count + 1;
end
assign gray[2] = count[2];
assign gray[1] = count[2]^count[1];
assign gray[0] = count[1]^count[0];
endmodule
