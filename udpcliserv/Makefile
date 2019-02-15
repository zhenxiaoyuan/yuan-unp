include ../Make.defines

PROGS = udpserv01 udpcli01 udpcli02

all: $(PROGS)

install:
	@echo install-udpcliserv is unfinished

test:
	@echo test-udpcliserv is unfinished

udpserv01:	udpserv01.o
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)

udpcli01:	udpcli01.o
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)

udpcli02:	udpcli01.o dgcliaddr.o
	$(CC) $(CFLAGS) -o $@ $? $(LIBS)

.PHONY: all install test clean

clean:
	rm *.o
	rm $(PROGS)
