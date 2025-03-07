// Code your design here
// Code your design here
module encoder_4to2(
  input [3:0]i,
  input en,//enable is like switch for decoder
  //active high decoder en = 1 (ON)
  //active low decoder en = 0 (ON)
  output [1:0]out
);
  assign out[0] = i[1] | i[3];
  assign out[1] = i[2] | i[3];
endmodule

module encoder_8to3(
  input [7:0]i,
  input en,
  output reg [2:0]out
);
  reg [1:0] out_low;
  reg [1:0] out_high;
  reg high_active;
  
  encoder_4to2 u0(i[3:0],en,out_low[1:0]);
  encoder_4to2 u1(i[7:4],en,out_high[1:0]);
  assign high_active = |i[7:4];
  always@(*) begin
    if(high_active)begin
      out[1:0] = out_high;
      out[2] = 1'b1;
      end else begin
        out[1:0] = out_low;
    out[2] = 1'b0;
  end
  end
endmodule
