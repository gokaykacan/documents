CC=gcc
INCDIR=./include
INCDIR+=./include2
INCDIR+=./include3
INCDIR+=./otherprj

INCLUDE = $(foreach dir,$(INCDIR), -I$(dir))
CFLAGS=$(INCLUDE)

SRCDIR=./src
OBJDIR=./obj

BUILD_OTHER_PRJ=1


