module t2in1mux(input i0,i1,
                input sel,
                output reg y);
  always@(*) begin
    y = sel ? i1:i0;
  end 
endmodule
module t8in1mux(input [2:0]s,
                input [7:0]i,
                output  y);
  wire s1[3:0];
  wire s2[1:0];
  
  //1st stage 4 mux's
  t2in1mux m0(i[0],i[1],s[0],s1[0]);
  t2in1mux m1(i[2],i[3],s[0],s1[1]);
  t2in1mux m2(i[4],i[5],s[0],s1[2]);
  t2in1mux m3(i[6],i[7],s[0],s1[3]);
  //2nd stage 2 mux's
  t2in1mux m4(s1[0],s1[1],s[1],s2[0]);
  t2in1mux m5(s1[2],s1[3],s[1],s2[1]);
  //3rd stage 1 mux
  t2in1mux m6(s2[0],s2[1],s[2],y);
  
  
endmodule
