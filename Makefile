CC=gcc

SDIR=src/
ODIR=obj/
IDIR=include/

_SRC=main.c prime.c
_OBJ=main.o prime.o
_DEPS=prime.h

# -lm math linkage lib for some unreferenced distributions
CFLAGS=-I$(IDIR) -lm

OBJ=$(patsubst %, $(ODIR)%, $(_OBJ))
SRC=$(patsubst %, $(SDIR)%, $(_SRC))
DEPS=$(patsubst %, $(IDIR)%, $(_DEPS))

$(ODIR)%.o: $(SDIR)%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

prime: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	$(RM) $(OBJ) prime
