PFRONT := pfront
MONO := mono
LLI := lli
PWD = $(shell pwd)

all: clikecc.exe clikescc.exe doc/doc.pdf

llvm-wrapper/lib/LLVM.so:
	$(MAKE) -C llvm-wrapper

-include MBaseLLVM.dll.d
MBaseLLVM.dll: llvm-wrapper/lib/LLVM.so
	$(PFRONT) /d MBaseLLVM ./llvm-wrapper/bindings/lib.hl
	cp MBaseLLVM.dll clike/

-include CLikeCore.dll.d
CLikeCore.dll: MBaseLLVM.dll
	$(PFRONT) /d CLikeCore ./clike/clike-lib.hl
	cp CLikeCore.dll clike/

-include CLikeSCore.dll.d
CLikeSCore.dll:
	$(PFRONT) /d CLikeSCore ./clike/clike-standalone.hl
	cp CLikeSCore.dll clike/

-include clikecc.exe.d
clikecc.exe: CLikeCore.dll
	$(PFRONT) /c clikecc ./clike/clike-cc.hl

-include clikescc.exe.d
clikescc.exe: CLikeSCore.dll
	$(PFRONT) /c clikescc ./clike/clike-cc-standalone.hl

doc/doc.pdf: clikescc.exe
	dot -Tps doc/clike.dot > doc/clike.eps
	epstopdf doc/clike.eps -o doc/clike.pdf
	cd doc; pdflatex doc.tex
	cd doc; pdflatex doc.tex

test: clikecc.exe
	LD_LIBRARY_PATH=$(PWD)/llvm-wrapper/lib/:$(LD_LIBRARY_PATH) $(MONO) clikecc.exe tests/tests.c > tests/tests.out
	diff tests/tests.out tests/tests.ref
	LD_LIBRARY_PATH=$(PWD)/llvm-wrapper/lib/:$(LD_LIBRARY_PATH) $(MONO) clikecc.exe /out syntax tests/syntax.c
	$(LLI) syntax.o > tests/syntax.out
	diff tests/syntax.out tests/syntax.ref
