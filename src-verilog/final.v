module final(c, d, e, f, g, h, led0, led1, led2, 
	led3, led4, led5, L0, L1, L2, L3, L4, L5);
//		entradas e saidas
	input c, d, e, f, g, h;
	output led0, led1, led2, led3, led4, led5;
	output L0, L1, L2, L3, L4, L5;
	wire a1, a2;
	
//		logica de funcionamento
	circuito1 c1 (
	.a1(a1), 
	.a2(a2), 
	.led0(led0), 
	.led1(led1), 
	.led2(led2), 
	.led3(led3), 
	.led4(led4), 
	.led5(led5), 
	.c(c), 
	.d(d), 
	.e(e), 
	.f(f), 
	.g(g), 
	.h(h)
	);
	
	circuito2 c2 (
	.L0(L0), 
	.L1(L1), 
	.L2(L2), 
	.L3(L3), 
	.L4(L4), 
	.L5(L5), 
	.a1(a1), 
	.a2(a2)
	);
	
endmodule 

