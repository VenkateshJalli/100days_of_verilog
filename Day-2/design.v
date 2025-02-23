module xor_gate(a, b, c, z); 
input a,b,c; 
output reg z; 
assign z = a^b^c; 
endmodule 
