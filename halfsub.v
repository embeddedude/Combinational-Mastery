module halfsub(input a,
               input b,
               output diff,
               output bin);
assign diff = a^b;
assign bin = ~a&b;
endmodule