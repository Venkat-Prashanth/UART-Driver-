CC=arm-none-eabi-gcc
LD=arm-none-eabi-ld

CFLAGS=-ansi -pedantic -Wall -Wextra -march=armv6 -msoft-float -fPIC -mapcs-frame
LDFLAGS=-N -Ttext=0x10000


t.elf: bootstrap.o t.o t.ld

.PHONY: clean

clean:
	$(RM) *.elf *.o

.SUFFIXES: .s .o .elf

.s.o:
	$(CC) $(CFLAGS) -o $@ -c $^

.o.elf:
	$(LD) $(LDFLAGS) -o $@ $^

    


