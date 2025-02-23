module and_gate (a,b,z);
  input a, b;
  output reg z;
  assign  z = ~(a ^ b);
endmodule
