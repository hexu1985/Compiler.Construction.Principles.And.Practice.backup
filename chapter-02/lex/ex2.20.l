%{
/* a Lex program that adds line numbers
   to lines of text, printing the new text
   to the standard output
*/
#include <stdio.h>
int lineno = 1;
%}
line .*\n
%%
{line} { printf ( "%5d %s", lineno++, yytext ); }
%%
int main()
{ yylex(); return 0; }
