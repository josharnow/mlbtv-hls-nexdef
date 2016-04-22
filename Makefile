CFLAGS=-O2
LIBS=-lm -lcrypto -lpthread -lconfig -lcurl
OBJECTS=mlb.o utils.o output.o

PREFIX?=/usr/local
BINDIR?=$(PREFIX)/bin

all: mlbhls

mlbhls: $(OBJECTS)
	 $(CC) $(CFLAGS) $(OBJECTS) $(LIBS) -o mlbhls

install: mlbhls
	mkdir -p $(DESTDIR)$(BINDIR)
	cp mlbhls $(DESTDIR)$(BINDIR)/

clean:
	rm -f *.o mlbhls

