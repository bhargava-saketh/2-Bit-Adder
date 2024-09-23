module FullAdder_st(A,B,Cin,Sum,Cout);
input wire [1:0]A;
input wire [1:0]B;
input wire Cin;
output wire [1:0]Sum;
output wire Cout;

wire z1,z2,z3,z4;

xor(z1,A[0],B[0]);
xor(Sum[0],z1,Cin);
and(z2,z1,Cin);
and(z3,A[0],B[0]);
or(z4,z3,z2);


xor(z5,A[1],B[1]);
xor(Sum[1],z4,z5);
and(z6,z5,z4);
and(z7,A[1],B[1]);
or(Cout,z7,z6);

endmodule
