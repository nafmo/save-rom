.include "plus4.inc"
.include "cbm_kernal.inc"

BASIC_KERNAL_SELECT := $FDD0
TMP2 := $B8
ROMSTART := $C000
ROMEND := $0000

fnum = 2

	; Select ROM
	lda #$ff
	sta TED_ROMSEL
	; Select BASIC+KERNAL
	sta BASIC_KERNAL_SELECT

	; SETLFS: Set file parameters
	lda #fnum		; Logical file number
	ldx DEVNUM		; Device number
	bne usedev
	ldx #8			; use 8 if was zero
usedev:
	ldy #2			; Secondary address
	jsr SETLFS

	; SETNAM: Set filename
	lda #fnameend-fname	; Length
	ldx #<fname
	ldy #>fname
	jsr SETNAM

	; OPEN: Open the prepared file
	jsr OPEN

	; CHKOUT: Redirect output to file
	ldx #fnum
	jsr CHKOUT

	; Now bang bytes to the file
	lda #<ROMSTART
	ldx #>ROMSTART
	sta TMP2
	stx TMP2+1

	ldy #0
loop:
	lda (TMP2),y
	jsr CHROUT
	iny
	bne loop		; until Y = 00 again

	inc TMP2+1		; increase page number
	bne loop		; until we reach 0000

	; Clean up
	lda #fnum
	jsr CLOSE		; Close file
	jmp CLRCHN		; Reset redirection

fname:
	.byte "rom.bin,s,w"
fnameend:
