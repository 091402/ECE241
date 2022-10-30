
module FA(A,B,Cin,S,Cout);
input A,B,Cin;
output S,Cout;
assign S=Cin^A^B;
assign Cout=(A&B)|(Cin&A)|(Cin&B);
endmodule

module part2(a, b, c_in, s, c_out);
input [3:0]a,b;
input c_in;
output[3:0]s;
output[3:0]c_out;



FA u0(a[0],b[0],c_in,s[0],c_out[0]);
FA u1(a[1],b[1],c_out[0],s[1],c_out[1]);
FA u2(a[2],b[2],c_out[1],s[2],c_out[2]);
FA u3(a[3],b[3],c_out[2],s[3],c_out[3]);

endmodule