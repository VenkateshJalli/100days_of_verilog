// Code your testbench here
// or browse Examples
module tb;
  reg [3:0]i;
  reg en;
  wire [1:0]out;
  encoder_4to2 DUT(i,en,out);
  initial begin
    $dumpfile("Decoder.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {i,en} = $random;
      #25 $display("Inputs i[3]= %b, i[2] = %b, i[1] = %b, i[0] = %b, en = %b Outputs y[1] = %b, y[0] = %b",i[3], i[2],i[1],i[0], en, out[1], out[0]);
    end
  end
endmodule
