// Code your design here
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

module demux_1to4 (
  input data_in,
  input [1:0]select,
  output out0,out1,
  output out2,out3
);
  
  //using 1to2 Demux
  wire n0,n1;
  demux_1to2 u0(.data_in(data_in),.select(select[1]),.out0(n0),.out1(n1));
  demux_1to2 u1(.data_in(n0),.select(select[0]),.out0(out0),.out1(out1));
  demux_1to2 u2(.data_in(n1),.select(select[0]),.out0(out2),.out1(out3));

 
endmodule

module demux_1to8 (
  input data_in,
  input [2:0]select,
  output out0,out1,out2,out3,out4,out5,out6,out7
);
  
  //using 1to2  and 1to4Demux
  wire n0,n1;
  demux_1to2 u0(.data_in(data_in),.select(select[2]),.out0(n0),.out1(n1));
  demux_1to4 u1(.data_in(n0),.select(select[1:0]),.out0(out0),.out1(out1),.out2(out2),.out3(out3));
  demux_1to4 u2(.data_in(n1),.select(select[1:0]),.out0(out4),.out1(out5),.out2(out6),.out3(out7));
  
endmodule
