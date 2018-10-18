;PANTALLAS DISPLAY LIST
PRINCIPALDLI
	.BYTE $70,$70,$70,$70,$46
	.WORD TITULOPRINCIPAL
	.BYTE $70,$42
	.WORD TEXTOPRINCIPAL
	.BYTE $02,$02,$02,$02,$02,$02,$02,$02
	.BYTE $02,$02,$02,$02,$02,$02,$02,$02
	.BYTE $02,$02,$02,$02
	.BYTE $41
	.WORD PRINCIPALDLI 
PRINCIPAL
	LDA #<PRINCIPALDLI
	STA $230
	LDA #>PRINCIPALDLI
	STA $231
	RTS
TITULOPRINCIPAL
	.SBYTE +64,"ORGANIZADOR DE DISCO"
TEXTOPRINCIPAL
	;      "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
;comienzo el dibujo
	.SBYTE "                ",$A0,$99,$A0,$A0,$19,$A0,"                  "
	.SBYTE "                ",$A0,$99,$A0,$A0,$19,$A0,"                  "
	.SBYTE "                ",$A0,$99,$A0,$A0,$19,$A0,"                  "
	.SBYTE "                ",$A0,$99,$A0,$A0,$19,$A0,"                  "
	.SBYTE "               ",$02,$A0,$99,$A0,$A0,$19,$A0,$16,"                 "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE "                                        "
	.SBYTE +128,"SOFTWARE ATARI Creado por dogdark - 2018"
	.SBYTE "ULTIMA LINEA                            "