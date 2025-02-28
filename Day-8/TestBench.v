module bit4_comparator_tb;
  reg [3:0]a;
  reg [3:0]b;
  wire GT;
  wire EQ;
  wire LT;
  bit4_comparator DUT(a, b, GT, EQ, LT);
  initial begin
    $dumpfile("Comparator.vcd");
    $dumpvars(0,bit4_comparator_tb);
    #25 a = 4'b0011; b = 4'b1001;
    $display("Time = %0t Inputs a = %b, b = %b Output: GT = %b, EQ = %b, LT = %b",$time, a, b, GT, EQ, LT);
    #25 a = 4'b1011; b = 4'b1111;
    $display("Time = %0t Inputs a = %b, b = %b Output: GT = %b, EQ = %b, LT = %b",$time, a, b, GT, EQ, LT);
    #25 a = 4'b0011; b = 4'b0011;
    $display("Time = %0t Inputs a = %b, b = %b Output: GT = %b, EQ = %b, LT = %b",$time, a, b, GT, EQ, LT);
    #25 a = 4'b0011; b = 4'b0001;
    $display("Time = %0t Inputs a = %b, b = %b Output: GT = %b, EQ = %b, LT = %b",$time, a, b, GT, EQ, LT);
    #25 a = 4'b1011; b = 4'b1001;
    $display("Time = %0t Inputs a = %b, b = %b Output: GT = %b, EQ = %b, LT = %b",$time, a, b, GT, EQ, LT);
    #100 $finish;
  end
endmodule
