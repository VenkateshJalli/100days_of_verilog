// Code your design here
module async_3bit_up_down_counter (
  input clk,
  input reset,
  input up_down, // 1 for up, 0 for down
  output reg [2:0] count
);

  reg q0, q1, q2;

  // LSB (q0) - toggles on every clock edge
  always @(posedge clk or posedge reset) begin
    if (reset)
      q0 <= 1'b0;
    else
      q0 <= ~q0;
  end

  // Middle bit (q1) - toggles on q0's edge (up/down dependent)
  always @(posedge q0 or negedge q0 or posedge reset) begin
    if (reset)
      q1 <= 1'b0;
    else if (up_down)
      q1 <= (q0 == 1'b0) ? ~q1 : q1; // Up: toggle on q0's rising edge
    else
      q1 <= (q0 == 1'b1) ? ~q1 : q1; // Down: toggle on q0's falling edge
  end

  // MSB (q2) - toggles on q1's edge (up/down dependent)
  always @(posedge q1 or negedge q1 or posedge reset) begin
    if (reset)
      q2 <= 1'b0;
    else if (up_down)
      q2 <= (q1 == 1'b0) ? ~q2 : q2; // Up: toggle on q1's rising edge
    else
      q2 <= (q1 == 1'b1) ? ~q2 : q2; // Down: toggle on q1's falling edge
  end

  // Assign output
  assign count = {q2, q1, q0};

endmodule

 
