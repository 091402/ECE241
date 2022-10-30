module FOUR_ADDER(Ain,Bin,Cin,Cout,Sum);
input [3:0]Ain;
input [3:0]Bin;
input Cin;
output Cout;
output [3:0]Sum;


wire[3:0] COUNT;
FULL_ADDER I0(Ain[0],Bin[0],Cin,     COUNT[0],Sum[0]);
FULL_ADDER I1(Ain[1],Bin[1],COUNT[0],COUNT[1],Sum[1]);
FULL_ADDER I2(Ain[2],Bin[2],COUNT[1],COUNT[2],Sum[2]);
FULL_ADDER I3(Ain[3],Bin[3],COUNT[2],COUNT[3],Sum[3]);
assign Cout=COUNT[3];

endmodule 