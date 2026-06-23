module fftb();
  reg a;
  reg b;
  reg cin;
  wire carry;
  wire sum;
  ff dut(.a(a),
         .b(b),
         .cin(cin),
         .carry(carry),
         .sum(sum));
  initial begin
    #5
    a=1'b0;
    b=1'b1;
    cin = 0;
    #5
    a=1'b1;
    b=1'b0;
    cin= 0;
  end 
  initial begin 
    $monitor("time=%t,a=%b,b=%b,cint=%b,carry=%b,sum=%b",$time,a,b,cin,carry,sum);
  end 
endmodule