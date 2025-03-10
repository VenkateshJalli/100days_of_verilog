// Code your design here
module gray_to_binary(
  input [3:0]gr,
  output [3:0]bi
);
  assign bi[3] = gr[3];
  assign bi[2] = gr[3] ^ gr[2];
  assign bi[1] = gr[3] ^ gr[2] ^ gr[1];
  assign bi[0] = gr[3] ^ gr[2] ^ gr[1] ^ gr[0];
endmodule
