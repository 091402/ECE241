`timescale 1ns / 1ps



module test_part2;

	// Inputs
	reg Clock;
	reg Reset_b;
	reg [7:0] Data;
	reg [2:0] Function;

	// Outputs
	wire [7:0] ALUout;

	// Instantiate the Unit Under Test (UUT)

part2 uut(
.Clock(Clock),
.Reset_b(Reset_b),
.Data(Data),
.Function(Function),
.ALUout(ALUout));

initial
begin
	Reset_b = 1'd0;
	Clock   = 1'd0;
	Data    = 8'b00010001;
	Function = 3'd0;
	#100
	Reset_b = 1'd1;
end

always #10 Clock = ~Clock;
      
endmodule

