# Makefile for TINY
# GNU C Version


CC = gcc

CFLAGS = -w 

OBJS = scan.o main.o util.o parse.o symtab.o analyze.o code.o cgen.o

run: tiny tm

tiny: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o tiny

tm: tm.c
	$(CC) $(CFLAGS) tm.c -o tm

main.o: main.c globals.h util.h scan.h parse.h analyze.h
	$(CC) $(CFLAGS) -c main.c

util.o: util.c util.h globals.h
	$(CC) $(CFLAGS) -c util.c

scan.o: scan.c scan.h util.h globals.h
	$(CC) $(CFLAGS) -c scan.c

parse.o: parse.c parse.h scan.h util.h globals.h
	$(CC) $(CFLAGS) -c parse.c

symtab.o: symtab.c symtab.h
	$(CC) $(CFLAGS) -c symtab.c

analyze.o: analyze.c globals.h symtab.h analyze.h
	$(CC) $(CFLAGS) -c analyze.c

code.o: code.c globals.h code.h 
	$(CC) $(CFLAGS) -c code.c

cgen.o: cgen.c cgen.h globals.h symtab.h code.h
	$(CC) $(CFLAGS) -c cgen.c


clean:
	-rm tiny 
	-rm tm
	-rm $(OBJS)
