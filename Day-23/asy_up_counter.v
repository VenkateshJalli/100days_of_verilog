// Code your design here
module asyn_counter_3bit(
  input clk,
  input reset,
  output reg[2:0]count
);
  always@(posedge clk or posedge reset) begin
    if(reset)begin
      count <= 3'b000;
    end else begin
      count <= count + 3'b001;
    end
  end
endmodule
