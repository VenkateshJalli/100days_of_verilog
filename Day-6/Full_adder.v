module full_adder(
    input a,
    input b,
    input cin,
    output reg sum,
    output reg cout);
    
    assign sum = a^b^cin;
    assign cout = a&b | cin*(a^b);
    
  endmodule
