// Code your testbench here
// or browse Examples
module bit8_BCD_adder_tb;
  reg [7:0]a;
  reg [7:0]b;
  wire [11:0]sum;
  bit8_BCD_adder DUT(a,b,sum);
  initial begin
    $dumpfile("BCD_adder,vcd");
    $dumpvars(1,bit8_BCD_adder_tb);
    repeat(10)begin
      {a,b} = $random;
      #25 $display("Time = %0t Inputs a = %b, b = %b Output sum = %b",$time,a,b,sum);
    end
  end
endmodule
    
