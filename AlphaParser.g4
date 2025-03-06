parser grammar AlphaParser;

options {
    tokenVocab = AlphaLexer;
}

program         : singleCommand;
command : singleCommand (SEMCOLON singleCommand)*;
singleCommand :
    ID  (ASIG expression | LEFTPR expression RIGHTPR )
        | IF expression THEN singleCommand
                        ELSE singleCommand
        | WHILE expression DO singleCommand
        | LET declaration IN singleCommand
        | BEGIN command END;
declaration  : singleDeclaration (SEMCOLON singleDeclaration)*;
singleDeclaration :
    CONST ID TILDE expression
    	   | VAR ID COLON typeDenoter;
typeDenoter : ID;
expression : primaryExpression (operator primaryExpression)*;
primaryExpression :
    NumLiteral | ID | LEFTPR expression RIGHTPR;
operator : ADD | SUB | MULT | DIV | MOD | EQEQ | NOTEQ | LESSTHAN | MORETHAN | LESSEQTHAN | MOREEQTHAN;