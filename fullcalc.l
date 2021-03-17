/* Flex part for the calc program.
cf. https://www.oreilly.com/library/view/flex-bison/9780596805418/ch01.html
flex [fname]
*/

%{
#include "fullcalc.tab.h"
%}

%%

"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"|" { return ABS; }
"(" { return OP; }
")" { return CP; }
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
\n { return EOL; }
[ \t] { /*ignore whitespace*/ }
. { printf("Unexpected %c\n", *yytext); }

%%
