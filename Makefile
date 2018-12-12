CC = clang
CFLAGS = -I. -g -O2 -Wall
LIBS = libunp.a

RANLIB = ranlib
LIBUNP_NAME = libunp.a

LIB_OBJS = error.o str_echo.o wrapsock.o wrapunix.o writen.o

PROGS = tcpserv01

all:	${PROGS}

install-lib:	${LIB_OBJS}
		ar rv ${LIBUNP_NAME} $?
		${RANLIB} ${LIBUNP_NAME}

tcpserv01:	tcpserv01.o
	${CC} ${CFLAGS} -o $@ $< ${LIBS}

clean:
	rm *.o
	rm *.a
