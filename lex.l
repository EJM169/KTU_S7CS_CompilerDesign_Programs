%{
	int k=0;
	int i=0;
	int n=0;
	int o=0;
	int u=0;
%}
num [0-9]+
id [a-zA-z]+[0-9]*
operator [-+/*]
%%
"\n" {printf("Keywords=%d \n Identifier=%d \n Number=%d \n Operator=%d \n unknown=%d\n",k,i,n,o,u); return(0);}
"int"|"float"|"void"|"main"|"while"|"if"|"then"|"else"|"do"|"char"|"printf"|"scanf" {k=k+1;}
{id} {i=i+1;}
{num} {n=n+1;}
{operator} {o=o+1;}
. {u=u+1;}
%%
int main()
{
	yylex();
}

