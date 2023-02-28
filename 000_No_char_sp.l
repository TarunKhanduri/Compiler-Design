%{
    #include<stdio.h>
%}
%%
[0-9] printf("number\n");
[a-zA-z] printf("alpha\n");
. printf("special\n");
%%
int yywrap(void){}
int main()
{
    yylex();
    return 0;
}