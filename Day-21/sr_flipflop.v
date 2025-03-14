// Code your design here
module sr_flipflop(
  input s,r,
  output reg q,qbar
);
  always@(s or r or q) begin
    if(s == 1'b0 && r == 1'b0) begin
      q <= q;
      qbar <= qbar;
    end else if(s == 1'b0 && r == 1'b1) begin
      q <= 1'b0;
      qbar <= 1'b1;
    end else if(s == 1'b1 && r == 1'b0) begin
      q = <1'b1;
      qbar <= 1'b0;
    end else begin
      q <= 1'bx;
      qbar <= 1'bx;
    end
  end 
endmodule
    
