
TCPCLISERV = tcpserv01 tcpserv04 tcpcli01 tcpcli04

tcpserv01:	tcpserv01.o
	${CC} ${CFLAGS} -o $@ $< ${LIBS}

tcpcli01:	tcpcli01.o
	${CC} ${CFLAGS} -o $@ $< ${LIBS}

tcpserv04:	tcpserv04.o sigchldwaitpid.o
	${CC} ${CFLAGS} -o $@ $? ${LIBS}

tcpcli04:	tcpcli04.o
	${CC} ${CFLAGS} -o $@ $< ${LIBS}
