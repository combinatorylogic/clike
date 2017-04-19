
##syntax of pfclike in cltype, start: ' typeof "(" [clexpr]:e ")" '
{
   return 'typedmacro'('typeof_macro', 'expr'(e))
}

clike macro typeof_macro {
  syntax : ' "@" typeof_macro "(" [clexpr]:e ")" ';
  typing : 'void'(); // discarded
  expand as: { return typeof_e }}




