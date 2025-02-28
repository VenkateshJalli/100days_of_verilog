module bit4_comparator(
  input [3:0]a,
  input [3:0]b,
  output reg GT,
  output reg EQ,
  output reg LT
);
  always@(*) begin
     GT = (a > b);
     EQ = (a == b);
     LT = (a < b);
  end
endmodule

