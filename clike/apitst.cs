using System;
using Meta.Scripting;

class ApiTest {

  public static void Main(string[] args)
  {
    // A generic MBase library initialisation
    Meta.Scripting.Runtime.iRuntime();
    CLikeCore.InitDLL.init();

    CLike.set_debuglevel(4);

    // Clike environment initialisation
    var env = CLike.init_module("mtest");

    // Defining a familiar signature
    CLike.compile(env, "int32 printf(int8 *format, ...);");

    // Not a C thing, actually - defining an MBase function that invokes C functions
    CLike.compile(env, "##function invoke_2(ptr,a,b) {(llvm_make_invoker(t_Int32,t_Int32,t_Int32))(ptr,a,b)}");

    CLike.compile(env, "int32 adder_inner(int32 x, int32 y) { return x*y + x*x; }");

    // And now finally a C function, which is going to be JITed immediately
    CLike.compile(env, "__stdcall int32 add(int32 x, int32 y) { printf(\"arg1=%d arg2=%d\\n\",x,y); return adder_inner(x,y); }");

    // This pointer points to a JIT-compiled entry
    var ptr = CLike.getptr(env, "add");

    // A generic MBase function invocation
    object res = 
      Meta.Scripting.Runtime.apply(Meta.Scripting.Symbol.make("invoke_2"),
				   new object[] { ptr,  22, 33 } );

    // Displaying some results
    Console.WriteLine("ptr=" + ptr);
    Console.WriteLine("res=" + res);

    // Dumping LLVM bitcode file for a reference
    CLike.save(env, "out.bc");
  }
}