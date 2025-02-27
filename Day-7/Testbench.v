module bit1_comparator_tb;
  input aGTb;
  input aEQb;
  input aLTb;
  output reg a;
  output reg b;
	bit1_comparator DUT(a,b,aGTb,aEQb,aLTb);
initial begin
  $dumpfile("comp.vcd");
  $dumpvars(0,bit1_comparator_tb);
// Initialize Inputs 
	a = 1'b0; b = 1'b0;
	#25 $display("Inputs a = %b, b = %b Outputs aGTb =%b, aEQb = %b, aLTb = %b", a, b, aGTb, aEQb, aLTb);
  	a = 1'b0; b = 1'b1;
	#25 $display("Inputs a = %b, b = %b Outputs aGTb =%b, aEQb = %b, aLTb = %b", a, b, aGTb, aEQb, aLTb);
	a = 1'b1; b = 1'b0;
	#25 $display("Inputs a = %b, b = %b Outputs aGTb =%b, aEQb = %b, aLTb = %b", a, b, aGTb, aEQb, aLTb);
	a = 1'b1; b = 1'b1;
	#25 $display("Inputs a = %b, b = %b Outputs aGTb =%b, aEQb = %b, aLTb = %b", a, b, aGTb, aEQb, aLTb);
  #25 $finish;
end 
endmodule
