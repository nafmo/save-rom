all: save-rom-plus4.prg

save-rom-plus4.prg: save-rom-plus4.asm
	cl65 --target plus4 -o save-rom-plus4.prg -l save-rom-plus4.lst save-rom-plus4.asm

clean:
	-rm save-rom-plus4.prg save-rom-plus4.lst