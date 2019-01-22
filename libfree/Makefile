include ../Make.defines

all: $(LIBFREE_OBJS)
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


