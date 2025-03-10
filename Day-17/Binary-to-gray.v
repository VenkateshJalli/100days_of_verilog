// Code your design here
module binary_to_gray(
  input [3:0]bi,
  output [3:0]gr
);
  assign gr[3] = bi[3];
  assign gr[2] = bi[3] ^ bi[2];
  assign gr[1] = bi[2] ^ bi[1];
  assign gr[0] = bi[1] ^ bi[0];
endmodule
