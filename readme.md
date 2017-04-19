# CLike 0.1

 CLike 0.1 is a low-level programming language with an extensible syntax based on C. It is supposed to be used as both a front-end and a target for MBase/PFront, and can be embedded as a JIT engine into .net applications.

 CLike targets LLVM, tested with LLVM 3.5. Since the old JIT was replaced with MCJIT it is no longer capable of adding new declarations to the module after a function from that module was executed. Some multi-module solution is possible but not implemented yet.

 LLVM bindings for MBase are included, see llvm-wrapper/*

 CLike is implemented in PFront, a domain-specific language for compiler construction.

## Motivational example

 C is a very low level language, without any built-in means for extensibility. C++ adds quite a few, but yet, it won't be easy to implement something like string interpolation syntax using only C++ language features. And C is a statically typed language, which makes the usual tricks barely possible here. Interpolated strings must embed typed expressions and act accordingly:

```C
void test(int a, float b) {
  puts(£"A = $(a), B=$(b), A+B=$(a+b)\n");
}
```

 CLike was designed to expore the design space of extensible syntax languages and a Lisp-style metaprogramming in a statically typed environment. See an example introducing this kind of syntax extension in `tests/syntax.c`

 It's easy to extend the language with the convenient high level features, like `foreach`, `reduce`, set comprehensions, and even semantically loaded things like lambda expressions, LINQ-style embedded queries, C++-style templates. No need to alter the core language compiler for any of these, it's all possible to implement as libraries on top of the existing language.

 More complicated things are also possible, like embedded, efficiently compiled regular expressions, type-safe binary protocol handlers, BNF parsers, and even embedded high level languages like Prolog, all compiled seamlessly alongside with the core CLike language, having an access to all the internal knowledge of the compiler, including types, lexical scope, global declarations, LLVM context, etc.

## What is it for?

 C is an ideal target for compiling higher level languages. It's got optimising compilers, it is low level enough to handle a very wide variety of semantics. But often a semantic gap between a high level language and C is huge, and translation is not that trivial and straightforward. CLike can bridge this gap in the very same way as MBase addresses the eDSL design in general - by introducing rich metaprogamming capabilities and comprehensive reflection.

 This way languages can be translated incrementally, via building new semantic features on top of an existing target language, instead of a classic compilation pipeline. Many interesting tricks are possible when growing languages this way, from mixing different languages together to allowing transparent fallbacks to the low level where it is needed. See the PFront language in MBase as an extreme example of this technique.

## Building

 [MBase 1.0.2 is required](https://github.com/combinatorylogic/mbase). Make sure MBase DLLs are installed into the GAC.

 The only supported environment currently is Linux on x86 or x86_64,  with Mono > 3.0.

 Python 2.7, Clang (3.5) and cindex are required for building llvm-wrapper. Make sure `PYTHONPATH` points to `$CLANG_SOURCE/bindings/python`. If Python bindings are not available, a cached version will be used (currently provided for LLVM 3.5 and LLVM 3.6.0svn).

 pdflatex and graphviz are required for building documentation.

 Linux on ARM is not currently supported. If you want to try it anyway, make sure LLVM libraries are built with -fPIC.

## Clike code layout

File                   | Description
---------------------- | ------------------------------------------------
                       |
clike.hl               | Binds the core functionality together
clike-standalone.hl    | A version that does not need LLVM bindings
clike-ast.hl           | Internal CLike AST definitions
clike-env.hl           | Compiler environment support
clike-types-utils.hl   |
clike-types.hl         | Types propagation pass + typed macro expansion
clike-compiler.hl      | Function bodies compilation passes
clike-expand.hl        | Post-parsing expansion and a simple macro expander
clike-compiler-top.hl  | Top level expressions compiler and all compiler passes
                       |
clike-parser.hl        | A standard parser for CLike
clike-utils.hl         | Additional utilities, not used directly by a compiler
clike-api.hl           | .NET api to CLike functionality
                       |
clike-lib.hl           | To build CLikeCore.dll
clike-llvm.hl          | All the LLVM-depending functionality
                       |
clike-cc.hl            | A simple command-line compiler
clike-cc-standalone.hl | A simple command-line compiler, no-LLVM version


