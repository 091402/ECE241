module FULL_ADDER(Ain,Bin,Cin,Cout,Sum);
input Ain;
input Bin;
input Cin;
output Cout;
output Sum;


assign Sum = Ain^Bin^Cin;
assign Cout = (Ain & Bin) | (Bin & Cin) | (Ain & Cin);
endmodule 