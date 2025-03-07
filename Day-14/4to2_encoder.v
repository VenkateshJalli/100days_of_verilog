// Code your design here
module encoder_4to2(
  input [3:0]i,
  input en,//enable is like switch for decoder
  //active high decoder en = 1 (ON)
  //active low decoder en = 0 (ON)
  output [1:0]out
);
  assign out[0] = i[1] | i[3];
  assign out[1] = i[2] | i[3];
endmodule
