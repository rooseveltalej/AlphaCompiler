lexer grammar AlphaLexer;

// Keywords
IF :  ('if' | 'IF');
THEN : ('then' | 'THEN');
ELSE : ('else' | 'ELSE');
WHILE : ('WHILE' | 'while');
DO : ('DO' | 'do');
LET : ('LET' | 'let');
IN : ('IN' | 'in');
BEGIN : ('BEGIN' | 'begin');
END : ('END' | 'end');
CONST : ('CONST' |'const');
VAR : ('VAR' | 'var');


SEMCOLON : ';';
ASIG : ':=';
LEFTPR : '(';
RIGHTPR : ')';
COLON : ':';
TILDE : '~';
ADD : '+';
SUB : '-';
MULT : '*';
DIV : '/';
MOD : '%';
EQEQ : '==';
NOTEQ : '!=';
LESSTHAN : '<';
MORETHAN : '>';
LESSEQTHAN : '<=';
MOREEQTHAN : '>=';


// Other Tokens
ID :('_' |)LETTER(LETTER|DIGIT)*;
NumLiteral : DIGIT DIGIT*;

// fragments
fragment LETTER : 'a'..'z' | 'A'..'Z';
fragment DIGIT : '0'..'9';

// Skip token
LINE_COMMENT: '//' .*? '\r'? '\n' -> skip ;

WS: [ \t\r\n]+ -> skip;