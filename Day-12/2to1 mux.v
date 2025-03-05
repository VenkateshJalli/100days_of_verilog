// Code your design here
module mux_2to1(
  input [3:0]a,
  input [3:0]b,
  input sel,
  output [3:0] y
);
  wire [3:0] s;
  assign s = {4{sel}};
  assign y = ((~s & a) | (s & b));
  endmodule
