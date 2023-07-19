module tb;
  reg [99:0]a,b;
  reg s;
  wire [99:0]y;
 
  
  mux b1(a, b, s, y);
  
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("a = %0h, b = %0h,  s = %b, y=%0h", a, b, s, y);
    repeat(20) begin
    a = $random;
    b = $random;
    s= $random;
    #5;
      if(s == 1'b0 && y == a) 
         $display("correct");
      else if(s == 1'b1 && y == b)
          $display("correct");
      else
        $display("wrong");
    end
   
  end
endmodule
