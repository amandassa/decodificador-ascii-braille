module circuito1 (a1, a2, led0, led1, led2, led3, led4, led5, c, d, e, f, g, h);
//		entradas e saidas
	input c, d, e, f, g, h;
	output a1, a2, led0, led1, led2, led3, led4, led5;
	assign led2 = 0;
	assign a1 = c;
	assign a2 = d;
	
//		fios
	wire and1_or1, and2_or2, note_and2, noth_or2, notd_and3, notf_and4;
	wire and4_or3, and5_or3, notd_or4, note_or4, noth_or4;
	
//		portas e respectivas saídas

//		led0
	and and1(and1_or1, e, h);
	or or1(led0, g, f, and1_or1);
	
//		led1
	not noth1(noth_or2, h), note1(note_and2, e);
	and and2(and2_or2, note_and2, f);
	or or2(led1, noth_or2, and2_or2);

//		led3
	not notd1(notd_and3, d);
	and and3(led3, notd_and3, e);
	
//		led4
	not notf(notf_and4, f);
	and and4(and4_or3, notf_and4, e);
	and and5(and5_or3, d, f);
	or or3(led4, and4_or3, and5_or3);
	
//		led5
	not notd2(notd_or4, d);
	not note2(note_or4, e);
	not noth2(noth_or4, h);
	or or4(led5, notd_or4, note_or4, noth_or4);
	
	
endmodule 