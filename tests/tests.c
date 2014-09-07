/* A sort of a large testsuite */
/* All the output goes to stdout */


typedef int32 int;
typedef int8 char;

void * malloc(int32);
void free(void *);

int puts(char[]);
void fflush(int);

int printf(int8 *format, ...);

##define tests = collector(add,get) {add:get}

##syntax of pfclike in cltop, start: ' "$" test [clqident]:nm "{" eslist<[clcode]>:es "}" '
{
  name = %Sm<<("testfun_",nm);
  (car(tests))(name);
  ss = 'const'('string'(%S<<("\nTest: ",nm,"\n")));
  intr = .clike-expr `printf( \ss\ )`;
  flush = .clike-expr `fflush(0)`;
  ess = 'begin'(@es);
  return .clike
    `void \name\() { ::expr \intr\; ::code \ess\; ::expr \flush\;}`;
}

##syntax of pfclike in cltop, start: ' "$" disable test [clqident]:nm "{" eslist<[clcode]>:es "}" '
{
  name = %Sm<<("testfun_",nm);
  ss = 'const'('string'(%S<<("\nTest: ",nm,"\n")));
  intr = .clike-expr `printf( \ss\ )`;
  flush = .clike-expr `fflush(0)`;
  ess = 'begin'(@es);
  return .clike
    `void \name\() { ::expr \intr\; ::code \ess\; ::expr \flush\;}`;
}

##syntax of pfclike in clcode, start: ' "$" allthetests '
{
  rt = (cdr(tests))();
  return 'begin'(@map rt do 'expr'('call'([],rt)));
}


clike macro TypeOf {
 syntax : '"@" TypeOf "(" [clexpr]:e ")"';
 typing : 'ptr'('integer'('i8'));
 expand as: { 'const'('string'(%S<<(typeof_e))) }
}

/////////////////////////////////////////////

$test ts_1
{
  int a = 2;
  int b = 2;
  printf("4=%d\n",a+b);
}

$test ts_2
{
  int a = 2;
  int b = a/2+1;
  printf("4=%d\n",a*b);
}

$test ts_3
{
  int c = 1;
  for(int i = 1; i<= 5; i++) c*=i;
  printf("5!=%d\n", c);
}

$test ts_4
{
  int abc[10];
  for(int i = 0; i<10; i++) abc[i] = i;
  int c = 0; 
  for(int j = 0; j<10; j++) c+=abc[j];
  printf("sum[0..9] = %d\n",c);
}

$test ts_5
{
  int abc[11];
  for(int i = 0; i<10; i++) abc[i] = i+15;
  int *cde;
  cde = &(abc[0]);
  int c = 0;
  printf("(abc==cde)=%d\n",((int*)abc)==cde);
  for(int j = 0; j<10; j++) c+= (*(cde+j));
  printf("sum[A..B] = %d\n",c);
}

$test ts_6
{
  char c;
  int i = 32;
  c = i;
  printf("Space is '%c'\n",c);
}

$test ts_7
{
  int cnt = 0;
  for(int i = 0;i<10; i++) 
    for(int j = 0; j<10; j++) cnt++;
  printf("100=%d\n",cnt);
}

$test ts_8
{
  int abc = 1;
  int cde = 2;
  printf("1=%d, 3=%d\n",abc++,++cde);
  printf("2=%d\n", abc);
}

$test ts_9
{
  int abc = 1;
  abc*=2;
  abc+=2;
  abc*=3;
  abc/=2;
  printf("6=%d\n", abc);
}

int strlen(char s[])
{
  int l;
  for(l=0;s[l];l++);
  return l;
}

void reverse(char s[])
{
    int i, j;
    char c;

    for (i = 0, j = strlen(s)-1; i<j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

char *strcpy(char *DST, char *SRC);


$test ts_10
{
  char cstr[] = "reverse this string please";
  char *str = (char *)malloc(strlen(cstr));
  strcpy(str, cstr);
  reverse(str);
  printf("Rev: '%s'\n", str);
}

int add(int a, int b)
{
  return a+b;
}

$test ts_11
{
  int r = add(add(2,2),add(3,3));
  printf("10=%d\n", r);
}

$test ts_12
{
  char *abc = (char*)malloc(20);
  char x[] = "Wow";
  char *cde = abc;
  for(int i=0;i<3;i++) {strcpy(cde, x);cde+=3;}
  cde[0]=0;
  printf("Str='%s'\n", abc);
}

$test ts_13
{
  int x=1;
  int *y = &x;
  int *z = y;
  *y++;
  *y*=2;

  *z = x*2;
  printf("8=%d\n",x);
}

$test ts_14
{
  char str[] = "test";
  char *c;
  c=str+2;
  printf("s = '%c','%c'\n", *c,*str);
}


$test ts_15
{
  char str[] = "test";
  char *str2 = (char*)malloc(20);
  strcpy(str2,str);
  str2[2] = 'X';
  printf("'%s'\n", str2);
}

$test ts_16
{
  char i = 10;
  char *p = &i;
  char *x = p;
  *x++;
  *x*=2;
  *x+=10;
  int n = i;
  printf("Space='%c' (%d)\n",i,n);
}

$test ts_17
{
  char a[5];
  a[0] = 1;
  a[1] = 2;
  a[2] = 3;
  int n = a[0]+a[1]+a[2];
  printf("6=%d\n",n);
}

$test ts_18
{
  char a[5];
  a[0] = 1;
  a[1] = 2;
  a[2] = 3;
  char *b = &(a[1]);
  *b++;
  int n = a[0]+a[1]+a[2];
  printf("7=%d\n",n);
}

$test ts_19
{
  int a[10];
  a[0] = 123456;
  char c = *((char *)a);
  printf("C = %d\n",(int)c);
}

$test ts_20
{
  int a[10];
  char *b;
  a[0] = 6789; a[1]= 9876;
  b = (char*) a;
  printf("[%d][%d][%d][%d]\n",(int)b[0],(int)b[1],(int)b[2],(int)b[3]);
  printf("[%d][%d][%d][%d]\n",(int)*b,(int)*(b+1),(int)*(b+2),(int)*(b+3));
}


$test ts_21
{
  lift{ int rfct(int n)
        {
         if(n>1) return n*rfct(n-1); else return 1;
        }
  }

  printf("rec 5!=%d\n", rfct(5));
}

$test ts_22
{
  lift { int glob_counter; }
  glob_counter = 500;
  glob_counter++;
 
  printf("501=%d\n", glob_counter);
}

$test ts_23
{
  glob_counter++;
 
  printf("502=%d\n", glob_counter);
}

$test ts_24
{
  lift { int __fun_1() { 
            
	    return inblock { lift { int __fun_2(int x)
	           {
		     return x*2;
		   }} (1); };
         }
  }
  printf("8=%d\n", __fun_2(__fun_2(2)));
}

$test ts_25
{
  int abc = 10;
  if(abc<5) goto L1;
  if(abc>5) goto L2;
  goto L3;

 L1:
  printf("L1\n"); goto E;
 L2:
  printf("L2\n"); goto E;
 L3:
  printf("L3\n"); goto E;

 E:
  printf("  ...\n");
}


$test ts_26
{
  char *str = "String String String";
  int *istr = (int*)malloc(sizeof(int)*strlen(str));
  for(int i = 0; str[i]; i++) istr[i] = str[i]; istr[i] = 0;
  for(int j = 0; istr[j]; j++) printf("%c",(char)istr[j]);
  printf("\n");
}

typedef struct _stest_27 {
  int a;
  int b[5];
} stest_27;

typedef struct _stest_27_1 {
  int a;
  struct _stest_27 b;
} stest_27_1;

void test27_print(struct _stest_27_1 *a)
{
  printf("a.a=%d, a.b.a = %d, a.b.b[3] = %d\n",
	 a->a, a->b.a, a->b.b[3]);
}

$test ts_27 
{
  struct _stest_27_1 a;
  a.a = 1;
  a.b.a = 2;
  a.b.b[3] = 3;
  test27_print(&a);
  printf("TypeOf(a.b)=%s\n",@TypeOf(a.b));
}

$test ts_28
{
  struct { char x; int y; } a;
  a.x = 99;
  a.y = 20;
  printf("1980 = %d, a.x = %d\n", a.x * a.y,(int)a.x);
}

$test ts_29
{
  double x = 2.5 * 3.6;
  printf("2.5*3.6 = %f\n", x);
}

$test ts_30
{
  printf("c=%d, i=%d, l=%d, f=%d, d=%d\n",(int)sizeof(char),(int)sizeof(int), (int)sizeof(int64), (int)sizeof(float),
	 (int)sizeof(double));
}

$test ts_31
{
  struct _xx {
    int x[5]; float y[10]; struct _xx *next;
  } a;

  struct _xx b;

  printf("t1=%s, t2=%s, t3=%s, t4=%s, t5=%s, t6=%s\n", @TypeOf(sizeof(int)), @TypeOf(2*2), @TypeOf(1.5+1), @TypeOf("abcd"), @TypeOf(a), @TypeOf(b));
}

// Unaligned access
$test ts_32
{
  char *abcd = "abcd";
  uint32 a = * ((uint32*)abcd);

  char *abcd1 = (char*)malloc(7);
  abcd1[0] = 'X';
  *((uint32*)(abcd1+1)) = a; // Definitely unaligned
  abcd1[5] = 0;
  printf("abcd=%s\n", abcd1);
}


typedef struct _t33s {
  int a[5];
  int b[5];
  float c;
} t33s;

t33s test_33_helper(int x, int y, int z)
{
  t33s s;
  s.a[4] = x;
  s.b[1] = y;
  s.c = (float)z;
  printf("A: 1,2,3 : %d,%d,%d\n",s.a[4],s.b[1],(int)s.c);
  return s;
}

$test ts_33
{
  printf("Size=%d\n", (int)sizeof(t33s));


  t33s s = test_33_helper(1,2,3);
  printf("B: 1,2,3 : %d,%d,%d\n",s.a[4],s.b[1],(int)s.c);
}

$test ts_34
{
  lift { typedef struct _sss { int x; int y; int z; } sss; };
  sss *X;
  sss Y;
  
  Y.x = 1; Y.y = 2; Y.z = 3;
  X = &Y;
  printf("%d,%d,%d\n", X->x, X->y, X->z);
}

$test ts_35
{
  var x = 2.5*10;
  var y = "What?";

  printf("==%s : %s\n", @TypeOf(x), @TypeOf(y));
}

$test ts_36
{
  int8 a = 1;
  int16 b = 2;
  uint16 c = 3;
  uint32 d = 4;
  int32 e = 5;
  int64 f = 10;
  var x = a+b+c+d+e+f+e+d+c+b+a;
  printf("Typeof(x) = %s\n", @TypeOf(x));
}

$test ts_37
{
  int c = 0;
  for(int i = 0; i<10; i++) 
    for(int j = 10; j; j--)
      for(int k = 0; k<20; k+=2)
	c++;
  printf("1000=%d\n",c);
}

$test ts_38
{
  int a = 10;
  void* b = (void *) &a;
  int *c = (int *) b;
  printf("10=%d\n", *c);
}

$test ts_39
{
  printf("%d,%d,%d,%d\n", 1>=1, 1>=0, 2<3,2<=2);
  printf("%d,%d,%d,%d\n", 1.1>=1.1, 1.0>=0, 2.5<3,2.1<=2);
}

$test ts_40
{
  int a = 25,b=0;
  for(;a>0;a--) b++;
  for(;a<25;a++) b++;
  printf("b=%d [50]\n", b);
}

$test ts_41
{
  int a = 1;
  var b = a<<4-1;
  printf("15=%d\n", b);
}

$test ts_42
{
  lift {
    uint32 Ack(uint32 x, uint32 y){return (x>0)?Ack(x-1,(y>0)?Ack(x,y-1):1):y+1;}
  }
  printf("(2,3)=%d\n(3,10)=%d\n",Ack(2,3),Ack(3,10));
}

$test ts_43
{
  lift {
    void ts_43_ifun(int c, int r) {
      int x = 0;
      switch(c) {
      case 0: x = 1; break;
      case 1: x = 1; break;
      case 2:
      case 3:
      case 4: x = 2; break;
      default: x = 3;
      }
      printf("X=%d (%d)\n", x,r);
    }
  }
  ts_43_ifun(3,2);
  ts_43_ifun(4,2);
  ts_43_ifun(1,1);
  ts_43_ifun(11,3);
  ts_43_ifun(-1,3);
}

$test ts_44
{
  int i = 0,j=0;
  for(;i<100;i++) {
    for(;;) {
      for(;;) {
	for(;;) {
	  for(;;) {
	    for(;;) {
	      j++;
	      goto exit;
	    }
	  }
	}
      }
    }
  exit:
  }
  printf("100=%d\n",j);
}


$test ts_45
{
  int i = 0,j=0,k;
  for(;i<100;i++) {
    for(;;) {
      while(1) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      do {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
      for(;;) {
	for(k=0;k<10;k++) {
	  j++;
	}
	goto exit;
      }}}}}}}}}}}}}}} while(1) }}}}}}}}}}
      }
      
    }
  exit:
  }
  printf("1000=%d\n",j);
}

/*
$disable test ts_46 
{
  lift {
    void duff(int *ato, int *afrom, int count)
      {
        int *to = ato; int *from = afrom;
        int n=(count+7)/8;
        switch(count%8){
        case 0:   doentry:   *(to++) = *(from++);
	case 7:              *(to++) = *(from++);
	case 6:              *(to++) = *(from++);
	case 5:              *(to++) = *(from++);
	case 4:              *(to++) = *(from++);
        case 3:              *(to++) = *(from++);
        case 2:              *(to++) = *(from++);
        case 1:              *(to++) = *(from++);
 	          if(--n>0) goto doentry;
        }
      }
  }
  int *test = (int*)malloc(10002);
  int *test1 = (int*)malloc(10002);
  int i;
  int c = 1;
  for(i = 0; i < 10000; i++) {
    test[i] = i*2+i/3+i/4+i%8192;
  }
  duff(test1, test, 10000);
  for(i = 0; i < 10000; i++) {
    if(test[i]!=test1[i]) { c = 0; 
      printf("Deduff[%d,%d,%d]\n",i,test[i],test1[i]);
      break; }
  }
  printf("Duff? [%d]\n", c);
}
*/

//////// Recursive structures test
typedef struct _list {
  int elt;
  struct _list *next;
} list;

list *mklist(int n, list * next)
{
  list * l;
  l = (list*)malloc(sizeof(list));
  l->elt = n;
  l->next = next;
  return l;
}


list *addtolist(list *l, int n)
{
  list* l1 = mklist(n,NULL);
  l->next = l1;
  return l1;
}


void freelist(list* l) {
  list* tmp=l->next;
  list* c = l;
  while(tmp!=NULL) {
    free(c);c=tmp; tmp=c->next;
  }
}

void printlist(list *lst)
{
  if(lst==NULL) return;

  printf("%d ",lst->elt);
  printlist(lst->next);
}


##syntax of pfclike in clexpr, inner: '"$list" "{" ecslist<[clexpr],";">:es "}"'
{
  do loop(e = es)
    match e with
      hd:tl -> {nxt = loop(tl); .clike-expr ` mklist( \hd\ , \nxt\ ) `}
    | else -> .clike-expr ` NULL `
}


##syntax of pfclike in clcode, start: 
  'foreach "(" [clqident]:id0 in [clexpr]:e ")" [clcode]:body0 '
{
 symbols(s1,id) {
  s1v='var'(s1);
  body = clike_renvar_code(body0, id0, id);
  .clike-code `{var \s1\ = ::expr \e\;
                do {
                  var \id\ = \s1v\->elt;
                  \body\;
                  ::lvalue \s1v\ = \s1v\->next;
                } while(\s1v\!=NULL)} `
}}


int listsum(list* l)
{
  int s = 0;
  foreach(c in l) s+=c;
  return s;
}

$test ts_47
{
  int x = 2;
  var l = $list {1;x;3;4;5;10;9;8;7;x*2};
  printlist(l); printf("\n");
  printf("Sum=%d\n", listsum(l));
  freelist(l);
}

int ord(int x)
{
  printf("[%d]", x);
  return x;
}

$test ts_47x
{
  var l = $list {ord(1);ord(2);ord(3);ord(4)};
  printf("\n");
  printlist(l);
  printf("\n");
  freelist(l);
}

/*
$test ts_48
{
  int x[3] = [1,2,3];
  
  printf("5=%d\n", x[2]+x[1]);
}
*/

//////////////////////////////////////////////

void main()
{
  $allthetests
}

int testmain(int x)
{
  main();
  return 0;
}

##{
  tfun = clike_get_ptr("testmain");
  #(_InvokeFunc1 tfun 0);
}

