// Code your design here
module priority_encoder_8to3 (
  input [7:0] in,
  output reg [2:0] out,
  output reg valid
);

  always @(*) begin
    valid = 1'b0; // Default: no valid input

    if (in[7]) begin
      out = 3'b111;
      valid = 1'b1;
    end else if (in[6]) begin
      out = 3'b110;
      valid = 1'b1;
    end else if (in[5]) begin
      out = 3'b101;
      valid = 1'b1;
    end else if (in[4]) begin
      out = 3'b100;
      valid = 1'b1;
    end else if (in[3]) begin
      out = 3'b011;
      valid = 1'b1;
    end else if (in[2]) begin
      out = 3'b010;
      valid = 1'b1;
    end else if (in[1]) begin
      out = 3'b001;
      valid = 1'b1;
    end else if (in[0]) begin
      out = 3'b000;
      valid = 1'b1;
    end else begin
      out = 3'b000; // Default output when no input is high.
    end
  end

endmodule
