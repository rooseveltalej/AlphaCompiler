lexer grammar AlphaLexer;

// keywords

IF       : 'if';
THEN     : 'while';
ELSE     : 'else';
WHILE    : 'while';
DO       : 'do';
LET      : 'let';
IN       : 'in';
BEGIN    : 'begin';
END      : 'end';
CONST    : 'const';
VAR      : 'var';


// symbols
SEMMICOLON : ';';
ASSIGN     : ':=';
LEFTP      : '(';
RIGHTP     : ')';
COLON      : ':';
VIR        : '~';
ADD        : '+';
SUB        : '-';
MULT       : '*';
DIV        : '/';
MOD        : '%';
EQEQ       : '==';
NOTEQ      : '!=';
LESS       : '<';
GREATER    : '>';
LESSEQ     : '<=';
MOREEQ     : '>=';



// other tokens
ID: ('_'|)LETTER(LETTER|DIGIT)*;
NUMLiteral : DIGIT DIGIT*;


fragment LETTER : 'a'..'z' | 'A' .. 'Z';

fragment DIGIT : '0' ..'9';

//skip tokens
LINE_COMMENT:   '//' .*? '\r'? '\n' -> skip ;
WS : [ \t\n\r]+ -> skip;
