// Code your testbench here
// or browse Examples
module tb;
  reg [3:0]bi;
  wire [6:0]LED;
  seven_segment_display DUT(bi, LED);
  initial begin 
    $dumpfile("seven_segment.vcd");
    $dumpvars(1,tb);
    repeat(15) begin
      bi = $random;
      #25 $display("Time = %0t Input Binary = %b Output LED = %b",$time,bi,LED);
    end
  end
endmodule
