module carry_lookahead_adder(A,B,Cin,sum,carry);
  input [3:0]A;
  input [3:0]B;
  input Cin;
  output [3:0]sum;
  output carry;
  wire [3:0] G,P;
  wire [3:0] C;
  assign G=A&B;
  assign P=A^B;
  assign C[0]=Cin;
  assign C[1]=G[0]+C[0]*P[0];
  assign C[2]=G[1]+C[1]*P[1];
  assign C[3]=G[2]+C[2]*P[2];
  assign sum=P^C;
  assign carry=G[3]+C[3]*P[3];
endmodule
