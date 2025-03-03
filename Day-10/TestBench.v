// Code your testbench here
// or browse Examples
module parity_tb;

  reg [7:0] data_in;
  reg parity_in;
  wire parity_out;
  wire parity_error;

  parity_generator gen (
    .data_in(data_in),
    .parity_out(parity_out)
  );

  parity_checker check (
    .data_in(data_in),
    .parity_in(parity_in),
    .parity_error(parity_error)
  );

  initial begin
    $dumpfile("parity.vcd");
    $dumpvars(1,parity_tb);
    // Test cases
    repeat(10)begin
      {data_in,parity_in} = $random;
      #10 $display("Inputs: data_in = %b  parity_in = %b   Outputs : parity_out = %b       parity_error = %b",data_in,parity_in,parity_out,parity_error);
    end
  end

endmodule
