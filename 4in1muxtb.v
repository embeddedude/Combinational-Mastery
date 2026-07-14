
module tb();

reg s1;
reg s2;
reg d0,d1,d2,d3;
wire  y;

f4in1mux dut(
    .s1(s1),
    .s2(s2),
    .d0(d0),
  .d1(d1),
  .d2(d2),
  .d3(d3),
  .y(y)
);

initial begin
    d0 = 0;
    d1 = 1;
    d2 = 0;
    d3 = 1;
    s1 = 0; s2 = 1;
    #10;

    s1 = 0; s2 = 0;
    #10;

    s1 = 1; s2 = 0;
    #10;

    s1 = 1; s2 = 1;
    #10;
end

initial begin
  $monitor("Time=%0t  s1=%b  s2=%b  y=%b", $time, s1, s2, y);
end
endmodule
