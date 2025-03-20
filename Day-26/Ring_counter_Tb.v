// Code your testbench here
// or browse Examples
module tb;
  reg clk,reset,pr,clr;
  wire [3:0] q;
  ring_counter DUT(clk,reset,pr,clr,q);
  
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("ring_counter.vcd");
    $dumpvars(1,tb);
  end
  
  initial begin
    $monitor("clk=%b, pr=%b, q=%b", clk, pr, q);
    pr = 1'b1; clr = 1'b0; #10; // Preset
    pr = 1'b0; #10;

    #40; // Run for some clock cycles

    clr = 1'b1; #10; // Clear
    clr = 1'b0; #10;

    #40; // Run again

    pr = 1'b1; #10; // Preset again
    pr = 1'b0; #10;

    #40;

    $finish;  
  end
endmodule
