// Code your testbench here
// or browse Examples
module priority_encoder_8to3_tb;

  reg [7:0] in;
  wire [2:0] out;
  wire valid;

  priority_encoder_8to3 DUT (
    .in(in),
    .out(out),
    .valid(valid)
  );
  
  initial begin
    $dumpfile("Priority_Encoder.vcd");
    $dumpvars(1,priority_encoder_8to3_tb);
    // Test cases
    in = 8'b01000001; #10;
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b11001010; #10;
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b00000101; #10;
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b00111000; #10;
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b10010000; #10;
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b00100111; #10;
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b01001010; #10;
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b10011000; #10;
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b01010100; #10; // Test with multiple high inputs
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    in = 8'b00000000; #10; //test no input
    $display("In: %b, Out: %b, Valid: %b", in, out, valid);

    $finish;
  end
endmodule
