module bit1_comparator(
    input a,
    input b,
    output aGTb,  //x>y
    output aEQb,  //x=y
    output aLTb   //x<y
    );
  wire an;
  wire bn;
assign an = ~ a;
assign bn = ~ b;
assign aGTb = a & bn;
assign aLTb = an & b;
    assign aEQb = ~ ( a | b );
endmodule
