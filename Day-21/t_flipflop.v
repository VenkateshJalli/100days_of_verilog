module t_ff (
  input clk,
  input t,
  input reset,
  output reg q
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      q <= 1'b0; // Reset to 0
    end else begin
      if (t) begin
        q <= ~q; // Toggle if t is high
      end
    end
  end

endmodule
