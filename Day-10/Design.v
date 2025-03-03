// Code your design here
module parity_generator(
  input [7:0] data_in,
  output reg parity_out
);
  
  assign parity_out = ^data_in;//XOR reduction for parity
  
endmodule

module parity_checker(
  input [7:0] data_in,
  input parity_in,
  output reg parity_error
);
  
  wire calculated_parity;
  
  assign calculated_parity = ^data_in;
  assign parity_error = calculated_parity ^ parity_in; //XOR to check for error
  
endmodule
