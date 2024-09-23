module FullAdder_st_tb();
reg [1:0]A;
reg [1:0]B;
reg Cin;
wire [1:0]Sum;
wire Cout;

FullAdder_st dut(A,B,Cin,Sum,Cout);

initial begin
A <= 0;
B <= 0;
Cin <= 0;
end

always begin
A <= 3;
B <= 3;
Cin <= 0;
#50;

A <= 1;
B <= 1;
Cin <= 0;
#50;

A <= 0;
B <= 1;
Cin <= 0;
#50;

A <= 1;
B <= 0;
Cin <= 0;
#50;

A <= 2;
B <= 3;
Cin <= 0;
#50;

A <= 3;
B <= 3;
Cin <= 1;
#50;

A <= 1;
B <= 1;
Cin <= 1;
#50;

A <= 0;
B <= 1;
Cin <= 1;
#50;

A <= 1;
B <= 0;
Cin <= 1;
#50;

A <= 2;
B <= 3;
Cin <= 1;
#50;
$finish;
end
endmodule
