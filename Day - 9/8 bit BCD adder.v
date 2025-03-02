
module bit8_BCD_adder(
  input [7:0] a,
  input [7:0] b,
  output [11:0] sum
);
  wire z0,z1,d0,d1,f0,f1,f2,c;
  wire [8:0] s;
  
  IC7843 ic0(.a0(a[0]),.a1(a[1]),.a2(a[2]),.a3(a[3]),.a4(1'b0),.b0(b[0]),.b1(b[1]),.b2(b[2]),.b3(b[3]),.b4(1'b0),.c_in(1'b0),.s0(s[0]),.s1(s[1]),.s2(s[2]),.s3(s[3]),.s4(d0),.c_out(f0));
  
  assign z0 = (s[3] & s[2]) | d0 | (s[3] & s[1]);
  
  IC7843 ic1(.a0(s[0]),.a1(s[1]),.a2(s[2]),.a3(s[3]),.a4(d0),.b0(1'b0),.b1(z0),.b2(z0),.b3(1'b0),.b4(1'b0),.c_in(1'b0),.s0(sum[0]),.s1(sum[1]),.s2(sum[2]),.s3(sum[3]),.s4(c),.c_out(f1));
  
  IC7843 ic2(.a0(a[4]),.a1(a[5]),.a2(a[6]),.a3(a[7]),.a4(1'b0),.b0(b[4]),.b1(b[5]),.b2(b[6]),.b3(b[7]),.b4(1'b0),.c_in(c),.s0(s[4]),.s1(s[5]),.s2(s[6]),.s3(s[7]),.s4(d1),.c_out(f2));
  
  assign z1 = (s[7] & s[6]) | d1 | (s[7] & s[5]);
  
  IC7843 ic3(.a0(a[4]),.a1(a[5]),.a2(a[6]),.a3(a[7]),.a4(d1),.b0(1'b0),.b1(z1),.b2(z1),.b3(1'b0),.b4(1'b0),.c_in(1'b0),.s0(sum[4]),.s1(sum[5]),.s2(sum[6]),.s3(sum[7]),.s4(sum[8]),.c_out(sum[9]));
  
  assign sum[10] = 1'b0;
  assign sum[11] = 1'b0;
endmodule
