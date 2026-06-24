module halfsubtb();
  reg a;
  reg b;
  wire diff;
  wire bin;
  initial begin
    #5
    a=1'b0;
    b=1'b1;
    #5
    a=1'b1;
    b=1'b1;
  end
  initial begin
    $monitor("time = %t,a = %b,b = %b,diff = %b,bin = %b",$time,a,b,diff,bin);
            $dumpfile("waveform.vcd"); // Specifies the output file name
    $dumpvars(0, halfsubtb); // Dumps ALL signals in the testbench and below

  end 
endmodule