CC=gcc
LD=gcc
CFLAGS= -std=c99 -ggdb -Wall
LIBS= -lm

testVectors: testVectors.o vectors.o
	$(LD) -o testVectors testVectors.o vectors.o $(LIBS)
	
vectors.o:	vectors.h vectors.c
	$(CC) $(CFLAGS) -c vectors.c -o vectors.o

testVectors.o:	testVectors.c
	$(CC) $(CFLAGS) -c testVectors.c -o testVectors.o
	
clean:
	rm *.o
	rm testVectors
