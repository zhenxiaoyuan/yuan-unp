include ../Make.defines

PROGS = strclinonb

all: $(PROGS)

install:
	@echo install-nonblock is unfinished

test:
	@echo test-nonblock is unfinished

strclinonb:	strclinonb.o tcpcli02.o
	$(CC) $(CFLAGS) -o $@ $? $(LIBS)

# compile web need to finish the chapter 11
web: web.o home_page.o start_connect.o write_get_cmd.o
	$(CC) $(CFLAGS) -o $@ $? $(LIBS)

.PHONY: all install test clean

clean:
	rm *.o
	rm $(PROGS)
