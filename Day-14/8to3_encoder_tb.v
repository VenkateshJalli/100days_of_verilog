// Code your testbench here
// or browse Examples
module tb;
  reg [7:0]i;
  reg en;
  wire [2:0]out;
  encoder_8to3 DUT(i,en,out);
  initial begin
    $dumpfile("Encoder.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {i,en} = $random;
      #25 $display("Inputs i[7]= %b, i[6] = %b, i[5] = %b, i[4] = %b, i[3]= %b, i[2] = %b, i[1] = %b, i[0] = %b, en = %b Outputs out[2] = %b, out[1] = %b, out[0] = %b",i[7], i[6],i[5],i[4],i[3], i[2],i[1],i[0], en,out[2], out[1], out[0]);
    end
  end
endmodule
