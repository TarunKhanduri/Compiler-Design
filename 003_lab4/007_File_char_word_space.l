%{
#include<stdio.h>
int c=0,w=0,s=0;
%}

%%
[a-zA-Z] c++;
[ ] s++;
%%

int yywrap(){return 0;}
int main()
{
extern FILE *yyin;
yyin=fopen("007_input.txt","r");
yylex();
printf("\ntotal character= %d\ntotal word= %d\ntotal space= %d\n",c,w,s);
return 0;
}