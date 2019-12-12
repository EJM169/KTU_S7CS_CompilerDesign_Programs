#include<stdio.h>
#include<string.h>
#include<ctype.h>
void main()
{
	int i,flag,l;	
	char str[50],str1[50],ch;
	FILE *f1,*f2;
	f1=fopen("input.txt","r");
	
	while(fscanf(f1,"%s",&str)!=EOF)
	{  

		flag=0;
		f2=fopen("keyword.txt","r");
		while(fscanf(f2,"%s",&str1)!=EOF)
		{		
			if(strcmp(str,str1)==0)
			{
				printf("%s is a keyword\n",&str);	//This is used for finding keywords in input file	
				flag=1;
				break;
			}	
		}
		if(flag==1)
				continue;
		l=strlen(str);
		for(i=1;i<=l;++i)
		{
			ch=str[i];			
			switch(ch)
			{
				case 'a'...'z':
				case 'A'...'Z':  	while((str1[i+1]>='A')&&(str1[i+1]<='Z')||(str1[i+1]>='a')&&(str1[i+1]<='z')||(str1[i+1]>='0')&&(str1[i+1]<='9'))
{i++;}	//Identifier checking
				printf("%d is an identifier",&ch);	
				break;
				case '1'...'9': if(isdigit(ch)){	
						printf("%s is a digit\n",&ch);	//Digit checking
					}
				break;				
				case '+':
				case '-':
				case '*':		//Operator checking
				case '/':
				case '=':
				case '>'
				case '<': 	printf("%s is an operator",&ch);
				break;
				
				case '{':
				case '}':
				case '(':		// Symbol Checking
				case ')':
				case ',':
				case ';':	printf("%s is a symbol \n",&ch);
				break;
				default: break;

			}
		}
	fclose(f2);
	}
	fclose(f1);		//Closing the files
	
}


