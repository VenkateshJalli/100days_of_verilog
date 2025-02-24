// Code your design here
module full_addr(Sum,C_out,A,B,C_in);
  input A,B,C_in;
  output reg Sum;
  output reg C_out;
  assign Sum = A^B^C_in;
  assign C_out = A&B | C_in*(A^B);
endmodule


module bit4_full_addr(sum,c_out,a,b,c_in);
  input [3:0]a;
  input [3:0]b;
  input c_in;
  output reg [3:0]sum;
  output reg c_out;
  wire c0,c1,c2;
  full_addr fa0(.Sum(sum[0]),.C_out(c0),.A(a[0]),.B(b[0]),.C_in(c_in));
  full_addr fa1(.Sum(sum[1]),.C_out(c1),.A(a[1]),.B(b[1]),.C_in(c0));
  full_addr fa2(.Sum(sum[2]),.C_out(c2),.A(a[2]),.B(b[2]),.C_in(c1));
  full_addr fa3(.Sum(sum[3]),.C_out(c_out),.A(a[3]),.B(b[3]),.C_in(c2));
  
endmodule
  
