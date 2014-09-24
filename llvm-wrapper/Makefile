PFRONT = pfront

LLVMCONF=llvm-config
LLVMVER=$(shell $(LLVMCONF) --version)

PWD = $(shell pwd)
LLVMLIBS = $(shell $(LLVMCONF) --libs)
LLVMINC = $(shell $(LLVMCONF) --includedir)
LLVMALL = $(shell $(LLVMCONF) --ldflags) $(LLVMLIBS)

CXX := clang++
CC := clang
PYTHON := python

MORELIBS := -lm

CINDEXP := $(shell echo "import clang.cindex\nprint 'OK'" | $(PYTHON) 2> /dev/null)


all: conf dll

conf:  lib/llvm-bindings.al

ifeq (X$(CINDEXP), XOK)
LSTDEPS :=
else
LSTDEPS := llvm-bindings-lst-$(LLVMVER).al
endif

llvm-bindings-lst.al: $(LSTDEPS)
ifeq (X$(CINDEXP), XOK)
	$(CC) -E $(shell $(LLVMCONF) --cppflags) ./llvm-stub.h -I $(LLVMINC) > llvm-bindings-E.c
	$(PYTHON) ./rebuild.py -std=c99 llvm-bindings-E.c > llvm-bindings-lst.al
else
	cp llvm-bindings-lst-$(LLVMVER).al llvm-bindings-lst.al
endif

lib-conf.hl:
	echo "define llvm_libname = \"LLVM.so\";" > lib-conf.hl

lib/llvm-bindings.al: llvm-bindings-lst.al
	mkdir -p lib
	${PFRONT} ./tools/emit-mbase.hl > lib/llvm-bindings.al

lib/llvm-wrapper.cpp: llvm-bindings-lst.al
	mkdir -p lib
	${PFRONT} ./tools/emit-cpp.hl > lib/llvm-wrapper.cpp

lib/llvm-wrapper.h: llvm-bindings-lst.al
	mkdir -p lib
	${PFRONT} ./tools/emit-header.hl > lib/llvm-wrapper.h

dll: conf lib-conf.hl lib/llvm-wrapper.cpp lib/llvm-wrapper.h lib/llvm-bindings.al
	echo $(LLVMPFX)
	echo $(LLVMALL)
	$(CXX) -shared -fPIC $(shell $(LLVMCONF) --cxxflags) -o lib/LLVM.so natnet2.c llvm-lib.cpp lib/llvm-wrapper.cpp $(LLVMALL) $(MORELIBS)

clean:
	rm -rf lib/*
