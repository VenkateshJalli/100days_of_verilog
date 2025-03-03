module hamming_encoder (
  input [3:0] data_in,
  output [7:1] hamming_out
);

  assign hamming_out[7] = data_in[3]; // Data bit
  assign hamming_out[6] = data_in[2]; // Data bit
  assign hamming_out[5] = data_in[1]; // Data bit
  assign hamming_out[3] = data_in[0]; // Data bit

  assign hamming_out[4] = hamming_out[5] ^ hamming_out[6] ^ hamming_out[7]; // Parity bit P1
  assign hamming_out[2] = hamming_out[3] ^ hamming_out[6] ^ hamming_out[7]; // Parity bit P2
  assign hamming_out[1] = hamming_out[3] ^ hamming_out[5] ^ hamming_out[7]; // Parity bit P4

endmodule

module hamming_decoder (
  input [7:0] hamming_in,
  output [3:0] data_out,
  output error_flag,
  output [2:0] error_location
);

  wire p1, p2, p4;
  wire s1, s2, s4;

  assign p1 = hamming_in[1];
  assign p2 = hamming_in[2];
  assign p4 = hamming_in[4];

  assign s1 = hamming_in[1] ^ hamming_in[3] ^ hamming_in[5] ^ hamming_in[7];
  assign s2 = hamming_in[2] ^ hamming_in[3] ^ hamming_in[6] ^ hamming_in[7];
  assign s4 = hamming_in[4] ^ hamming_in[5] ^ hamming_in[6] ^ hamming_in[7];

  assign error_location = {s4, s2, s1};
  assign error_flag = s1 | s2 | s4;

  assign data_out[3] = hamming_in[7];
  assign data_out[2] = hamming_in[6];
  assign data_out[1] = hamming_in[5];
  assign data_out[0] = hamming_in[3] ^ (error_flag & error_location[0]);

  /*always @(*) begin
    if(error_flag) begin
      case(error_location)
        3'b001: hamming_in[0] = ~hamming_in[0];
        3'b010: hamming_in[1] = ~hamming_in[1];
        3'b011: hamming_in[2] = ~hamming_in[2];
        3'b100: hamming_in[3] = ~hamming_in[3];
        3'b101: hamming_in[4] = ~hamming_in[4];
        3'b110: hamming_in[5] = ~hamming_in[5];
        3'b111: hamming_in[6] = ~hamming_in[6];
        default: ;
      endcase
    end
  end*/

endmodule
