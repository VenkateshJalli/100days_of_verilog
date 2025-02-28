module bit4_comparator_tb;
  reg [3:0]a;
  reg [3:0]b;
  wire GT;
  wire EQ;
  wire LT;
  bit4_comparator DUT(a, b, GT, EQ, LT);
  initial begin
    integer i;
    $dumpfile("Comparator.vcd");
    $dumpvars(0,bit4_comparator_tb);
    for(i=0;i<14;i++)
      begin
      #25 a = $random;  b = $random;
    $display("Time = %0t Inputs a = %b, b = %b Output: GT = %b, EQ = %b, LT = %b",$time, a, b, GT, EQ, LT);
      end
      #500 $finish;
  end
endmodule
