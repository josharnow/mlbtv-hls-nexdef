CFLAGS=-O2
LIBS=-lm -lcrypto -lpthread -lconfig -lcurl
OBJECTS=mlb.o utils.o output.o

all: mlbhls

mlbhls: $(OBJECTS)
	 $(CC) $(CFLAGS) $(OBJECTS) $(LIBS) -o mlbhls

clean:
	rm -f *.o mlbhls

