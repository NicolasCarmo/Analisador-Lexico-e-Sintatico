%%

%class Lexer
%unicode
%cup
%line
%column

%{

%}

IDENTIFIER = [a-zA-Z_][a-zA-Z0-9_]*
NUMBER     = [0-9]+
WHITESPACE = [ \t\r\n]+
COMMENT    = "//".*

%%

{WHITESPACE}    { /* ignora */ }
{COMMENT}       { /* ignora */ }
"if"            { return new Symbol(sym.IF); }
"else"          { return new Symbol(sym.ELSE); }
"{"             { return new Symbol(sym.LBRACE); }
"}"             { return new Symbol(sym.RBRACE); }
"("             { return new Symbol(sym.LPAREN); }
")"             { return new Symbol(sym.RPAREN); }
";"             { return new Symbol(sym.SEMI); }
{IDENTIFIER}    { return new Symbol(sym.ID, yytext()); }
{NUMBER}        { return new Symbol(sym.NUMBER, yytext()); }
.               { System.err.println("Erro léxico na linha " + (yyline+1) + ": caractere inválido '" + yytext() + "'"); }
