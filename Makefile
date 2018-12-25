CC = clang
CFLAGS = -I. -g -O0 -Wall
MAKE = make

LIBS = libunp.a

RANLIB = ranlib

DIRS = lib tcpcliserv
# the sets of directories to do various things in
BUILDDIRS = $(DIRS:%=build-%)
INSTALLDIRS = $(DIRS:%=install-%)
CLEANDIRS = $(DIRS:%=clean-%)
TESTDIRS = $(DIRS:%=clean-%)

all: $(BUILDDIRS)
$(DIRS): $(BUILDDIRS)
$(BUILDDIRS):
	$(MAKE) -C $(@:build-%=%)

# the tcpcliserv need the libraries in lib built first
build-tcpcliserv: build-lib

install: $(INSTALLDIRS) all
$(INSTALLDIRS):
	$(MAKE) -C $(@:install-%=%) install

test: $(TESTDIRS) all
$(TESTDIRS):
	$(MAKE) -C $(@:test-%=%) test

clean: $(CLEANDIRS)
$(CLEANDIRS):
	$(MAKE) -C $(@:clean-%=%) clean



include lib/Makefile
include tcpcliserv/Makefile

all:	libs ${TCPCLISERV}



clean:
	rm *.o
	rm *.a
