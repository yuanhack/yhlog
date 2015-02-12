CC=gcc
SO_MACRO= -shared -fpic
DEST=libyhlog.so
SRC=yhlog.c yhlog.h

ALL: $(DEST) test

$(DEST): $(SRC)
	$(CC) $(SO_MACRO) -o $@ $< && mkdir -p lib && cp $(DEST) $(SRC) lib

test: main.c
	$(CC) -Wl,-rpath,. -L. -lyhlog main.c -o test

clean:
	rm -rf $(DEST) test lib


