all: save-rom-plus4.prg save-rom-c128.prg

save-rom-%.prg: save-rom-%.asm
	cl65 --target $* -o save-rom-$*.prg -l save-rom-$*.lst save-rom-$*.asm

clean:
	-rm save-rom-*.prg save-rom-*.lst
