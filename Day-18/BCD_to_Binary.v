module bcd_to_binary (
  input [7:0] bcd, // BCD input (two digits, e.g., 0-99)
  output reg [6:0] binary // Binary output (0-99)
);

  reg [3:0] tens;
  reg [3:0] ones;

  always @(*) begin
    tens = bcd[7:4];
    ones = bcd[3:0];

    // Check if BCD input is valid (each digit 0-9)
    if (tens > 9 || ones > 9) begin
      binary = 7'hFF; // Indicate error (or some other error value)
    end else begin
      binary = tens * 10 + ones;
    end
  end

endmodule
