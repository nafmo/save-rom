all: save-rom.prg

save-rom.prg: save-rom.asm
	cl65 --target plus4 -o save-rom.prg -l save-rom.lst save-rom.asm

clean:
	-rm save-rom.prg save-rom.lst