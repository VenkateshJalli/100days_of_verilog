// Testbench Module
module jk_ff_ms_tb;

  reg j, k, clk, reset;
  wire q, q_bar;

  // Instantiate the JK Flip-Flop
  jk_ff_ms uut (
    .j(j),
    .k(k),
    .clk(clk),
    .reset(reset),
    .q(q),
    .q_bar(q_bar)
  );

  // Clock Generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // Clock period of 10 time units
  end

  // Test Stimulus
  initial begin
    reset = 1;
    j = 0;
    k = 0;
    #10;
    reset = 0;
    #10;
    j = 0; k = 0; #20; // No change
    j = 0; k = 1; #20; // Reset
    j = 1; k = 0; #20; // Set
    j = 1; k = 1; #20; // Toggle
    j = 1; k = 1; #20; // Toggle again
    j = 0; k = 0; #20;
    reset = 1; #10; reset = 0; #10;
    $finish;
  end

  // Dump waveform for simulation
  initial begin
    $dumpfile("jk_ff_ms.vcd");
    $dumpvars(0, jk_ff_ms_tb);
  end

  // Monitor the signals
  initial begin
    $monitor("Time=%0t, j=%b, k=%b, clk=%b, reset=%b, q=%b, q_bar=%b", $time, j, k, clk, reset, q, q_bar);
  end

endmodule
