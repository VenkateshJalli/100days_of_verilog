module comparator_1_bit_tb;
  input a;
  input b;
  input c;
  output reg x;
  output reg y;
  comparator_1_bit DUT(x,y,a,b,c);
initial begin
  $dumpfile("comp.vcd");
  $dumpvars(0,comparator_1_bit_tb);
// Initialize Inputs 
	x = 1'b0; y = 1'b0;
  #25 $display("Inputs x = %b, y = %b Outputs a =%b, b = %b, c = %b", x, y, a, b, c);
  x = 1'b0; y = 1'b1;
  #25 $display("Inputs x = %b, y = %b Outputs a =%b, b = %b, c = %b", x, y, a, b, c);
  x = 1'b1; y = 1'b0;
  #25 $display("Inputs x = %b, y = %b Outputs a =%b, b = %b, c = %b", x, y, a, b, c);
  x = 1'b1; y = 1'b1;
  #25 $display("Inputs x = %b, y = %b Outputs a =%b, b = %b, c = %b", x, y, a, b, c);
  #25 $finish;
end 
endmodule
