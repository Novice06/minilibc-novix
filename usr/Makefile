CC      = /home/novice/opt/cross/bin/i686-elf-gcc
LD      = /home/novice/opt/cross/bin/i686-elf-ld
LIBC    = ../include

CFLAGS  := -ffreestanding -nostdlib -g -I $(LIBC)

LDFLAGS := -nostdlib -static -T linker.ld

OUT := hello.bin

all: clean $(OUT)

$(OUT): main.o ../build/crt0.o ../build/libc.a
	$(LD) $(LDFLAGS) ../build/crt0.o main.o ../build/libc.a -o $@

main.o: main.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o $(OUT)

.PHONY: all clean