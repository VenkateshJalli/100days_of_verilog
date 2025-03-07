// Code your testbench here
// or browse Examples
module tb;
  reg [3:0]i;
  reg en;
  wire [15:0]out;
  decoder_4to16 DUT(i,en,out);
  initial begin
    $dumpfile("Decoder.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {i,en} = $random;
      #25 $display("Inputs i[0]= %b, i[1] = %b, i[2] = %b, i[3] = %b, en = %b Outputs y[0] = %b, y[1] = %b, y[2] = %b, y[3]= %b, y[4] = %b, y[5] = %b, y[6] = %b, y[7] = %b,y[8] = %b, y[9] = %b, y[10] = %b, y[11]= %b, y[12] = %b, y[13] = %b, y[14] = %b, y[15] = %b",i[0], i[1],i[2],i[3], en, out[0], out[1], out[2], out[3],out[4],out[5],out[6],out[7],out[8], out[9], out[10], out[11],out[12],out[13],out[14],out[15]);
    end
  end
endmodule
