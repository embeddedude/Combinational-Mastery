module mux8in1(
    input s1,s2,s3,
    input a1,a2,a3,a4,a5,a6,a7,a8,
    output y
);

wire n1,n2,n3;
wire b1,b2,b3,b4,b5,b6,b7,b8;

not(n1,s1);
not(n2,s2);
not(n3,s3);

and(b1,n1,n2,n3,a1);
and(b2,n1,n2,s3,a2);
and(b3,n1,s2,n3,a3);
and(b4,n1,s2,s3,a4);
and(b5,s1,n2,n3,a5);
and(b6,s1,n2,s3,a6);
and(b7,s1,s2,n3,a7);
and(b8,s1,s2,s3,a8);

or(y,b1,b2,b3,b4,b5,b6,b7,b8);

endmodule
