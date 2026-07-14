module f4in1mux(input s1,s2,
                input d0,d1,d2,d3,
                output y);
  wire ns1;
  wire ns2;
  wire a1,a2,a3,a4;
  not(ns1,s1);
  not(ns2,s2);
  and(a1,d0,ns1,ns2);
  and(a2,d1,ns1,s2);
  and(a3,d2,s1,ns2);
  and(a4,d3,s1,s2);
  
  or(y,a1,a2,a3,a4);
  endmodule
