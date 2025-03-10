// Code your design here
module tb;
  reg [3:0]gr;
  wire [3:0]bi;
  gray_to_binary DUT(gr,bi);
  initial begin
    $dumpfile("gr_to_bi.vcd");
    $dumpvars(1,tb);
    repeat(15) begin
      gr = $random;
      #25 $display("Time = %0t, Inputs Gray = %b, Outputs Binary = %b",$time,gr,bi);
    end
  end 
endmodule
