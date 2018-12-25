
LIB_OBJS = error.o readline.o str_cli.o str_echo.o wrapsock.o wrapunix.o wrapstdio.o wraplib.o writen.o signal.o
libs:	${LIB_OBJS}
		@cd lib/
		echo "haha"
		ar rv libunp.a $<
		${RANLIB} libunp.a
