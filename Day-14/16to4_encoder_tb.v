// Code your testbench here
// or browse Examples
module tb;
  reg [15:0]i;
  reg en;
  wire [3:0]out;
  encoder_16to4 DUT(i,en,out);
  initial begin
    $dumpfile("Encoder.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {i,en} = $random;
      #25 $display("Inputs i[15]= %b, i[14] = %b, i[13] = %b, i[12] = %b, i[11]= %b, i[10] = %b, i[9] = %b, i[8] = %b,i[7]= %b, i[6] = %b, i[5] = %b, i[4] = %b, i[3]= %b, i[2] = %b, i[1] = %b, i[0] = %b en = %b Outputs out[3] = %b, out[2] = %b, out[1] = %b, out[0] = %b",i[15], i[14],i[13],i[12],i[11], i[10],i[9],i[8],i[7], i[6],i[5],i[4],i[3], i[2],i[1],i[0], en,out[3],out[2], out[1], out[0]);
    end
  end
endmodule
