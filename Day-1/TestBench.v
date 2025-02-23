module basic_gates_tb(a,b,z);
  input z;
  output reg a,b;
  and_gate dut(a,b,z);
  initial begin
    $dumpfile("and.vcd");
    $dumpvars;
    $display("-------- Truth Table------");
    a = 1'b0;	b = 1'b0;	
    #100 $display("Input : a = %b, b = %b, Output : z = %b", a, b,z);
    a = 1'b0;	b = 1'b1;	
    #100 $display("Input : a = %b, b = %b, Output : z = %b", a, b, z);
    a = 1'b1;	b = 1'b0;	
    #100 $display("Input : a = %b, b = %b, Output : z = %b", a, b, z);
    a = 1'b1;	b = 1'b1;	
    #100 $display("Input : a = %b, b = %b, Output : z = %b", a, b, z);
                  
#100 $finish;
  end 
endmodule
