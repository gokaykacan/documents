
CC=gcc
AR=ar
ARFLAGS=ruv
CFLAGS=-I.
DEPS = hellomake2.h 
OBJ = hellomakelib.o 

LIB_NAME   = libhellomake.a

.PHONY: lib

lib: hellomakelib
	
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomakelib: $(OBJ)
	@$(AR) $(ARFLAGS) $(LIB_NAME) $^ 
	@echo
	@echo "Library build."
	@echo

