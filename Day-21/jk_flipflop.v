// Code your design here
module jk_flipflop(
  input j,k,
  output reg q,qbar
);
  always@(j or k or q) begin
    if(j == 1'b0 && k == 1'b0) begin
      q <= q;
      qbar <= qbar;
    end else if(j == 1'b0 && k == 1'b1) begin
      q <= 1'b0;
      qbar <= 1'b1;
    end else if(j == 1'b1 && k == 1'b0) begin
      q <=1'b1;
      qbar <= 1'b0;
    end else begin
      q <= q;
      qbar <= ~q;
    end
  end 
endmodule
    
