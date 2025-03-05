// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] a,b,c,d,e,f,g,h;
  reg sel0,sel1,sel2;
  wire [3:0]y;
  mux_8to1 DUT(a,b,c,d,e,f,g,h,sel0,sel1,sel2,y);
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1,tb);
    repeat(5)
      begin
        {a,b,c,d,e,f,g,h,sel2,sel1,sel0} = $random;
        #25 $display("Inputs a = %b, b = %b c = %b, d = %b,e = %b,f = %b, g = %b, h =%b,sel2 =%b, sel1 = %b, sel0 = %b Outputs y = %b", a, b, c, d,e, f,g,h,sel2, sel1, sel0, y);
      end
  end
endmodule
    
