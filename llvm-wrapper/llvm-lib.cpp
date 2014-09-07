#include "llvm-wrapper-base.h"
#include "llvm-c/Analysis.h"
#include "llvm-c/BitReader.h"
#include "llvm-c/BitWriter.h"
#include "llvm-c/Core.h"
#include "llvm-c/ExecutionEngine.h"
#include "llvm-c/LinkTimeOptimizer.h"
#include "llvm-c/Target.h"
#include "llvm-c/Transforms/IPO.h"
#include "llvm-c/Transforms/Scalar.h"
#include <stdarg.h>
#include <stdio.h>
#include "llvm/ExecutionEngine/ExecutionEngine.h"

extern "C" DLL_EXPORT int _LLVMInitializeNativeTarget();
extern "C" DLL_EXPORT int _LLVMInitializeNativeAsmPrinter();
extern "C" DLL_EXPORT void _LLVMLinkInInterpreter() { LLVMLinkInInterpreter(); }
extern "C" DLL_EXPORT void _LLVMLinkInMCJIT() { LLVMLinkInMCJIT(); }

extern "C" DLL_EXPORT LLVMModuleRef _LLVMModuleCreateWithName(const char *ModuleID) { return LLVMModuleCreateWithName(ModuleID); }
extern "C" DLL_EXPORT LLVMExecutionEngineRef _LLVMCreateExecutionEngine(LLVMModuleProviderRef MP)
{
	char* error;
	LLVMExecutionEngineRef EE = NULL;
	LLVMCreateExecutionEngine(&EE,MP,&error);
	return EE;
}
extern "C" DLL_EXPORT LLVMGenericValueRef _LLVMRunFunction(LLVMExecutionEngineRef EE, LLVMValueRef F)
{                                  
	LLVMGenericValueRef t;
	return LLVMRunFunction(EE, F,0, &t);
}

extern "C" DLL_EXPORT int _InitMCJIT(LLVMExecutionEngineRef EE, LLVMModuleRef M) {
  LLVMMCJITCompilerOptions Opts;
  LLVMInitializeMCJITCompilerOptions(&Opts, sizeof(Opts));
  Opts.OptLevel = 2;
  LLVMCreateMCJITCompilerForModule(&EE, M, &Opts, sizeof(Opts), 0);
  return 0;
}


extern "C" DLL_EXPORT void * _LLVMGetGlobalValueAddress(LLVMExecutionEngineRef EE, LLVMValueRef F) {
  llvm::unwrap(EE)->finalizeObject();

  return (void *)(llvm::unwrap(EE)->getGlobalValueAddress(llvm::unwrap(F)->getName()));
}

int _LLVMInitializeNativeTarget()
{
    LLVMInitializeNativeTarget(); 
    return 0;
    
}

int _LLVMInitializeNativeAsmPrinter()
{
    LLVMInitializeNativeAsmPrinter(); 
    return 0;
    
}

extern "C" DLL_EXPORT int _InvokeFunc0(int (*ptr)())
{
	return ptr();
}

extern "C" DLL_EXPORT int _InvokeFunc1(int (*ptr)(int), int a)
{
  if (NULL == ptr) {
    printf("NULL WTF\n");
    return 0;
  }
	return ptr(a);
}

extern "C" DLL_EXPORT int _InvokeFunc1p(int (*ptr)(void *), void *a)
{
	return ptr(a);
}


extern "C" DLL_EXPORT int _InvokeFunc2(int (*ptr)(int,int), int a, int b)
{
    return ptr(a,b);
}

extern "C" DLL_EXPORT int _InvokeFunc2p(int (*ptr)(void*, void*), void* a, void* b)
{
    return ptr(a,b);
}

extern "C" DLL_EXPORT int invoke_piii(int (*ptr)(void*, int,int,int), void* p, int a, int b, int c)
{
    return ptr(p, a,b,c);
}

extern "C" DLL_EXPORT int invoke_pp(int (*ptr)(void*, void*), void* a, void* b)
{
    return ptr(a,b);
}

// I don't know how to do this portably
extern "C" DLL_EXPORT int InvokeNativeFunction(int (*ptr)(), int nargs, void** args)
{
    return ptr();
}


extern "C" DLL_EXPORT void print_array(int* arr)
{
    printf("Array is:\n");
    for(int i=0; i<3; i++)
    {
	printf("%d ", arr[i]);
    }
    printf("\n");
}
