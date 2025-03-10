// Code your design here
module tb;
  reg [3:0]bi;
  wire [3:0]gr;
  binary_to_gray DUT(bi,gr);
  initial begin
    $dumpfile("bi_to_gr.vcd");
    $dumpvars(1,tb);
    repeat(15) begin
      bi = $random;
      #25 $display("Time = %0t, Inputs Binary = %b, Outputs Gray = %b",$time,bi,gr);
    end
  end 
endmodule
