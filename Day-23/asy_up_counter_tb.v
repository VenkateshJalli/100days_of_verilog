// Code your testbench here
// or browse Examples
module tb;
  reg clk,reset;
  wire [2:0]count;
  asyn_counter_3bit DUT(clk,reset,count);
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin 
    $dumpfile("up_counter.vcd");
    $dumpvars(1,tb);
  end
  
  initial begin
    $monitor("clk=%b, reset=%b, count=%b", clk, reset, count);

    reset = 1'b1; #10; // Reset
    reset = 1'b0; #10;

    #80; // Run for some clock cycles

    reset = 1'b1; #10; // Reset again
    reset = 1'b0; #10;

    #40;

    $finish;
  end
endmodule
