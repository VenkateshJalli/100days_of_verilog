// Code your design here
module demux_1to4 (
  input data_in,
  input [1:0]select,
  output out0,out1,
  output out2,out3
);

  assign out0 = data_in & ~select[1] & ~select[0];
  assign out1 = data_in & ~select[1] & select[0];
  assign out2 = data_in & select[1] & ~select[0];
  assign out3 = data_in & select[1] & select[0];
  
endmodule
