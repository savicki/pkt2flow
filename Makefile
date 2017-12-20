LIBS = -lpcap

SRC=$(wildcard *.c)
NAME=pkt2flow

all: $(SRC)
	gcc -o $(NAME) $^ $(CFLAGS) $(LIBS)

clean:
	rm -rf $(wildcard *.o) *.out $(NAME)