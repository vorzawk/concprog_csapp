CC=gcc
CFLAGS=-std=gnu99 -pthread -lrt

all: badcnt

badcnt: badcnt.c csapp.c
	$(CC) $(CFLAGS) badcnt.c csapp.c -o badcnt

clean:
	rm *o badcnt
