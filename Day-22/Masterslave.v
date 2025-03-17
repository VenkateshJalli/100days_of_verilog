// Master-Slave JK Flip-Flop Module
module jk_ff_ms (
  input j,
  input k,
  input clk,
  input reset,
  output reg q,
  output reg q_bar
);
-*+
  reg master_q, master_q_bar;
  reg slave_q, slave_q_bar;

  // Master Latch
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      master_q <= 1'b0;
      master_q_bar <= 1'b1;
    end else if (clk) begin //master latch updates on positive edge of clk
      case ({j, k})
        2'b00: begin master_q <= master_q; master_q_bar <= master_q_bar; end // No change
        2'b01: begin master_q <= 1'b0; master_q_bar <= 1'b1; end // Reset
        2'b10: begin master_q <= 1'b1; master_q_bar <= 1'b0; end // Set
        2'b11: begin master_q <= ~master_q; master_q_bar <= ~master_q_bar; end // Toggle
      endcase
    end
  end

  // Slave Latch
  always @(negedge clk or posedge reset) begin
    if (reset) begin
      slave_q <= 1'b0;
      slave_q_bar <= 1'b1;
    end else if (~clk) begin //slave latch updates on negative edge of clk
      slave_q <= master_q;
      slave_q_bar <= master_q_bar;
    end
  end

  assign q = slave_q;
  assign q_bar = slave_q_bar;

endmodule

