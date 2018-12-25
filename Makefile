CC = clang
CFLAGS = -I. -g -O0 -Wall
LIBS = libunp.a

RANLIB = ranlib

LIB_OBJS = error.o readline.o str_cli.o str_echo.o wrapsock.o wrapunix.o wrapstdio.o wraplib.o writen.o signal.o

PROGS = tcpserv01 tcpserv04 tcpcli01 tcpcli04

all:	libs ${PROGS}

libs:	${LIB_OBJS}
		ar rv libunp.a $?
		${RANLIB} libunp.a

tcpserv01:	tcpserv01.o
	${CC} ${CFLAGS} -o $@ $< ${LIBS}

tcpcli01:	tcpcli01.o
	${CC} ${CFLAGS} -o $@ $< ${LIBS}

tcpserv04:	tcpserv04.o sigchldwaitpid.o
	${CC} ${CFLAGS} -o $@ $? ${LIBS}

tcpcli04:	tcpcli04.o
	${CC} ${CFLAGS} -o $@ $< ${LIBS}

clean:
	rm *.o
	rm *.a
