// Code your testbench here
// or browse Examples
module bit4_full_addr_tb;
  //outputs
  reg [3:0]a;
  reg [3:0]b;
  reg c_in;
  //Inuputs
  wire [3:0]sum;
  wire c_out;
  bit4_full_addr DUT(sum,c_out,a,b,c_in);
  //full_addr SUT(Sum,C_out,A,B,C_in);
  initial begin
    $dumpfile("parallel_addr.vcd");
    $dumpvars(0,bit4_full_addr_tb);
    $monitor("Time = %ot Inputs a = %b, b = %b, c_in = %b Outputs sum = %b, c_out = %b", $time , a, b, c_in, sum, c_out);
    #25 a = 4'b0001; b = 4'b0010; c_in = 1'b0;
    #25 a = 4'b0011; b = 4'b1010; c_in = 1'b1;
    #25 a = 4'b0101; b = 4'b1110; c_in = 1'b0;
    #25 a = 4'b1001; b = 4'b1010; c_in = 1'b1;
    #25 a = 4'b0101; b = 4'b0011; c_in = 1'b0;
    #25 a = 4'b0001; b = 4'b0010; c_in = 1'b1;
    #25 a = 4'b1011; b = 4'b0110; c_in = 1'b0;
    #25 a = 4'b1001; b = 4'b1110; c_in = 1'b1;
    #25 $finish;
  end
endmodule
