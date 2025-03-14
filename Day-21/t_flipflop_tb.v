module t_ff_tb;

  reg clk, t, reset;
  wire q;

  t_ff dut (
    .clk(clk),
    .t(t),
    .reset(reset),
    .q(q)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk; // Generate clock
  end

  initial begin
    $monitor("clk=%b, t=%b, reset=%b, q=%b", clk, t, reset, q);

    reset = 1'b1; t = 1'b0; #10; // Reset
    reset = 1'b0; #10;

    t = 1'b0; #20; // No toggle
    t = 1'b1; #20; // Toggle
    t = 1'b0; #20; // No toggle
    t = 1'b1; #20; // Toggle
    reset = 1'b1; #10; // Reset again
    reset = 1'b0; #10;
    t = 1'b1; #20; // Toggle

    $finish;
  end

endmodule
