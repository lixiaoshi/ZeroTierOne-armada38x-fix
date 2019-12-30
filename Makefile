# Common makefile -- loads make rules for each platform

OSTYPE=$(shell uname -s)

ifeq ($(OSTYPE),Darwin)
	include make-mac.mk
endif

# I'm not fixing the bug, just want to buid a working binary
ifeq ($(OSTYPE),Linux)
	include make-linux-armada38x.mk
endif

ifeq ($(OSTYPE),FreeBSD)
	CC=clang
	CXX=clang++
	ZT_BUILD_PLATFORM=7
	include make-bsd.mk
endif
ifeq ($(OSTYPE),OpenBSD)
	CC=egcc
	CXX=eg++
	ZT_BUILD_PLATFORM=9
	include make-bsd.mk
endif

ifeq ($(OSTYPE),NetBSD)
	include make-netbsd.mk
endif
