module xor_gate_tb (a, b, c, z); 
input z; 
output reg a, b, c; 
xor_gate dut (a,b,c,z); 
initial begin 
$dumpfile("xor.vcd"); 
$dumpvars; 
$display("-------Truth Table-----"); 
a = 1'b0; b = 1'b0; c = 1'b0; 
#25 $display("Input a = %b, b = %b, c = %b Output z = %b", a, b, c, z); 
a = 1'b0; b = 1'b0; c = 1'b1; 
#25 $display("Input a = %b, b = %b, c = %b Output z = %b", a, b, c, z); 
a = 1'b0; b = 1'b1; c = 1'b0; 
#25 $display("Input a = %b, b = %b, c = %b Output z = %b", a, b, c, z); 
a = 1'b0; b = 1'b1; c = 1'b1; 
#25 $display("Input a = %b, b = %b, c = %b Output z = %b", a, b, c, z); 
a = 1'b1; b = 1'b0; c = 1'b0; 
#25 $display("Input a = %b, b = %b, c = %b Output z = %b", a, b, c, z); 
a = 1'b1; b = 1'b0; c = 1'b1; 
#25 $display("Input a = %b, b = %b, c = %b Output z = %b", a, b, c, z); 
a = 1'b1; b = 1'b1; c = 1'b0; 
#25 $display("Input a = %b, b = %b, c = %b Output z = %b", a, b, c, z); 
a = 1'b1; b = 1'b1; c = 1'b1; 
#25 $display("Input a = %b, b = %b, c = %b Output z = %b", a, b, c, z); 
#200 $finish; 
end 
endmodule
