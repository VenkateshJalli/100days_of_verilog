// Code your testbench here
// or browse Examples
module async_3bit_up_down_counter_tb;

  reg clk, reset, up_down;
  wire [2:0] count;

  async_3bit_up_down_counter dut (
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("clk=%b, reset=%b, up_down=%b, count=%b", clk, reset, up_down, count);

    reset = 1'b1; up_down = 1'b1; #10; // Reset
    reset = 1'b0; #10;

    up_down = 1'b1; #40; // Up counting
    up_down = 1'b0; #40; // Down counting
    up_down = 1'b1; #40; // Up counting again

    reset = 1'b1; #10;
    reset = 1'b0; #10;
    $finish;
  end
  
  initial begin
    $dumpfile("up_Down_counter.vcd");
    $dumpvars(1,async_3bit_up_down_counter_tb);
  end


endmodule
