module bcd_to_binary_tb;

  reg [7:0] bcd;
  wire [6:0] binary;

  bcd_to_binary dut (
    .bcd(bcd),
    .binary(binary)
  );

  initial begin
    $dumpfile("BCD_to_Bi.vcd");
    $dumpvars(1,bcd_to_binary_tb);
    repeat(15) begin
      bcd = $random;
      #25 $display("Time = %0t Inputs BCD = %b Output Binary = %b",$time,bcd,binary);
    end
    
  end

endmodule
