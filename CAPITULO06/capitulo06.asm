;$C642 contiene una rutina que sirve para imprimir una línea 
;completa según lo indicado en los registros X e Y. Con eso nos
;ahorramos el tener que imprimir carácter por carácter.
;
;AC 10101100
;	LDX #<MEMO
;	LDY #>MEMO
;	JSR $C642
	
		
;	BIT HIGH	BIT LOW
;	0100		0001
;	4		1
	NIBBLE HIGH	NIBBLE LOW
	
	10101100
	WORD
	LDX 1100	1
	LDY 1010	4	A