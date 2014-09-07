#include <stdio.h>

typedef void* net_ptr;
typedef net_ptr (*net_fun)(...);
typedef int net_handle;
typedef unsigned char byte;
typedef byte* byte_ptr;
typedef long long bword;

typedef struct
{
} net_vtab_entry_t;

bword net_get_val(byte_ptr loc, int wsize)
{
  bword val = 0;
  // reversed order
  for(int b=wsize-1; b>=0; b--)
    val = (val << 8) | loc[b];
  return val;
}

extern "C" void net_dump(net_ptr loc, int wsize, int nwords, int ncols)
{
  byte_ptr loc1 = (byte_ptr)loc;
  for(int i=0; i<nwords; i++)
    {
      if ( i % ncols == (ncols-1) )
	   printf("\n%lx:%2d", &loc1[i*wsize],(i*wsize));
      bword val = net_get_val(&loc1[i*wsize], wsize);
      printf("0x");
      for(int b=wsize-1; b>=0; b--)
	printf("%x", ((byte_ptr)&val)[b]);
    }
}


