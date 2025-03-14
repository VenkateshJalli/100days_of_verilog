// Code your testbench here
// or browse Examples
module tb;
  reg s,r;
  wire q,qbar;
  sr_latch DUT(s,r,q,qbar);
  initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(1,tb);
    repeat(15)begin
      {s,r} = $random;
      #25 $display("Time = %0t Inputs S = %b, R = %b  Outputs q = %b, qbar = %b",$time,s,r,q,qbar);
    end
  end
endmodule
