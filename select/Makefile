include ../Make.defines

PROGS = tcpcli_select tcpserv_select

all: $(PROGS)

install:
	@echo install-tcpcliserv is unfinished

test:
	@echo test-tcpcliserv is unfinished

tcpcli_select:	tcpcli01.o strcli_select02.o
	$(CC) $(CFLAGS) -o $@ $? $(LIBS)

tcpserv_select:	tcpservselect01.o
	$(CC) $(CFLAGS) -o $@ $? $(LIBS)

.PHONY: all install test clean

clean:
	rm *.o
	rm $(PROGS)
