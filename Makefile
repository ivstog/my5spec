PROG = my5spec

CC   = gcc
CFLAGS = -O2 -march=native -Wall -W
LDFLAGS = -lmark5access -lfftw3f

OBJS = main.o

$(PROG): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(PROG) *.o

.PHONY: all clean
