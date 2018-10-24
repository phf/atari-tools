CFLAGS=-std=c11 -Wall -Wextra -Wpedantic -Og -g -D_XOPEN_SOURCE=500

ALL=atr atr2imd imd2atr detok

all: $(ALL)

.PHONY: clean
clean:
	$(RM) $(ALL) *.o
