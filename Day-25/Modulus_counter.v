// Code your design here
module mod_n_counter #(
    parameter MODULO = 10,  // Set the modulus value
    parameter WIDTH = $clog2(MODULO) // Automatically determine the required bit-width
)(
    input clk,      // Clock signal
    input rst,      // Active-high synchronous reset
    output reg [WIDTH-1:0] count // Counter output
);

    always @(posedge clk) begin
        if (rst) 
            count <= 0;  // Reset counter
        else if (count == MODULO - 1) 
            count <= 0;  // Reset when reaching MODULO-1
        else 
            count <= count + 1; // Increment counter
    end

endmodule
