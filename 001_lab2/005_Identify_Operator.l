%{
    #include<stdio.h>
    int a=0,l=0,r=0;
%}

%%
[+-/*] {printf("%s =  arithmatic ",yytext); a++;}
">"|"<"|">="|"<="|"=="|"!=" {printf("%s =   relational",yytext); r++;}
"&&"|"||" {printf("%s =   logical",yytext); l++;}
.;
%%
int yywrap(){}
int main()
{
    yylex();
    printf("arithmatic= %d\nrelational= %d\nlogical = %d",a,r,l);
    return 0;
}