
; The rst vectors are unused.
SECTION "rst 00", ROM0
	rst $38
SECTION "rst 08", ROM0
	rst $38
SECTION "rst 10", ROM0
	rst $38
SECTION "rst 18", ROM0
	rst $38
SECTION "rst 20", ROM0
	rst $38
SECTION "rst 28", ROM0
	rst $38
SECTION "rst 30", ROM0
	rst $38
SECTION "rst 38", ROM0
	rst $38

; Hardware interrupts
SECTION "vblank", ROM0
	reti

SECTION "hblank", ROM0
	reti

SECTION "timer", ROM0 
	reti

SECTION "serial", ROM0
	reti

SECTION "joypad", ROM0
	reti


SECTION "Home", ROM0

SECTION "Entry", ROM0

	nop
	jp MAIN


SECTION "Header", ROM0

	; The header is generated by rgbfix.
	; The space here is allocated to prevent code from being overwritten.

	ds $150 - $104
