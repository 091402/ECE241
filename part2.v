`timescale 1ns / 1ns // `timescale time_unit/time_precision

//SW[2:0] data inputs
//SW[9] select signals

//LEDR[0] output display

 
module lab2part2(LEDR, SW);
    input [9:0] SW;
    output [9:0] LEDR;

    mux2to1 u0(
        .x(SW[0]),
        .y(SW[1]),
        .s(SW[9]),
        .m(LEDR[0])
        );
endmodule

module mux2to1(x, y, s, m);
    input x; //select 0
    input y; //select 1
    input s; //select signal
    output m; //output
	 wire a, b,c;
	 v7404 u1(.pin1(s),
	          .pin2(a))
				 ;				
	 v7408 u2(.pin1(x),
	          .pin2(a),
				 .pin4(y),
				 .pin5(s),
				 .pin3(b),
				 .pin6(c))
				 ;
    v7432 u3(.pin1(b),
	          .pin2(c),
				 .pin3(m))
				 ;
	 
endmodule

module v7404(pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
    input pin1, pin3, pin5, pin13, pin11, pin9;
	 output pin2, pin4, pin6, pin12, pin10, pin8;
	 
	 assign pin2=~pin1;
	 assign pin4=~pin3;
	 assign pin6=~pin5;
	 assign pin12=~pin13;
	 assign pin10=~pin11;
	 assign pin8=~pin9;
			  
endmodule

module v7408(pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
   input pin1, pin2, pin4, pin5, pin13, pin12, pin10, pin9;
	output pin3, pin6, pin11, pin8;
	
	assign pin3=pin1&pin2;
	assign pin6=pin4&pin5;
	assign pin11=pin13&pin12;
	assign pin8=pin10&pin9;
	
endmodule

module v7432(pin1, pin3, pin5, pin9, pin11, pin13, pin2, pin4, pin6, pin8, pin10, pin12);
   
	input pin1, pin2, pin4, pin5, pin13, pin12, pin10, pin9;
	output pin3, pin6, pin11, pin8;
	
	assign pin3=pin1|pin2;
	assign pin6=pin4|pin5;
	assign pin11=pin13|pin12;
	assign pin8=pin10|pin9;
	
endmodule

   