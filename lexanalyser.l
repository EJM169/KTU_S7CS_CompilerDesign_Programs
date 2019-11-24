
delim	[\t\n]
ws	{delim}+
digit	[0-9]+
id	[a-zA-Z]+[0-9]*
operator	[-+/*]
relop	[<=>]
symbol	[(){},;]
literal	\"[^"]*\"
%%
ws {}
"int"|"float"|"void"|"main"|"while"|"if"|"then"|"else"|"do"|"char"|"printf"|"scanf" {printf("\n %s is a keyword",yytext);}
{id} {printf("\n %s is a identifier",yytext);}
{digit} {printf("\n %s is a digit",yytext);}
{operator} {printf("\n %s is a operator",yytext);}
{relop} {printf("\n %s is a realtional operator",yytext);}
{symbol} {printf("\n %s is a punctuation symbol",yytext);}
{literal} {printf("\n %s is a literal",yytext);}
%%
int main()
{
	yyin=fopen("in.txt","r");
	yylex();
	yywrap();
	fclose(yyin);
}
