# Makefile

LEX = flex
RMR = rm -rf
RM = rm -f
CC = gcc

VPATH = 
CFLAGS = -Wall -g -DDEBUG 
INCLUDE = 
LDFLAGS = -lfl
LDPATH = 

PROGS = ex2.20 ex2.21 ex2.22 ex2.23

.PHONY: all
all: $(PROGS)
	@echo "build OK!"

.PHONY: clean
clean:
	$(RM) $(PROGS) *.o *.obj *.exe *.l.c
	@echo "clean OK!"

%.l.c:%.l
	$(LEX) -o $@ $<

$(PROGS):%:%.l.c
	$(CC) -o $@ $^ $(LDFLAGS) $(LDPATH)

