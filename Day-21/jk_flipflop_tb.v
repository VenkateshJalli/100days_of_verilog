// Code your testbench here
// or browse Examples
module tb;
  reg j,k;
  wire q,qbar;
  jk_flipflop DUT(j,k,q,qbar);
  initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(1,tb);
    repeat(15)begin
      {j,k} = $random;
      #25 $display("Time = %0t Inputs j = %b, k = %b  Outputs q = %b, qbar = %b",$time,j,k,q,qbar);
    end
  end
endmodule
