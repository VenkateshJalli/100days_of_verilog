// Code your testbench here
// or browse Examples
module tb;
  reg d,clk,reset;
  wire q;
  d_flipflop DUT(d,clk,reset,q);
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
  $dumpfile("d_flipflop.vcd");
  $dumpvars(1,tb);
  end
  initial begin
    repeat(5)begin
      reset = 1'b1;
      {d} = $random;
      #25 $display("Time = %0t Inputs d = %b Outputs q = %b",$time,d,q);
      reset = 1'b0;
      {d} = $random;
      #25 $display("Time = %0t Inputs d = %b Outputs q = %b",$time,d,q);
    end
  end
endmodule
