#include "../tools/decltype.h"

typedef struct _teststr {
        int32 x;
} teststr;

int32 test(teststr *z) {
        
        typeof(z->x) x = z*z;
        typeof(x) y = x+x;
        return y;
}

int32 printf(int8 *format, ...);

int32 main()
{
        teststr a;
        a.x = 2;
        printf("D=%d\n", &a);
        return -1;
}


