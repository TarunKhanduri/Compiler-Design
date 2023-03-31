%{
    #include<stdio.h>
    int l=0,s=0,t=0;
%}
%%
\n l++;
[ ] s++;
\t t++;
%%
int yywrap(void){}
int main()
{
    yylex();
    printf("no of lines = %d\nno of spaces = %d\nno of tabs = %d",l,s,t);
    return 0;
}