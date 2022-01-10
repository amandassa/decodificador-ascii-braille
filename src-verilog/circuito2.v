module circuito2(L0, L1, L2, L3, L4, L5, a1, a2);
//		entradas e saidas
	input a1, a2;
	output L0, L1, L2, L3, L4, L5;
	assign L0 = a2;
	assign L1 = a2;
	assign L2 = a2;
	assign L4 = 0;
	
//		fios
	wire nota1_or;
	
// 	porta
	not nota1(nota1_or, a1);
	or or1(L3, nota1_or, a2);
	not nota1_2(L5, a1);
	
endmodule 