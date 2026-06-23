module ff(input a,
          input b,
          input cin,
          output carry,
          output sum);
assign sum = a^b^cin;
  assign carry = (a&b)|(b&cin)|(a&cin);
endmodule