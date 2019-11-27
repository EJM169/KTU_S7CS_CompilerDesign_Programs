%{	
	#include<stdio.h>
%}
%token fr
%token id
%token relop
%token num
%token op
%token sm
%token cm
%token ln
%token br
%%
T:stmt ln {printf("Syntax Correct \n"); return;}
;
stmt: fr br condition br{;}
;
condition:id relop num sm id relop num sm id op op
	|id relop num sm id relop num sm op op id
	|id relop num sm id relop id sm op id
	|id relop num cm id relop num sm id relop num cm id relop num sm op op id cm op op id
	|id relop num cm id relop num sm id relop num cm id relop num sm id op op cm id op op
	|sm sm{;}
%%
#include "lex.yy.c"
yyerror()
{
	printf("Syntax error");
}
