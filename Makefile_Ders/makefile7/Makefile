
include ./config.mk

DEPS = $(foreach dir, $(INCDIR), $(wildcard $(dir)/*.h))
SRC = $(foreach dir, $(SRCDIR), $(wildcard $(dir)/*.c))
OBJ = $(patsubst %.c, $(OBJDIR)/%.o,   $(notdir $(SRC)))

LFLAGS= -L./otherprj
LIBS = -lhellomake

.PHONY: clean printrule make_obj_dir all build_other_prj

all: make_obj_dir build_other_prj hellomake

make_obj_dir: 
	@mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: $(SRCDIR)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LFLAGS) $(LIBS)

build_other_prj:
ifeq ($(BUILD_OTHER_PRJ),1)
	echo
	echo "Compiling other project as well."
	echo
	make -C ./otherprj lib
endif

printrule:
	echo $(DEPS)
	echo
	echo $(SRC)
	echo
	echo $(OBJ)
	echo

clean: 
	rm -rf $(OBJDIR)
	rm ./otherprj/*.o
	rm hellomake

