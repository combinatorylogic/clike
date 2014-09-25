/*
 * A CLike demo showing its extensible syntax features.
 * See below: a reverse assignment syntax, infix function calls
 *            and a string interpolation.
 *
 * How to build and run:
 *  $ mono clikecc.exe /out syntax tests/syntax.c
 *  $ lli syntax.o
 *
 */



// Defining a reverse assignement syntax ' expr =: lvalue '
##syntax of pfclike in clcode, inner: ' [clrevset]:v '
+ { clrevset := [clexpr]:r "=:" [cllvalue]:l";" => 
            {mode=stmt} set($source(),l,r); } // Forming an AST directly
{
  return v
}

// Defining an infix function syntax
##syntax of pfclike in classexpr, inner: ' [clbinexpr]:l "`" [clqident]:fn [clbinexpr]:r '
{
  return .clike-expr `  \fn\ (\l\, \r\) ` // using quasiquotation to form an AST
}

int32 printf(int8 *format, ...);
int32 puts(int8 *str);

int32 add2(int32 x, int32 y) {
  return x*x + y*y;
}

void demo0() {
   int32 a, b, c;

   // reversed assignement syntax
   2+2 =: a;
   a*a =: b;
   b-a =: c;
   printf("%d,%d,%d\n", a, b, c);

   // Infix function call demo
   int32 d = (a `add2 b) `add2 c;
   printf("%d\n", d);
}

// Defining a string interpolation syntax
##syntax of pfclike in clexpr, inner: ' "£" [DQUOTE] [stringinterp]:v [DQUOTE] '
+ {
     @@DQUOTE := 34;
     @@escapebegin := "$(";
     @@text := (![DQUOTE] ((![escapebegin] .)/("\\$")))+;
     @tktext := [text];
     escape := [escapebegin] [clexpr]:e ")" => e;
     stringinterp := eslist<[stringiatom]>:es => es;
     stringiatom := { [escape]:e => escape(e) }
                 /  { [tktext]:t => text($val(t)) }
                 ;
  }
{
   // 1. Assess minimum string length
   minlen = foldl(fun(l, s) { l + length(%string->list(s)) }, 0,
                  map v do match v with text(t) -> t | else -> "DUMMY");
   // Make an integer constant
   tsminlen = 'const'('integer'('i32', minlen));
   // 2. Build a sequence of collect_str calls
   collect = 'begin'(
      @map v do
         match v with
            text(t) -> {ts = 'const'('string'(t));
                        len = length(%string->list(t));
                        tslen = 'const'('integer'('i32', len));
                        .clike-code `collect_const_str(&builder, \ts\, \tslen\ );`}
          | escape(e) -> 
                       'expr'('typedmacro'('tostring','expr'(e))));
   // 3. Create an inblock expression
   return .clike-expr `
     inblock {
        strbuilder builder;
        makestringbuilder(&builder,  \tsminlen\ );
        ::code \collect\;
        ( getstringfrombuilder(&builder) ); // make sure this call is an expression
     }
   `;
}

// Now we have to define 'tostring' macro used above

clike macro tostring {
  syntax : ' "@" tostring "(" [clexpr]:e ")" ';
  typing : 'void'(); // side effect
  expand as: {
     match typeof_e with
        'ptr'('integer'('i8')) -> // already a string
            .clike-expr `collect_str(&builder, \e\)`
     |  'integer'(itype) -> .clike-expr ` itoa_i64 ( &builder, \e\ ) `
     |  'real'(rtype) -> .clike-expr ` ftoa_double ( &builder, \e\ ) `
     |  'struct'(nm, @elts) -> symbols(strct) {
            fillstruct = 'begin'(
               @map append [fld;ftp] in elts do 
                  [
                     {fldnm = 'const'('string'(%S<<(fld,"="))); .clike-code `collect_str(&builder, \fldnm\ );`};
                     'expr'('typedmacro'('tostring','expr'('getelt'('var'(strct), fld))));
                     .clike-code `collect_str(&builder, ";");`
                  ]
            );
            strnm = 'const'('string'(if(nm) %S<<("@[", car(nm), " ") else "@[... "));
            clike_expand_core_expr(
               .clike-expr `inblock {collect_str(&builder, \strnm\ );
                                  var \strct\ = ::expr \e\ ;
                                  ::code \fillstruct\;
                                  (collect_str(&builder, "]"));}`)
        }
        // We can do a lot of interesting things here: implement pretty printers
        // for recursive structures and arrays, implement an extensible system of
        // type-dependent printers, etc., but for the sake of simplicity we'll 
        // stick to simple types here.
     |  else -> {println(typeof_e); .clike-expr `collect_str(&builder, "<type-not-supported-yet>")`}
  }
}

// The stuff below must be in the library
typedef struct _strbuilder {
  uint32 pos;
  uint32 size;  
  int8 *ptr;
} strbuilder;

void *malloc(uint64 size);
void *realloc(void *ptr, uint64 size);
void *memcpy(void *dest, void *src, uint64 n);

void advance(strbuilder *builder, int32 len)
{
  if (builder->pos + len >= builder->size) {
    builder->size *= 2;
    builder->ptr = realloc(builder->ptr, builder->size);
  }
}

void collect_const_str(void *builder, int8 *str, int32 len)
{
   strbuilder *b = (strbuilder*) builder;
   advance(b, len);
   memcpy(b->ptr + b->pos, str, len);
   b->pos += len;
}
void collect_str(void *builder, int8 *str)
{
   strbuilder *b = (strbuilder*) builder;
   uint32 pos = b->pos; uint32 size = b->size;
   uint32 i;
   for (i = 0; str[i]; ++i) {
      if (pos+i >= size) {advance(b,i); size = b->size;}
      b->ptr[pos+i] = str[i];
   }
   b->pos += i;
}

int32 snprintf(int8 *str, uint64 size, int8 *format, ...);

// Could have been more optimal
void itoa_i64(void *builder, int64 v)
{
   int32 temp[192];
   snprintf(temp, 191, "%ld", v);
   collect_str(builder, temp);
}
void ftoa_double(void *builder, double v)
{
   int32 temp[192];
   snprintf(temp, 191, "%g", v);
   collect_str(builder, temp);
}

void makestringbuilder(strbuilder *v, int32 minlen)
{
  v->pos = 0;
  v->size = minlen;
  v->ptr = malloc(minlen+1);
}
int8* getstringfrombuilder(void *builder)
{
   strbuilder *b = (strbuilder*) builder;
   b->ptr[b->pos] = 0; // terminate this string
   return b->ptr;
}
//////////////////////////////////////////


void demo1()
{
   int32 a = 200;
   int16 b = 40;
   int8* gs = "String";
   
   // String interpolation demo
   puts(£"A = $(a), B = $(b), A+B=$(a+b), 5/3 = $(5.0/3.0), GS=$(gs)");


   struct _abc {
      int32 f1;
      int8 f2;
      int8* s;
      struct {
        int32 x;
      } inner;
   } test;
   test.f1 = 1;
   test.f2 = 2;
   test.s = "TEST";
   test.inner.x = 10;
   puts(£"Struct test: $(test)\n");
}


int32 main()
{
  demo0();
  demo1();
  return 0;
}