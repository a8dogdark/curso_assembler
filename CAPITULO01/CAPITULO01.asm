	.OPT NO LIST
;CURSO ASSEMBLER CAPITULO 01
;CREADO PO DOGDARK
;BAJO DISPLAY LIST
;MATERIAL AUTODIDACTA Y DE USO PUBLICO
;CREADO EN EL A�O 2018
	*=$2000
CONSOLA = 53279
START
	LDX #39
START?
	LDA SSTART,X
	STA MSTART,X
	CPX #0
	BEQ ESSTART
	DEX
	JMP START?
ESSTART
	LDA CONSOLA
	CMP #6
	BNE ESSTART
ESSTART?
	LDA CONSOLA
	CMP #6
	BEQ ESSTART?
FUESTART
	LDX #39
FUESTART?
	LDA #0
	STA MSTART,X
	CPX #0
	BEQ FINSTART
	DEX
	JMP FUESTART?
FINSTART
	RTS
LIMPIABODY
	LDX #0
LIMPIABODY.01
	LDA #$00
	STA PANTALLABODYTEXT01,X
	STA PANTALLABODYTEXT01+240,X
	STA PANTALLABODYTEXT01+480,X
	CPX #239
	BEQ FIN.LIMPIABODY
	INX
	JMP LIMPIABODY.01
FIN.LIMPIABODY
	RTS
PORTADADLI
	.BYTE $70,$70,$70,$00,$80,$46
	.WORD PORTADATITULO01
	.BYTE $46
	.WORD PORTADATITULO02
	.BYTE $70,$4D
	.WORD PORTADABIB01
	.BYTE $4D
	.WORD PORTADADIB02
	.BYTE $4D
	.WORD PORTADADIB03
	.BYTE $4D
	.WORD PORTADADIB04
	.BYTE $4D
	.WORD PORTADADIB05
	.BYTE $4D
	.WORD PORTADADIB06
	.BYTE $4D
	.WORD PORTADADIB07
	.BYTE $4D
	.WORD PORTADADIB08
	.BYTE $4D
	.WORD PORTADADIB09
	.BYTE $4D
	.WORD PORTADADIB10
	.BYTE $4D
	.WORD PORTADADIB11
	.BYTE $4D
	.WORD PORTADADIB12
	.BYTE $4D
	.WORD PORTADADIB13
	.BYTE $4D
	.WORD PORTADADIB14
	.BYTE $4D
	.WORD PORTADADIB15
	.BYTE $4D
	.WORD PORTADADIB16
	.BYTE $4D
	.WORD PORTADADIB17
	.BYTE $4D
	.WORD PORTADADIB18
	.BYTE $4D
	.WORD PORTADADIB19
	.BYTE $4D
	.WORD PORTADADIB20
	.BYTE $4D
	.WORD PORTADADIB21
	.BYTE $70,$42
	.WORD PORTADATEXT01
	.BYTE $02,$02,$02,$02,$02,$02
	.BYTE $70,$70,$70,$42
	.WORD MSTART
	.BYTE $41
	.WORD PORTADADLI
PORTADA
	LDA #<PORTADADLI
	STA $230
	LDA #>PORTADADLI
	STA $231
	JSR START
	RTS
;PANTALLA BODY
PANTALLABODYDLI
	.BYTE $70,$70,$70,$46
	.WORD PANTALLABODYTITULO01
	.BYTE $46
	.WORD PANTALLABODYTITULO02
	.BYTE $70,$42
	.WORD PANTALLABODYTEXT01
	.BYTE $02,$02,$02,$02,$02,$02,$02,$02
	.BYTE $02,$02,$02,$02,$02,$02,$02,$02
	.BYTE $02
	.BYTE $70,$42
	.WORD MSTART
	.BYTE $41
	.WORD PANTALLABODYDLI
PANTALLABODY
	LDA #<PANTALLABODYDLI
	STA $230
	LDA #>PANTALLABODYDLI
	STA $231
	RTS
;PRIMERA PANTALLA
PANTALLAUNO
	LDX #0
PANTALLAUNO.01
	LDA PUNO,X
	STA PANTALLABODYTEXT01,X
	LDA PUNO+240,X
	STA PANTALLABODYTEXT01+240,X
	LDA PUNO+480,X
	STA PANTALLABODYTEXT01+480,X
	CPX #239
	BEQ FIN.PANTALLAUNO
	INX
	JMP PANTALLAUNO.01
FIN.PANTALLAUNO
	JSR START
	RTS
;PANTALLA DOS
PANTALLADOS
	LDX #0
PANTALLADOS.01
	LDA PDOS,X
	STA PANTALLABODYTEXT01,X
	LDA PDOS+240,X
	STA PANTALLABODYTEXT01+240,X
	LDA PDOS+480,X
	STA PANTALLABODYTEXT01+480,X
	CPX #239
	BEQ FIN.PANTALLADOS
	INX
	JMP PANTALLADOS.01
FIN.PANTALLADOS
	JSR START
	RTS
;PANTALLA TRES
PANTALLATRES
	LDX #0
PANTALLATRES.01
	LDA PTRES,X
	STA PANTALLABODYTEXT01,X
	LDA PTRES+240,X
	STA PANTALLABODYTEXT01+240,X
	LDA PTRES+480,X
	STA PANTALLABODYTEXT01+480,X
	CPX #239
	BEQ FIN.PANTALLATRES
	INX
	JMP PANTALLATRES.01
FIN.PANTALLATRES
	JSR START
	RTS
;PANTALLA CUATRO
PANTALLACUATRO
	LDX #0
PANTALLACUATRO.01
	LDA PCUATRO,X
	STA PANTALLABODYTEXT01,X
	LDA PCUATRO+240,X
	STA PANTALLABODYTEXT01+240,X
	LDA PCUATRO+480,X
	STA PANTALLABODYTEXT01+480,X
	CPX #239
	BEQ FIN.PANTALLACUATRO
	INX
	JMP PANTALLACUATRO.01
FIN.PANTALLACUATRO
	JSR START
	RTS
;PANTALLA CINCO
PANTALLACINCO
	LDX #0
PANTALLACINCO.01
	LDA PCINCO,X
	STA PANTALLABODYTEXT01,X
	LDA PCINCO+240,X
	STA PANTALLABODYTEXT01+240,X
	LDA PCINCO+480,X
	STA PANTALLABODYTEXT01+480,X
	CPX #239
	BEQ FIN.PANTALLACINCO
	INX
	JMP PANTALLACINCO.01
FIN.PANTALLACINCO
	JSR START
	RTS
;PANTALLA SEIS
PANTALLASEIS
	LDX #0
PANTALLASEIS.01
	LDA PSEIS,X
	STA PANTALLABODYTEXT01,X
	LDA PSEIS+240,X
	STA PANTALLABODYTEXT01+240,X
	LDA PSEIS+480,X
	STA PANTALLABODYTEXT01+480,X
	CPX #239
	BEQ FIN.PANTALLASEIS
	INX
	JMP PANTALLASEIS.01
FIN.PANTALLASEIS
	JSR START
	RTS
;PANTALLA SIETE
PANTALLASIETE
	LDX #0
PANTALLASIETE.01
	LDA PSIETE,X
	STA PANTALLABODYTEXT01,X
	LDA PSIETE+240,X
	STA PANTALLABODYTEXT01+240,X
	LDA PSIETE+480,X
	STA PANTALLABODYTEXT01+480,X
	CPX #239
	BEQ FIN.PANTALLASIETE
	INX
	JMP PANTALLASIETE.01
FIN.PANTALLASIETE
	RTS
INICIO
	LDA #0
	STA 710
	LDA #1
	STA 580
	JSR PORTADA
	JSR LIMPIABODY
	JSR PANTALLABODY
	JSR PANTALLAUNO
	JSR LIMPIABODY
	JSR PANTALLADOS
	JSR LIMPIABODY
	JSR PANTALLATRES
	JSR LIMPIABODY
	JSR PANTALLACUATRO
	JSR LIMPIABODY
	JSR PANTALLACINCO
	JSR LIMPIABODY
	JSR PANTALLASEIS
	JSR LIMPIABODY
	JSR PANTALLASIETE
LOOP
	JMP LOOP
	.INCLUDE #DATACURSO01.ASM
	*=$2E0
	.WORD INICIO