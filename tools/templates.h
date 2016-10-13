// A very simple template-like system, supporting only template functions (no types)
//
// E.g.:
//
//  template <int N, typename A> A f(A i) {
//      return i * (A)N;
//  }
//
// Use it as:
//    f<2>(2.0)
//

##include "../clike/clike-ast.hl"

##syntax of pfclike in cltop, start:
       ' [cltemplate]:t '
 +  {
       cltemplate := template "<" cslist<[cltemplatearg],",">:args ">"
                      [clfuncannotations]:as 
                      [clfuncsignature]:sig "{" eslist<[clcode]>:es "}" => 
                          funtemplate(args, cfunc($source(), @sig,begin(@es),@as));
       // TODO: ellipsis
       cltemplatearg := { typename [qident]:id => typename(id) }
                     /  { [cltypebase]:t [qident]:id => typed(id, t) }
                     ;
    }
{
   return 'pfront'('expr'('lisp'('clike_register_template'('quote'(t)))))
}

##syntax of pfclike in clexpr, inner:
   ' "::template"? [clqident]:fn "<" ecslist<[cltemplateapparg],",">:targs ">"
        "(" ecslist<[clexpr0],",">:args ")"'
+ {
     cltemplateapparg := { "::type" [cltype]:t => type(t) }
                      /  { "::expr" [clexpr]:e => expr(e) }
                      /  { [clatomexpr]:e => expr(e) }
                      /  { [cltype]:t => type(t) }
                      ; }
{   return 'typedmacro'('expand_template_app',
                       'verb'(fn),@targs, 'verb'('*COMMA*'),@map a in args
                          do 'expr'(a))
}

##define clike_template_defns = mkhash()
##define clike_template_insts = mkhash()

##function clike_fun_to_decl(f)
    visit:clike(lltoplev: f) {
       once lltoplev {
          cfunc -> 'efunc'(LOC, cc, ret, name, va, args,@annotations)
        | efunc -> node
        | else -> ccerror('IMPOSSIBLE'())}}

##function clike_register_template(t) {
    match t with
      funtemplate(targs, fdef) -> {
          decl = clike_expand_core(clike_fun_to_decl(fdef));
         <nm:fargs> = visit:clike(lltoplev: decl) {
             once llfuncarg: tp;
             deep lltoplev {
                efunc -> name:args
              | else -> ccerror('IMPOSSIBLE'())}};
          ohashput(clike_template_defns, nm, [targs;fargs;fdef])}}


##function clike_get_template_defn(nm) {
  chk = ohashget(clike_template_defns, nm);
  if (chk) return chk else ccerror('UNDEFINED-TEMPLATE-FUNCTION'(nm))
}

##function clike_template_instantiate(env, tbody, bindtypes, bindexprs) {
   visit:clike(lltoplev: tbody) {
      deep lltype {
         alias -> aif(chk = ohashget(bindtypes, x)) {
           return chk
         } else node
       | else -> node};
      deep llexpr {
         var -> aif(chk = ohashget(bindexprs, nm)) {
           return chk
         } else node
       | else -> node}}}

##
%"A modified version of clike_type_iso"
function clike_type_iso_match(env, a, b)
 do loop(t1=a, t2=b) {
   match t1:t2 with
      'alias'(nm):x ->
         aif (chk = ohashget(env, nm)) {
            if (chk === '*unbound*') {ohashput(env, nm, x); return true}
            else []}
    | 'integer'(t1):'integer'(t2) -> %eqv?(t1,t2)
    | 'ptr'(a):'ptr'(b) -> loop(a,b)
    | 'ptr'(a):'array'(b,@r1) -> loop(a,b)
    | 'array'(a,@r):'ptr'(b) -> loop(a,b)
    | 'array'(a,@r):'array'(b,@r1) -> and(loop(a,b),iso(r,r1))
    | x:y -> {
        s1 = clike_isstruct(x);s2=clike_isstruct(y);
        if(and(s1,s2)) %eqv?(s1,s2) else iso(x,y)
      }}
      
##parser templateargnm (pfront) {
   templateargnm := { "template_arg_" [ident]:i => i }
                 /  { . => $nil() }
                 ;}

##
function clike_template_unitype(env, bindenv, tp)
{
   // 1. Dirty hack: replace aliases with structrefs
   tp0 = visit:clike(lltype:tp) {
     deep lltype {
        alias -> aif (chk = ohashget(bindenv, x)) {
           if (chk === '*unbound*') 'structref'(%Sm<<("template_arg_",x)) else chk
        } else node
      | else -> node}};
   // 2. Normalise
   tp1 = clike_env_unitype(env, tp0);
   // 3. Return aliases
   tp2 = visit:clike(lltype:tp1) {
     deep lltype {
       structref -> aif (nnm  = parse %S<<(nm) as templateargnm) {
         'alias'(nnm)
       } else node
     | else node}};
   return tp2}

##
%"Execute the typing phase of macro expansion;
  Returns signature and the template function return type
  and requests argument type checks."
function clike_expand_template_trules(env, nm, targs, fargs, addtypecheck)
{
   <[deftargs;deftfargs;tbody]> = clike_get_template_defn(nm);
    // 1. Bind targs to their values;
    //    A smaller number of template parameters can be provided,
    //    in this case unbound parameters must be infered from the function
    //    argument types.
    //
    //    E.g., template <typename A> A add(A x, A y) { return x + y; }
    //
    //      can be used as add<>(2.0,2.0), with A resolving to '(float fp32)'
    getid(v) = cadr(v);
    gettp(v) = match v with
        typename(nm) -> 'typename'
      | typed(nm, tp) -> 'expr'(tp);
    gettypeval(v) = match v with
        type(t) -> t
      | else -> ccerror('NOT-A-TYPE'(v));
    getexprval(v) = match v with
        expr(e) -> clike_untype_llexpr(e)
      | else -> ccerror('NOT-AN-EXPR'(v));
    getexprtype(v) =  match v with
        expr(e) -> car(e)
      | else -> ccerror('NOT-AN-EXPR'(v));
    bindtypes = mkhash();bindexprs = mkhash();
    bind(dst, src) = {
       nm = getid(dst);
       tp = gettp(dst);
       match tp with
          'typename' -> ohashput(bindtypes, nm, gettypeval(src))
       |  expr(etp) -> {
             addtypecheck('typeeq'(etp, getexprtype(src)));
             ohashput(bindexprs, nm, getexprval(src)) }};
    do_unbound(rst) =
       iter r in rst do {
          nm = getid(r); tp = gettp(r);
          match tp with
             'typename' -> ohashput(bindtypes, nm, '*unbound*')
           | else -> ccerror('IMPLICIT-TEMPLATE-EXPR-ARGUMENT'(nm))};
    do loop(d = deftargs, s = targs) {
        match s with
          hd: tl -> {bind(car(d), hd); loop(cdr(d), tl)}
        | [] -> do_unbound(d)};
    // 1.1. Typecheck function arguments, bind the remaining types.
    l1 = length(deftfargs); l2 = length(fargs);
    if (not(l1==l2)) ccerror('TODO-IMPLEMENT-POLYMORPHIC-FUNCTIONS'(l1,l2));
    subst_tvars(df) = {
      unb = mkref([]);
      ret = visit:clike (lltype: df) {
        deep lltype {
           alias -> 
              aif(chk = ohashget(bindtypes, x)) {
                 if (chk === '*unbound*') {
                    unb := true;
                    return node
                 } else chk}
         | else -> node}};
      return [^unb; ret]};
    matchtype(tl, tr) =
        clike_type_iso_match(bindtypes, clike_template_unitype(env, bindtypes, tl),
                                        clike_env_unitype(env, tr));
    z = zip(deftfargs, fargs);
    // TODO! Allow integer parameters in type
    //   definitions (array lengths, ...)
    iter [df;fa] in z do {
       <[c;df1]> = subst_tvars(df);
        if(not(c)) { // type is complete, just typecheck it 
          addtypecheck('typeeq'(df1, getexprtype(fa)));
        } else {
          // Incomplete type, infer its value
          matchtype(df1, getexprtype(fa));
        }
    };
    incomplete = mkref([]);
    hashiter(fun(k,v) if(v==='*unbound*') incomplete:=true, bindtypes);
    if (^incomplete) ccerror('TEMPLATE-CANNOT-INFER-TYPES'());

    // 2. Once all the variables are substituted with either types or
    //    expressions, we first produce a hash key and check if such an
    //    instantiation is already available. In this case, just return the
    //    types to complete the typing rules pass.
    //
    //    If instantiation is required, substitute the type/expression variables
    //    with their values in the template body, and store it in the hash.
    //    Then, the first expand call will instantiate into a lift expression.
    getrettype(fn) = {
       visit:clike(lltoplev: fn) {
         once lltoplev {
            cfunc -> ret
          | else -> ccerror('IMPOSSIBLE'())}}};
    sig = map d in deftargs do {
       id = getid(d);
       tp = gettp(d);
       match tp with
          'typename' -> clike_env_unitype(env, ohashget(bindtypes, id))
        | else -> ohashget(bindexprs, id)};
    ssig = %S<<(nm,"|",strinterleave(map s in sig do %S<<(s),"|"));
    aif(chk = ohashget(clike_template_insts, ssig)) {
      return [ssig;getrettype(cadr(chk))];
    } else {
      body = clike_template_instantiate(env, tbody, bindtypes, bindexprs);
      ohashput(clike_template_insts, ssig, 'new'(body));
      return [ssig;getrettype(body)]}}

##
%"Post--typing macro expansion phase; Lift a new toplevel def if needed,
  otherwise just substitute a call"
function clike_template_subst(env, fargsv, sig)
{
  tdef = ohashget(clike_template_insts, sig);
  rename(t, newnm) =
    visit:clike(lltoplev: t) {
       once lltoplev {
         cfunc -> mk:node(name = newnm)
       | else -> ccerror('IMPOSSIBLE'())}};
  match tdef with
    'new'(fbody) -> symbols(fnm) {
       nbody = rename(fbody, fnm);
       ohashput(clike_template_insts, sig, 'inst'(nbody, fnm));
       return 'inblock'([], 'toplift'(nbody),
                        'call'([],fnm,@fargsv))}
  | 'inst'(b, fnm) -> 'call'([],fnm,@fargsv)}


##function clike_template_t_rule(env, args, macroenv)
collector(addtypecheck, getchecks) {
   // 1. Parse args
  <verb(nm):rargs> = args;
  <targs:fargs> = do loop(r = rargs, ta = []) {
      match r with
         'verb'('*COMMA*'):tl -> reverse(ta):tl
       | hd:tl -> loop(tl, hd:ta)
       | [] -> reverse(ta):[]};
   // 2. Get the return type
  <[ssig;rettype]> = clike_expand_template_trules(env, nm, targs, fargs, addtypecheck);
   macroenv := [nm;targs;fargs;ssig];
   // 3. Type-check
   chks = getchecks();
   iter c in chks do {
     match c with
       typeeq(tp, etp) -> {
         t1 = clike_env_unitype(env, tp);
         t2 = clike_env_unitype(env, etp);
         if (not(clike_type_iso(t1, t2))) ccerror('TEMPLATE-ARG-TYPE'(t1, t2))}};
   // 4. Done
   return rettype}


##function clike_template_expand(env, rtype, args, macroenv)
{
   <[nm;targs;fargs;sig]> = ^macroenv;
    fargsv = map expr(vl) in fargs do clike_untype_llexpr(vl);
    ret = clike_template_subst(env, fargsv, sig);
    return ret}

##{
    hashput(clike_default_mcenv,%S<<(" :typrules: expand_template_app"),
             clike_template_t_rule);
    hashput(clike_default_mcenv,%S<<(" :typexpander: expand_template_app"),
             clike_template_expand)}

