LIB_OBJS = error.o readline.o str_cli.o str_echo.o wrapsock.o wrapunix.o wrapstdio.o wraplib.o writen.o signal.o

RANLIB = ranlib

all: $(LIB_OBJS)
	ar rv libunp.a $?
	$(RANLIB) libunp.a

install:
	@echo install-lib is unfinished

test:
	@echo test-lib is unfinished

.PHONY: all install test clean

clean:
	rm *.o
	rm libunp.a


