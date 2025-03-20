// Code your design here
module ring_counter(
  input clk,
  input reset,
  input pr,
  input clr,
  output reg [3:0]q
);
  always@(posedge clk or posedge pr or posedge clr) begin
    if(pr)begin
      q <= 4'b0001;
    end else if(clr) begin
      q <= 4'b0000;
    end else begin
      q <= {q[0],q[3:1]};
    end
  end
endmodule
