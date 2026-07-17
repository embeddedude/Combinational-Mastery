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

/*32
│
├── Stage 1 : 8 × 4:1 MUX
│      ↓
│      8 outputs
│
├── Stage 2 : 4 × 2:1 MUX
│      ↓
│      4 outputs
│
├── Stage 3 : 2 × 2:1 MUX
│      ↓
│      2 outputs
│
└── Stage 4 : 1 × 2:1 MUX
       ↓
       y */
       
//Code your design here
module t4in1mux(input i0,i1,i2,i3,
                input [1:0] sel,
                output reg y);
  always@(*) begin
    case(sel)
      2'b00 : y = i0;
      2'b01 : y = i1;
      2'b10 : y = i2;
      2'b11 : y = i3;
       default: y=1'b0;
    endcase
  end
endmodule
module t2in1mux(input i0,i1,
                input sel,
                output reg y);
  always @(*) begin
    y = sel?i1:i0;
  end
endmodule
module t32in1mux(input [31:0] i,
                 input [4:0] sel,
                 output y);
  wire stage1 [7:0];
  wire stage2 [3:0];
  wire stage3 [1:0];
  t4in1mux m0(i[0],i[1],i[2],i[3],sel[1:0],stage1[0]);
  t4in1mux m1(i[4],i[5],i[6],i[7],sel[1:0],stage1[1]);
  t4in1mux m2(i[8],i[9],i[10],i[11],sel[1:0],stage1[2]);
  t4in1mux m3(i[12],i[13],i[14],i[15],sel[1:0],stage1[3]);
  t4in1mux m4(i[16],i[17],i[18],i[19],sel[1:0],stage1[4]);
  t4in1mux m5(i[20],i[21],i[22],i[23],sel[1:0],stage1[5]);
  t4in1mux m6(i[24],i[25],i[26],i[27],sel[1:0],stage1[6]);
  t4in1mux m7(i[28],i[29],i[30],i[31],sel[1:0],stage1[7]);
  
  t2in1mux m8(stage1[0],stage1[1],sel[2],stage2[0]);
  t2in1mux m9(stage1[2],stage1[3],sel[2],stage2[1]);
  t2in1mux m10(stage1[4],stage1[5],sel[2],stage2[2]);
  t2in1mux m11(stage1[6],stage1[7],sel[2],stage2[3]);
  
  t2in1mux m12(stage2[0],stage2[1],sel[3],stage3[0]);
  t2in1mux m13(stage2[2],stage2[3],sel[3],stage3[1]);
  
  t2in1mux m14(stage3[0],stage3[1],sel[4],y);
endmodule
