module tb;
  reg data_in;
  reg [2:0]select;
  wire out0,out1,out2,out3;
  wire out4,out5,out6,out7;
  demux_1to8  			DUT(data_in,select,out0,out1,out2,out3,out4,out5,out6,out7);
  initial begin
    $dumpfile("Demux.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {data_in,select} = $random;
      #25 $display("Inputs data_in = %b select = %b Outputs out0 = %b out1 = %b, out2 = %b, out3 = %b, out4 = %b, out5 =%b, out6= %b, out7 = %b",data_in,select,out0,out1,out2,out3
                   ,out4,out5,out6,out7);
    end
  end
endmodule
