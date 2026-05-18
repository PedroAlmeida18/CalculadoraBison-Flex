%{
#include <iostream>
#include <cctype>
using std::cout;

int yylex(void);
int yyparse(void);
void yyerror(const char *);
%}


%define api.value.type {double}

%token NUMBER
%token PEDRO_HENRIQUE


%left '+' '-'
%left '*' '/' PEDRO_HENRIQUE
%nonassoc UMINUS

%%

calc: calc expr '\n' 		{ cout << $2 << '\n'; }
	| calc '\n'
	| // vazio 
	; 

expr: expr '+' expr			{ $$ = $1 + $3; }
	| expr '-' expr   		{ $$ = $1 - $3; }
	| expr '*' expr			{ $$ = $1 * $3; }
	| expr '/' expr			{ $$ = $1 / $3; }
	| expr PEDRO_HENRIQUE expr { $$ = (int)$1 % (int)$3; }
	| '(' expr ')'			{ $$ = $2; }
	| '-' expr %prec UMINUS { $$ = - $2; }
	| NUMBER 
	;

%%

int main()
{
	yyparse();
}

void yyerror(const char * s)
{
   	cout << "ERRO: " << s << '\n';
}