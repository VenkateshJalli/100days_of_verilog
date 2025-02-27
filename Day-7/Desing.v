module comparator_1_bit(
    input x,
    input y,
    output a,  //x>y
    output b,  //x=y
    output c   //x<y
    );
  wire xn;
  wire yn;
assign xn = ~ x;
assign yn = ~ y;
assign a = x & yn;
assign c = xn & y;
    assign b = ~ ( x | y );
endmodule
