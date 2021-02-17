module aluComplete(
	input [7:0] A,
	input [7:0] B,
	input [1:0] S, // Internal selector (Y,Z)
	input S2, // External selector (X)
	output reg [7:0]F // Final Output
);

wire [7:0]IS;
wire [7:0]OUT;
wire aCout;


ALUA ari(.A(A),.B(B),.S(S),.IS(IS),.cout(aCout));
ALUL lol(.A(A),.B(B),.S(S),.OUT(OUT));

always@(*)
	begin
		case(S2)
			1'b0: F = IS;
			1'b1: F = OUT;
			default: F = IS;
		endcase
	end




endmodule
