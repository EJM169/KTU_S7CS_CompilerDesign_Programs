%{	
	#include<stdlib.h>
	#include<stdio.h>
%}
%token digit
%left '+''-'
%left '*''/'
%right '^'
%%
T:E '\n' {printf("Result = %d \n",$$);	exit(0);}
E:E '+'	E{$$=$1+$3;} 
 |E '-' E{$$=$1-$3;}
 |E '*' E{$$=$1*$3;}
 |E '/' E{$$=$1/$3;}
 |E '^' E{$$=power($1,$3);}
 |digit {$$=$1;}
;
%%
yylex()
{
	int c;
	c=getchar();
	if(isdigit(c))
	{
		ungetc(c,stdin);
		scanf("%d",&yylval);
		return digit;	
	}
	return c;
}
int power(int a,int b)
{
	int i,s=1;
	for(i=0;i<b;++i)
	{
		s=s*a;	
	}
	return s;	
}
yyerror()
{
	printf("Syntax Error \n");
}
