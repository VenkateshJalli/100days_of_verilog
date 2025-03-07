// Code your design here
module decoder_2to4(
  input i0,i1,
  input en,//enable is like switch for decoder
  //active high decoder en = 1 (ON)
  //active low decoder en = 0 (ON)
  output y0,y1,y2,y3
);
  assign y0 = ~i0 & ~i1 & en;
  assign y1 = ~i0 & i1 & en;
  assign y2 = i0 & ~i1 & en;
  assign y3 = ~i0 & i1 & en;
endmodule

module decoder_3to8(
  input i0,i1,i2,
  input en,
  output y0,y1,y2,y3,y4,y5,y6,y7
);
  decoder_2to4 u0(i1,i2,~i0,y0,y1,y2,y3);
  decoder_2to4 u1(i1,i2,i0,y4,y5,y6,y7);
                  endmodule

module decoder_4to16(
  input [3:0]i,
  input en,
  output [15:0] out
);
  decoder_3to8 u0(.i0(i[3]),.i1(i[2]),.i2(i[1]),.en(~i[0]),.y0(out[0]),.y1(out[1]),.y2(out[2]),.y3(out[3]),.y4(out[4]),.y5(out[5]),.y6(out[6]),.y7(out[7]));
  decoder_3to8 u1(.i0(i[3]),.i1(i[2]),.i2(i[1]),.en(i[0]),.y0(out[8]),.y1(out[9]),.y2(out[10]),.y3(out[11]),.y4(out[12]),.y5(out[13]),.y6(out[14]),.y7(out[15]));
                                  endmodule
