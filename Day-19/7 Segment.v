// Code your design here
module seven_segment_display(
  input [3:0]bi,
  output reg [6:0]LED
);
  always@(*) begin
    case(bi)
      4'b0000 : LED = 7'b1111110;
      4'b0001 : LED = 7'b0110000;
      4'b0010 : LED = 7'b1101101;
      4'b0011 : LED = 7'b1111001;
      4'b0100 : LED = 7'b0110011;
      4'b0101 : LED = 7'b1011011;
      4'b0110 : LED = 7'b1011111;
      4'b0111 : LED = 7'b1111000;
      4'b0111 : LED = 7'b1111111;
      4'b0111 : LED = 7'b1110011;
      default : LED = 7'b0000000;
    endcase
  end
endmodule
