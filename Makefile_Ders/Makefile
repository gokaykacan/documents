CC = g++
CFLAGS = -O2 -Wall -pedantic
LIBS = -lm -lnsl

.PHONY: clean

test: test.o
	$(CC) $(CFLAGS) $(LIBS) -o test test.o

test.o: test.cpp
	$(CC) $(CFLAGS) -c test.cpp

clean:
	rm -f test *.o

install: test
	cp test /usr/bin
