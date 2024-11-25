module gcc_tb;
  reg clk;
  reg reset;
  wire [2:0] gray;
gcc dut (
    .clk(clk),
    .reset(reset),
    .gray(gray)
  );
    always #5 clk = ~clk;
  initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #200;
    $finish;
  end

endmodule
