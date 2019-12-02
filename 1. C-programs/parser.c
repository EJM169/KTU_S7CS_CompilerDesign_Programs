#include<stdio.h>
#include<string.h>
#include<stdlib.h>
char input[10];
int i=0,j;
int E();
void T();
void Eprime();
void Tprime();
void F();
int id(char a);
main(){
	printf("Enter an arthimetic expression : ");
		scanf("%[^\n]",input);
	if(E())
		printf("\n Expression is accepted \n");
	else
		printf("\n Expression is not accepted\n");
}
int E(){
	printf("\n E->TE'");
	T();
	Eprime();
	if(input[i]=='\0')
		return 1;
	else
		return 0;

}
void Eprime()
{
	if(input[i]=='+' || input[i]=='-')
	{
		j=i;
		printf("\n E'->%cTE'",input[j]);
		i++;
		T();
		Eprime();
	}
	else
	{
		printf("\n E'->epsilon");
	}
}	
void T()
{
	printf("\n T'->FT'");
	F();
	Tprime();
}	
void Tprime()
{
	if(input[i]=='*'||input[i]=='/')
	{
		j=i;
		printf("\n T'->%cFT'",input[j]);
		i++;
		F();
		Tprime();
	}
	else
	{
		printf("\nT'->epsilon");
	}
}
void F()
{
	if(id(input[i]))
	{
		i++;
		printf("\nF->id",input[j]);
	}
	else if(input[i]=='(')
	{
		i++;
		printf("\nF->(E)");
		E();
		if(input[i]==')')
			i++;
		else
		{
			printf("\n Expression not accepted - F\n");
			exit(0);
		}

	}
	else
	{
		printf("\n Expression not accepted -else F\n");
		exit(0);
	}
}
int id(char a)
{
	if(a>='a' && a<='z')
		return 1;
	else
		return 0;
	
}
