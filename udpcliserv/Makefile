include ../Make.defines

PROGS = udpserv01 udpservselect01 udpcli01 udpcli02 udpcli03

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

udpcli03:	udpcli01.o dgcliconnect.o
	$(CC) $(CFLAGS) -o $@ $? $(LIBS)

udpservselect01:	udpservselect01.o sigchldwaitpid.o
	$(CC) $(CFLAGS) -o $@ $? $(LIBS)

.PHONY: all install test clean

clean:
	rm *.o
	rm $(PROGS)
