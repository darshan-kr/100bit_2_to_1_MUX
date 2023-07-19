module mux(
  input [99:0]a,b,
  input s,
  output [99:0]y);
  assign y = s?b:a;
endmodule
