// Code your design here
module demux_1to4 (
  input data_in,
  input [1:0]select,
  output out0,out1,
  output out2,out3
);

 //using 1to2 Demux
  wire n0,n1;
  demux_1to2 u0(.data_in(data_in),.select(select[0]),.out0(n0),.out1(n1));
  demux_1to2 u1(.data_in(n0),.select(select[1]),.out0(out0),.out1(out1));
  demux_1to2 u2(.data_in(n1),.select(select[1]),.out0(out2),.out1(out3));

  //dataflow modelling
  assign out0 = data_in & ~select[1] & ~select[0];
  assign out1 = data_in & ~select[1] & select[0];
  assign out2 = data_in & select[1] & ~select[0];
  assign out3 = data_in & select[1] & select[0];
  
endmodule
