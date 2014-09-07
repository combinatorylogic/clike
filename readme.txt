 CLike 0.1 is a low-level programming language with an extensible syntax 
based on C. It is supposed to be used as both a front-end and a target for
MBase/PFront, and can be embedded as a JIT engine into .net applications.

 CLike and llvm-wrapper are distributed under the terms of the Q Public License
version 1.0 with a change to choice of law (see license.txt).

 CLike targets LLVM, tested with LLVM 3.5. Since the old JIT was replaced with
MCJIT it is no longer capable of adding new declarations to the module after
a function from that module was executed. Some multi-module solution is possible
but not implemented yet.

 LLVM bindings for MBase are included, see llvm-wrapper/*

 Building:

 The only supported environment currently is Linux on x86 or x86_64, 
 with Mono > 3.0.

 Python 2.7, Clang (3.5) and cindex are required for building llvm-wrapper
 Make sure PYTHONPATH points to $CLANG_SOURCE/bindings/python.

 pdflatex and graphviz are required for building documentation.

 Clike code layout is following:

clike.hl               : Binds the core functionality together
clike-standalone.hl    : A version that does not need LLVM bindings
clike-ast.hl           : Internal CLike AST definitions
clike-env.hl           : Compiler environment support
clike-types-utils.hl   :
clike-types.hl         : Types propagation pass + typed macro expansion
clike-compiler.hl      : Function bodies compilation passes
clike-expand.hl        : Post-parsing expansion and a simple macro expander
clike-compiler-top.hl  : Top level expressions compiler and all compiler passes

clike-parser.hl        : A standard parser for CLike
clike-utils.hl         : Additional utilities, not used directly by a compiler
clike-api.hl           : .NET api to CLike functionality

clike-lib.hl           : To build CLikeCore.dll
clike-llvm.hl          : All the LLVM-depending functionality

clike-cc.hl            : A simple command-line compiler
clike-cc-standalone.hl : A simple command-line compiler, no-LLVM version


