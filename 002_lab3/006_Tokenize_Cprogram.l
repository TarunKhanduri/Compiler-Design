%{
    #include<stdio.h>
%}
%%
"int"|"float"|"bool"|"double"|"long"|"char" {printf("\n%s ->  data type ",yytext);}

[+-/*] {printf("\n%s ->  arithmatic operator",yytext);}

"=" {printf("\n%s ->   assignment operator",yytext);}
">"|"<"|">="|"<="|"=="|"!=" {printf("\n%s ->   relational operator",yytext);}
"&&"|"||" {printf("\n%s ->   logical operator",yytext);}

[a-zA-z][a-zA-Z0-9_]* {printf("\n%s ->   identifier",yytext);}
    
-?[0-9]+ {printf("\n%s ->   integer no",yytext);}
-?[0-9]*"."[0-9]+ {printf("\n%s ->   float no",yytext);}
'[a-zA-z]' {printf("\n%s ->   character",yytext);}

";" {printf("\n%s ->   terminator",yytext);}

%%
int yywrap(){return 0;}
int main()
{
    yylex();
    return 0;
}