// Code your design here
// Code your design here
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

module mux_4to1(
  input [3:0]a,
  input [3:0]b,
  input [3:0]c,
  input [3:0]d,
  input sel0,sel1,
  output [3:0] y
);
  wire [3:0] s0,s1,z0,z1;
  assign s0 = {4{sel0}};
  assign s1 = {4{sel1}};
  assign y = ((~s0 & ~s1 & a) | (~s0 & s1 & b) | (s0 & ~s1 & c) | (s0 & s1 & d));
  
  //using 2to1 mux
  mux_2to1 u0 (.a(a),.b(b),.sel(sel1),.y(z0));
  mux_2to1 u1 (.a(c),.b(d),.sel(sel1),.y(z1));
  mux_2to1 u2 (.a(z0),.b(z1),.sel(sel0),.y(y));
endmodule

module mux_8to1(
  input [3:0]a,b,c,d,
  input [3:0]e,f,g,h,
  input sel0,sel1,sel2,
  output [3:0] y
);
  wire [3:0] s0,s1,s2,z0,z1,z2,z3,z4,z5;
  assign s0 = {4{sel0}};
  assign s1 = {4{sel1}};
  assign s2 = {4{sel2}};
  
  //using 2to1 mux
  mux_2to1 u0 (.a(a),.b(b),.sel(sel2),.y(z0));
  mux_2to1 u1 (.a(c),.b(d),.sel(sel2),.y(z1));
  mux_2to1 u2 (.a(e),.b(f),.sel(sel2),.y(z2));
  mux_2to1 u3 (.a(g),.b(h),.sel(sel2),.y(z3));
  mux_2to1 u4 (.a(z0),.b(z1),.sel(sel1),.y(z4));
  mux_2to1 u5 (.a(z2),.b(z3),.sel(sel1),.y(z5));
  mux_2to1 u6 (.a(z4),.b(z5),.sel(sel0),.y(y));
endmodule
