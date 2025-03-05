module tb;
  reg data_in;
  reg [1:0]select;
  wire out0,out1;
  wire out2,out3;
  demux_1to4 DUT(data_in,select,out0,out1,out2,out3);
  initial begin
    $dumpfile("Demux.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {data_in,select} = $random;
      #25 $display("Inputs data_in = %b select = %b Outputs out0 = %b out1 = %b, out2 = %b, out3 = %b",data_in,select,out0,out1,out2,out3);
    end
  end
endmodule
