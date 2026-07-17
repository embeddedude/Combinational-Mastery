
// Code your testbench here
// or browse Examples
module t32tb;
  reg [31:0] i;
  reg [4:0] sel;
  wire y;
  t32in1mux dut(.i(i),.sel(sel),.y(y));
  initial begin
    $monitor("time=%0t,i=%d,sel=%d,y=%d",$time,i,sel,y);
    i =32'b1111111011011011111111110101110;
    sel = 4'b0000;
    #10
    sel = 4'b0001;
    #10
    sel = 4'b0010;
    #10
    sel = 4'b0011;
    #10
    sel = 4'b0100;
    #10
    sel = 4'b0101;
    #10
    sel = 4'b0110;
    #10
    sel = 4'b0111;
    #10
    sel = 4'b1000;
    #10
    sel = 4'b1001;
    #10
    sel = 4'b1100;
    #10
    sel = 4'b1110;
    #10
    sel = 4'b1111;
    #10
    $finish;
  end
endmodule
