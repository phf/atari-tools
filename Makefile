CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -D_XOPEN_SOURCE=500

DEBUG = 1

ifdef DEBUG
CFLAGS += -g -Og -fsanitize=address -fsanitize=undefined
LDFLAGS += -g -fsanitize=address -fsanitize=undefined
else
CFLAGS += -O2
endif

ALL=atr atr2imd imd2atr detok

all: $(ALL)

.PHONY: all clean
clean:
	$(RM) $(ALL) *.o
