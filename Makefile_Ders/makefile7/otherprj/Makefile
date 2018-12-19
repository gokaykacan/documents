
CC=gcc
CFLAGS=-I.
DEPS = hellomake2.h 
OBJ = hellomakelib.o 

SHARED_NAME   = libhellomake.so

.PHONY: lib

lib: hellomakelib
	
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomakelib: $(OBJ)
	@$(CC) $(CFLAGS) $^ -shared -o $(SHARED_NAME)
	@echo
	@echo "Library build."
	@echo

