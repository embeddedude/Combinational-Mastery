// Code your design here
module fa(input a,
                 input b,
                 input c,
                 output  sum,
                 output  carry);
  
  assign  sum = a^b^c;
  assign  carry =(b&c)|(a&b)|(a&c);
 
endmodule
module thirty2bit(input [31:0] a,
                  input [31:0] b,
                  input cin,
                  output [31:0] sum,
                  output carry);
 
  wire [31:0] ca;
    fa f1(.a(a[0]),
          .b(b[0]),
          .c(cin),
          .sum(sum[0]),
          .carry(ca[0])
         );
             
    genvar i;
    generate 
      for(i=1;i<32;i=i+1)begin 
        fa f2(.a(a[i]),
              .b(b[i]),
              .c(ca[i-1]),
              .sum(sum[i]),
              .carry(ca[i]));
      end 
    endgenerate
          assign carry = ca[31];
endmodule
          