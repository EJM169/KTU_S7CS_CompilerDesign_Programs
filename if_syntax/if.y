%{
#include<stdio.h>
%}
%token fi
%token relop
%token id
%token num
%token op
%token ln
%token br
%token pr
%token es
%token logop
%%
T:stmt ln {printf("Syntax is correct "); return 0;};
;
stmt:fi br condition br ln pr pr ln
|fi br condition br ln pr pr ln es ln pr pr ln
|fi br condition br ln pr pr ln es fi br condition br ln pr pr ln es ln pr pr ln
|fi br condition br ln pr pr ln es ln pr pr ln fi br condition br ln pr pr ln pr ln
;
condition: id relop num
|id relop id
|id relop num logop id relop num
|id relop id logop id relop id {;}
;
%%
#include "lex.yy.c"
yyerror(){
	printf("Syntax error");
}

