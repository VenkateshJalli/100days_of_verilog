// Code your testbench here
// or browse Examples
module tb;
  reg i0,i1,i2,en;
  wire y0,y1,y2,y3,y4,y5,y6,y7;
  decoder_3to8 DUT(i0,i1,i2,en,y0,y1,y2,y3,y4,y5,y6,y7);
  initial begin
    $dumpfile("Decoder.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {i0,i1,i2,en} = $random;
      #25 $display("Inputs i0 = %b, i1 = %b, i2 = %b, en = %b Outputs y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",i0, i1,i2, en, y0, y1, y2, y3,y4,y5,y6,y7);
    end
  end
endmodule
