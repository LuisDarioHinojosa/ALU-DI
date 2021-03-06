module ALUNEXT(
	input[7:0]A, // 8 BIT FIRDT INPUT
	input[7:0]B, // B BIT SECOND INPUT
	input[1:0]S, // SELECTOR
	output[7:0]OPA, // adder operand a
	output reg [7:0]OPB, // adderoperand b
	output c // CARRY

);

always @(*)
	begin
		case(S)
			2'b00: OPB = B;
			2'b01 : OPB = ~B;
			2'b10 : OPB = 0;
			2'b11 : OPB = 0;
			default: OPB = B;
		endcase
	end

assign OPA = A;
assign c = S[1] ^ S[0]; // y xor z to generate ´1 carry


	
endmodule
