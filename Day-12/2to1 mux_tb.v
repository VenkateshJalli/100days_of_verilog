// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] a,b;
  reg sel;
  wire [3:0]y;
  mux_2to1 DUT(a,b,sel,y);
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1,tb);
    repeat(5)
      begin
        {a,b,sel} = $random;
        #25 $display("Inputs a = %b, b = %b, sel = %b Outputs y = %b", a, b, sel, y);
      end
  end
endmodule
    
