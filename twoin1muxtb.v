module tb();
  reg i0,i1,s;
  wire y;
  two_1mux dut (
        .i0(i0),
        .i1(i1),
        .s(s),
        .y(y)
    );
  initial begin 
    $monitor("Time=%0t i0=%b i1=%b s=%b y=%b",
              $time, i0, i1, s, y);
    {i0,i1,s} = 3'b000;#10
    {i0,i1,s} = 3'b001;#10
    {i0,i1,s} = 3'b010;#10
    {i0,i1,s} = 3'b011;#10
    {i0,i1,s} = 3'b100;#10
    {i0,i1,s} = 3'b101;#10
    {i0,i1,s} = 3'b110;#10
    {i0,i1,s} = 3'b111;#10
    $finish;
  
  end
endmodule
// 2 in 1 mux behavioural code 
module tb();
  reg i0,i1,s;
  wire y;
  twoin1 dut(.i0(i0),.i1(i1),.s(s),.y(y));
  initial begin 
    i0 = 1;
    i1 = 1;
     s = 0;
    #10
     i0 = 1;
    i1 = 0;
     s = 0;
    #10
     i0 = 0;
    i1 = 1;
     s = 1;
    #10
     i0 = 1;
    i1 = 0;
     s = 0;
    #10
     i0 = 1;
    i1 = 1;
     s = 1;
    #10
    $finish;
  end 
  initial begin
    $monitor("time=%0t,i0 = %b,i1 = %b,s = %b",$time,i0,i1,s);
  end 
endmodule
