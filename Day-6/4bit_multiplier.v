module bit4_multiplier(
  input [3:0]a,
  input [3:0]b,
  output [7:0]p
);
  wire [3:0] c,d;
  wire [3:0] p_add0, p_add1,p_add2, p_add3;
  
  assign p_add0 = ({4{b[0]}}&a);
  assign p_add1 = ({4{b[1]}}&a);
  assign p_add2 = ({4{b[2]}}&a);
  assign p_add3 = ({4{b[3]}}&a);
  
  assign p[0] = p_add0[0];
  
  
  IC7483 ic1(.a0(p_add0[1]),.a1(p_add0[2],.a2(p_add0[3],a3(0),.b0(p_add1[0]),.b1(p_add1[1],.b2(p_add1[2]),.b3(p_add1[3],.cin(0),.s0(p[1]),.s1([c0]),.s2(c[1]),.s3(c[2]),.cout(c[3]));
                                    
  IC7483 ic2(.a0(c[0]),.a1(c[1],.a2(c[2],a3(c[3]),.b0(p_add2[0]),.b1(p_add2[1],.b2(p_add2[2]),.b3(p_add2[3],.cin(0),.s0(p[2]),.s1([d[0]),.s2(d[1]),.s3(d[2]),.cout(d[3]));
                                                                                                   ]));
 IC7483 ic3(.a0(d[0]),.a1(d[1],.a2(d[2],a3(d[3]),.b0(p_add3[0]),.b1(p_add3[1],.b2(p_add3[2]),.b3(p_add3[3],.cin(0),.s0(p[3]),.s1([p[4]]),.s2(p[5]),.s3(p[6]) ,.cout(p[7]));
                                                                                                            
endmodule
