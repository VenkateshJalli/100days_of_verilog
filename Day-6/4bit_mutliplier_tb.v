// Code your testbench here
// or browse Examples
module bit4_multiplier_tb(
  reg [3:0] a,
  reg [3:0] b,
  wire [7:0] p;
  
  bit4_mutliplier DUT(
    a,b,p);
  initial begin
    a =  4'b0011; //3
    b = 4'b0010; //2
    #100;
    $display(" 3 * 2 = %d, Product = %b", a * b, p);
    a =  4'b0101; //5
    b = 4'b0011; //3
    #100;
    $display(" 5 * 3 = %d, Product = %b", a * b, p);
    a =  4'b1111; //15
    b = 4'b0001; 1
    #100;
    $display(" 15 * 1 = %d, Product = %b", a * b, p);
    a =  4'b1001; //9
    b = 4'b1001; //9
    #100;
    $display(" 9 * 9 = %d, Product = %b", a * b, p);
  end
  endmodule
