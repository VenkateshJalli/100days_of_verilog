// Code your testbench here
// or browse Examples
module tb;
  reg i0,i1,en;
  wire y0,y1,y2,y3;
  decoder_2to4 DUT(i0,i1,en,y0,y1,y2,y3);
  initial begin
    $dumpfile("Decoder.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {i0,i1,en} = $random;
      #25 $display("Inputs i0 = %b, i1 = %b, en = %b Outputs y0 = %b, y1 = %b, y2 = %b, y3 = %b",i0, i1, en, y0, y1, y2, y3);
    end
  end
endmodule
