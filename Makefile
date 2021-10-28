PREFIX ?= /usr/local

output: dwmblocks.c blocks.h
	cc dwmblocks.c -lX11 -o dwmblocks
clean:
	rm -f *.o *.gch dwmblocks
install: output
	mkdir -p /home/tonlage/Puters/bin
	cp -f dwmblocks /home/tonlage/Puters/bin
	chmod 755 /home/tonlage/Puters/bin/dwmblocks
uninstall:
	rm -f /home/tonlage/Puters/bin/dwmblocks
