PREFIX ?= /usr/local

output: dwmblocks.c blocks.h
	cc dwmblocks.c -lX11 -o dwmblocks
clean:
	rm -f *.o *.gch dwmblocks
install: output
	cp -f dwmblocks ${PREFIX}/bin
