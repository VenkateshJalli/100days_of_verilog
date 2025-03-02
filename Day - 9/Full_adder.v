module full_adder(A,B,Cin,Sum,Cout);
  input A,B,Cin;
  output reg Sum,Cout;
  always@(*) begin
    Sum = A ^ B ^ Cin;
    Cout =  A & B | Cin*(A^B);
  end
endmodule
