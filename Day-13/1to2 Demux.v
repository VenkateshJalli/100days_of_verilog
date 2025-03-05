// Code your design here
module demux_1to2 (
  input data_in,
  input select,
  output out0,
  output out1
);

  assign out0 = data_in & ~select;
  assign out1 = data_in & select;

endmodule
