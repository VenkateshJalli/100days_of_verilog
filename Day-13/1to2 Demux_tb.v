module tb;
  reg data_in;
  reg select;
  wire out0;
  wire out1;
  demux_1to2 DUT(data_in,select,out0,out1);
  initial begin
    $dumpfile("Demux.vcd");
    $dumpvars(1,tb);
    repeat(5) begin
      {data_in,select} = $random;
      #25 $display("Inputs data_in = %b select = %b Outputs out0 = %b out1 = %b",data_in,select,out0,out1);
    end
  end
endmodule
