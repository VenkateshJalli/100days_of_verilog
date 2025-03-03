module hamming_tb;

  reg [3:0] transmitted;
  wire [6:0] encoded;
  wire [3:0] decoded;
  wire error;
  wire [2:0] error_loc;
  reg [7:0] received;

  hamming_encoder enc (
    .data_in(transmitted),
    .hamming_out(encoded)
  );

  hamming_decoder dec (
    .hamming_in(received),
    .data_out(decoded),
    .error_flag(error),
    .error_location(error_loc)
  );

  initial begin
    $dumpfile("Hamming.vcd");
    $dumpvars(1,hamming_tb);
    repeat(3) begin
     #25 transmitted = $random;
      $display("Original Data: %b", transmitted);
    $display("Encoded Data: %b", encoded);
    $display("Received Data: %b", received);
    $display("Decoded Data: %b", decoded);
    $display("Error Flag: %b, Error Location: %b", error, error_loc);
    end

    /*received[5] = ~received[5]; // Introduce a single-bit error
    #10;
    $display("Received Data (with error): %b", received);
    $display("Decoded Data: %b", decoded);
    $display("Error Flag: %b, Error Location: %b", error, error_loc);

    $finish;*/
  end

endmodule
