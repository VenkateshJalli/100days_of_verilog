// Code your testbench here
// or browse Examples
module tb;
  reg [3:0]bi;
  wire [4:0]BCD;
  binary_to_BCD DUT(bi,BCD);
  initial begin
    $dumpfile("bi_to_BCD.vcd");
    $dumpvars(1,tb);
    repeat(15) begin
      bi = $random;
      #25 $display("Time = %0t Inputs Binary = %b Output BCD = %b",$time,bi,BCD);
    end
  end
endmodule
    
