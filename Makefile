CC = gcc
CFLAGS  = -g -Wall
RM = rm -rf

default: mirr

mirr:  mirr.o tree.o utils.o
	$(CC) $(CFLAGS) -o executables/mirr mirr.o tree.o utils.o

mirr.o:  mirr.c
	$(CC) $(CFLAGS) -c mirr.c

tree.o:  tree/tree.c
	$(CC) $(CFLAGS) -c tree/tree.c

utils.o:  utils/utils.c
	$(CC) $(CFLAGS) -c utils/utils.c


clean: 
	$(RM) mirr *.o executables/*