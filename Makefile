CC=gcc
CFLAGS=-std=gnu99 -pthread -lrt

all: badcnt goodcnt

# make knows that csapp.c is to be compiled into csapp.o, no need to specify this explicitly.
badcnt: badcnt.c csapp.o
	$(CC) $(CFLAGS) badcnt.c csapp.o -o badcnt

goodcnt: goodcnt.c csapp.o
	$(CC) $(CFLAGS) goodcnt.c csapp.o -o goodcnt

clean:
	rm *o badcnt goodcnt
