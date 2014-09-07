PFRONT = pfront

LLVMCONF=llvm-config

PWD = $(shell pwd)
LLVMLIBS = $(shell $(LLVMCONF) --libs)
LLVMINC = $(shell $(LLVMCONF) --includedir)
LLVMALL = $(shell $(LLVMCONF) --ldflags) $(LLVMLIBS)

CXX := clang++
CC := clang

all: conf dll

conf:  lib/llvm-bindings.al

lib/llvm-bindings.al:
	mkdir -p lib
	echo "define llvm_libname = \"LLVM.so\";" > lib-conf.hl
	$(CC) -E $(shell $(LLVMCONF) --cppflags) ./llvm-stub.h -I $(LLVMINC) > llvm-bindings-E.c
	python ./rebuild.py -std=c99 llvm-bindings-E.c > llvm-bindings-lst.al
	${PFRONT} ./tools/emit-header.hl > lib/llvm-wrapper.h
	${PFRONT} ./tools/emit-cpp.hl > lib/llvm-wrapper.cpp
	${PFRONT} ./tools/emit-mbase.hl > lib/llvm-bindings.al

dll: conf
	echo $(LLVMPFX)
	echo $(LLVMALL)
	$(CXX) -shared -fPIC $(shell $(LLVMCONF) --cxxflags) -o lib/LLVM.so natnet2.c llvm-lib.cpp lib/llvm-wrapper.cpp $(LLVMALL)

clean:
	rm -rf lib/*
