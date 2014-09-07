#!/usr/bin/env python


import sys
import clang.cindex

def sanitise(tp):
    return tp.replace("[]","*")

def find_arguments(args):
    NNN=0
    for a in args:
        argnm = a.spelling
        if argnm=="":
            argnm = 'A'+str(NNN)
            NNN = NNN + 1
        print '       ("%s" "%s")' % (argnm, sanitise(a.type.spelling))

def find_functions(node):
    if node.kind == clang.cindex.CursorKind.FUNCTION_DECL:
        if node.spelling.startswith('LLVM'):
            print '   ("%s" "%s" (' % (node.spelling, sanitise(node.result_type.spelling))
            find_arguments(node.get_arguments())
            print '   ))'
    else:
        for c in node.get_children():
            find_functions(c)

def parse_functions():
    index = clang.cindex.Index.create()
    tu = index.parse(None, sys.argv)
    print '(define llvm-bindings-lst (quote ('
    find_functions(tu.cursor)
    print ')))'


#-----------------------

def find_enum_consts(c):
    if c.kind == clang.cindex.CursorKind.ENUM_CONSTANT_DECL:
        print '       ("%s" %d)' % (c.spelling, c.enum_value)

def find_enums_inner(name, node):
    if node.kind == clang.cindex.CursorKind.ENUM_DECL:
        print '   ("%s" "%s" (' % (name, sanitise(node.enum_type.spelling))
        for c in node.get_children():
            find_enum_consts(c)
        print '   ))'

def find_enums(node):            
    if node.kind == clang.cindex.CursorKind.TYPEDEF_DECL:
        if node.spelling.startswith('LLVM'):
            for c in node.get_children():
                find_enums_inner(node.spelling, c)
    else:
        for c in node.get_children():
            find_enums(c)
            

def parse_enums():
    index = clang.cindex.Index.create()
    tu = index.parse(None, sys.argv)
    print '(define llvm-enums-lst (quote ('
    find_enums(tu.cursor)
    print ')))'
    

parse_enums()
parse_functions()
