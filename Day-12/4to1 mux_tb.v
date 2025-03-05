// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] a,b,c,d;
  reg sel0,sel1;
  wire [3:0]y;
  mux_4to1 DUT(a,b,c,d,sel0,sel1,y);
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1,tb);
    repeat(5)
      begin
        {a,b,c,d,sel1,sel0} = $random;
        #25 $display("Inputs a = %b, b = %b c = %b, d = %b, sel1 = %b, sel0 = %b Outputs y = %b", a, b, c, d, sel1, sel0, y);
      end
  end
endmodule
    
