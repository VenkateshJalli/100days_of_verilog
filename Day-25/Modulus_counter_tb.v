// Code your testbench here
// or browse Examples
module tb_mod_n_counter;
    parameter MODULO = 10;
    reg clk, rst;
    wire [$clog2(MODULO)-1:0] count;
    
    mod_n_counter #(MODULO) uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    always #5 clk = ~clk; // Generate clock with 10ns period
  
  initial begin
    $dumpfile("Modulus counter.vcd");
    $dumpvars(1,tb_mod_n_counter);
  end

    initial begin
      $monitor("Time: %0t | Clk = %b | Count: %0d", $time,clk, count);
        clk = 0; rst = 1;
        #10 rst = 0; // Release reset
        #100 $finish; // Stop simulation after some time
    end
endmodule
