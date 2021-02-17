module ALUA(
	input [7:0]A,
	input [7:0]B,
	input [1:0]S,
	output [7:0] IS,
	output cout
);

wire [7:0]opa; 
wire [7:0]opb; 
wire c; 


ALUNEXT alu(.A(A),.B(B),.S(S),.OPA(opa),.OPB(opb),.c(c));
Adder add(.IA(opa),.IB(opb),.cin(c),.IS(IS),.cout(cout));







endmodule
