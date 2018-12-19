
CC=gcc
INCDIR=./include
INCDIR+=./include2
INCDIR+=./include3

INCLUDE = $(foreach dir,$(INCDIR), -I$(dir))
CFLAGS=$(INCLUDE)

SRCDIR=./src
OBJDIR=./obj

DEPS = $(foreach dir, $(INCDIR), $(wildcard $(dir)/*.h))
SRC = $(foreach dir, $(SRCDIR), $(wildcard $(dir)/*.c))
OBJ = $(patsubst %.c, $(OBJDIR)/%.o,   $(notdir $(SRC)))

.PHONY: clean printrule make_obj_dir all

all: make_obj_dir hellomake

make_obj_dir: 
	@mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: $(SRCDIR)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
	
hellomake: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
	
printrule:
	echo $(DEPS)
	echo
	echo $(SRC)
	echo
	echo $(OBJ)
	echo

clean: 
	rm -rf $(OBJDIR)
	rm hellomake
