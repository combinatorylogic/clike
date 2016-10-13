#include "../tools/templates.h"

typedef int32 int;

template <int N, typename A> inline A f(A i) {
      return i * (A)N;
}

template <int N> void fillArray() {
   int a[N];
   for (int i = 0; i < N; i++) a[i] = 0;
}

template <typename A> void testfun(A *i, A x) {
  *i = x;
}

// TODO:
/*
template <typename A> <with typename B = typeof(::inst A.x)> B testfun1(A *i) {
   return i->x;
}
*/

int test(int a)
{
   int x;
   testfun<>(&x, 2);
   fillArray<10>();
   fillArray<20>();
   return f<2, ::type int>(2*a) + 
             f<2>(a) + f<4>(2);
}

int32 printf(int8 *format, ...);

int main()
{
   printf("D=%d\n", test(2));
   return -1;
}