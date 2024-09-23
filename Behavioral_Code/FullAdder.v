module FullAdder(A,B,Cin,Sum,Cout);
input [1:0]A;
input [1:0]B;
input Cin;
output reg [1:0]Sum;
output reg Cout;
always@(A,B,Cin)
begin
{Cout, Sum} = A + B + Cin;
end
endmodule
