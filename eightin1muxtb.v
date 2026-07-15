// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module mux8in1tb;
  reg  s1,s2,s3;
  reg a1,a2,a3,a4,a5,a6,a7,a8;
  wire y;
  mux8in1 dut(.s1(s1),.s2(s2),.s3(s3),.a1(a1),.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),
              .a8(a8),.y(y));
  
  initial begin
    a1 = 0;
    a2 = 1;
    a3 = 1;
    a4 = 0;
    a5 = 0;
    a6 = 1;
    a7 = 0;
    a8 = 1;
    $monitor("the value of s1=%d and s2=%d and s3=%d and output y=%d",s1,s2,s3,y);
    s1 = 0;
    s2 = 1;
    s3 = 0;
    #10
    s1 = 0;
    s2 = 1;
    s3 = 1;
    #10
    s1 = 0;
    s2 = 1;
    s3 = 1;
    #10
    s1 = 1;
    s2 = 1;
    s3 = 0;
    #10
   $finish;
  end
endmodule 
