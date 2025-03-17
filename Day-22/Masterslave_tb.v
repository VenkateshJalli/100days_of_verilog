// Code your testbench here
// or browse Examples
module tb;
  reg j,k,clk;
  wire q_s,q_sbar,q_m,q_mbar;
  masterslave_jk(j,k,clk,q_s,q_sbar);
  initial begin
    clk = 0;
  	always #5 clk = ~clk;
  end
  initial begin
    $dumpfile("masterslave.vcd");
    $dumpvars(1,tb);
    repeat(15) begin
      {j,k} = $random;
      #25 $display("Time = %b, Inputs j = %b, k = %b, clk = %b Outputs q_s = %b, q_sbar = %b",$time,j,k,clk,q_s,q_sbar);
    end
    endmodule
