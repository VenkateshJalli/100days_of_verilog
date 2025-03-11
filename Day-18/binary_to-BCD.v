// Code your design here
module binary_to_BCD(
  input [3:0]bi,
  output [4:0]BCD
);
  assign BCD[4] = bi[3]*bi[2] | bi[3]*bi[1];//W = AB + AC
  assign BCD[3] = bi[3]*~bi[2]*~bi[1];//X = A~B~C
  assign BCD[2] = ~bi[3]*bi[2] | bi[2]*bi[1];//Y = ~AB + BC
  assign BCD[1] = bi[3]*bi[2]*~bi[1] | ~bi[3]*bi[1];//Z = AB~c + ~AC
  assign BCD[0] = bi[0]; //E = D
             
endmodule
