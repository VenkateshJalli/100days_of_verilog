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
