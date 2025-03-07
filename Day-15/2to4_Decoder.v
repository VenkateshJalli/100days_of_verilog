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
