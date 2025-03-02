module IC7843(
  input a0,
  input a1,
  input a2,
  input a3,
  input a4,
  input b0,
  input b1,
  input b2,
  input b3,
  input b4,
  input b5,
  input c_in,
  output s0,
  output s1,
  output s2,
  output s3,
  output s4,
  output reg c_out);
  
  wire c0,c1,c2,c3;
  
  full_adder fa0(a0,b0,c_in,s0,c0);
  full_adder fa1(a1,b1,c0,s1,c1);
  full_adder fa2(a2,b2,c1,s2,c2);
  full_adder fa3(a3,b3,c2,s3,c3);
  full_adder fa4(a4,b4,c3,s4,c_out);
  
endmodule
