// Code your design here
module d_flipflop(
  input d,clk,reset,
  output reg q
);
  always@(posedge clk or posedge reset) begin
    if(reset) begin
      q <= 1'b0;
    end else begin
      q <= d;
    end
  end 
endmodule
    
