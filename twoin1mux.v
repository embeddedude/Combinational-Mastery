module two_1mux(input i0,
                input i1,
                input s,
                output y);
wire nots;
wire andg;
wire andf;
wire u;
not(nots,s);
and(andg,nots,i0);
and(andf,s,i1);
or(y,andg,andf);
endmodule
//2 in 1 mux using assign 
module twoin1(input i0,
              input i1,
              input s,
              output y);
  assign y = (s?i1:i0);
endmodule
