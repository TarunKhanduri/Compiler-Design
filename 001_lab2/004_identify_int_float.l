%{
    #include<stdio.h>
    int i=0,f=0;
%}
%%

-?[0-9]+ {printf("%s  =   int",yytext); i++;}
-?[0-9]*"."[0-9]+ {printf("%s   =   float",yytext); f++;}
.;

%%

int yywrap(){}
int main(){
    yylex();
    printf("total int =   %d\ntotal float =   %d",i,f);
    return 0;
}