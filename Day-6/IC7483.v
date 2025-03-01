module IC7483(
    input a0,
    input a1,
    input a2,
    input a3,
    input b0,
  	input b1,
    input b2,
    input b3,
    input cin,
    output s0,
    output s1,
    output s2,
    output s3,
    output cout);
    
    wire c1,c2,c3;
    
    full_adder fa0(a0,b0,cin,s0,c1);
    full_adder fa1(a1,b1,c1,s1,c2);
    full_adder fa2(a2,b2,c2,s2,c3);
    full_adder fa3(a3,b3,c3,s3,cout);
    
  endmodule
