%{
#include "calc.tab.h"
%}

%option noyywrap

numero		[0-9]+("."[0-9]+)?

%%
[\t ]+		; // ignora espaço em branco
pedrohenrique {return PEDRO_HENRIQUE;}
{numero}    yylval = atof(yytext); return NUMBER;
.|\n		return yytext[0]; 

%%