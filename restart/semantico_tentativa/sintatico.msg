chunk: ABREPARENTESE STRING WRITE 
##
## Ends in an error in state: 31.
##
## expressao -> expressao . binop expressao [ SUBTRACAO SOMA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHAPARENTESE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## expressao -> ABREPARENTESE expressao . FECHAPARENTESE [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: ABREPARENTESE WRITE 
##
## Ends in an error in state: 11.
##
## expressao -> ABREPARENTESE . expressao FECHAPARENTESE [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: FUNCTION ID ABREPARENTESE FECHAPARENTESE RETURN ELSE 
##
## Ends in an error in state: 74.
##
## stat -> FUNCTION ID ABREPARENTESE loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE block . END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID ABREPARENTESE loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 67, spurious reduction of production option(expressao) -> 
## In state 68, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 70, spurious reduction of production retstat -> RETURN option(expressao) option(PONTOEVIRGULA) 
## In state 72, spurious reduction of production option(retstat) -> retstat 
## In state 73, spurious reduction of production block -> list(stat) option(retstat) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: FUNCTION ID ABREPARENTESE FECHAPARENTESE VIRGULA 
##
## Ends in an error in state: 59.
##
## stat -> FUNCTION ID ABREPARENTESE loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE . block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID ABREPARENTESE loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: FUNCTION ID ABREPARENTESE WRITE 
##
## Ends in an error in state: 57.
##
## stat -> FUNCTION ID ABREPARENTESE . loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID ABREPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: FUNCTION ID WRITE 
##
## Ends in an error in state: 56.
##
## stat -> FUNCTION ID . ABREPARENTESE loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: FUNCTION WRITE 
##
## Ends in an error in state: 55.
##
## stat -> FUNCTION . ID ABREPARENTESE loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: ID ABREPARENTESE FECHAPARENTESE VIRGULA 
##
## Ends in an error in state: 60.
##
## list(stat) -> stat . list(stat) [ RETURN EOF END ELSE ]
##
## The known suffix of the stack is as follows:
## stat 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: ID ABREPARENTESE STRING VIRGULA WRITE 
##
## Ends in an error in state: 53.
##
## separated_nonempty_list(VIRGULA,expressao) -> expressao VIRGULA . separated_nonempty_list(VIRGULA,expressao) [ FECHAPARENTESE ]
##
## The known suffix of the stack is as follows:
## expressao VIRGULA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: ID ABREPARENTESE STRING WRITE 
##
## Ends in an error in state: 52.
##
## expressao -> expressao . binop expressao [ VIRGULA SUBTRACAO SOMA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHAPARENTESE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## separated_nonempty_list(VIRGULA,expressao) -> expressao . [ FECHAPARENTESE ]
## separated_nonempty_list(VIRGULA,expressao) -> expressao . VIRGULA separated_nonempty_list(VIRGULA,expressao) [ FECHAPARENTESE ]
##
## The known suffix of the stack is as follows:
## expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: ID ABREPARENTESE WRITE 
##
## Ends in an error in state: 48.
##
## functioncall -> ID ABREPARENTESE . loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ID ABREPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: ID WRITE 
##
## Ends in an error in state: 47.
##
## functioncall -> ID . ABREPARENTESE loption(separated_nonempty_list(VIRGULA,expressao)) FECHAPARENTESE [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
## variavel -> ID . [ SUBTRACAO SOMA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DIVISAO DIFERENTE ATRIBUICAO AND ]
##
## The known suffix of the stack is as follows:
## ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: IF ABREPARENTESE STRING FECHAPARENTESE THEN ELSE RETURN EOF 
##
## Ends in an error in state: 79.
##
## stat -> IF ABREPARENTESE expressao FECHAPARENTESE THEN block option(__anonymous_0) . END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF ABREPARENTESE expressao FECHAPARENTESE THEN block option(__anonymous_0) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 67, spurious reduction of production option(expressao) -> 
## In state 68, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 70, spurious reduction of production retstat -> RETURN option(expressao) option(PONTOEVIRGULA) 
## In state 72, spurious reduction of production option(retstat) -> retstat 
## In state 73, spurious reduction of production block -> list(stat) option(retstat) 
## In state 78, spurious reduction of production option(__anonymous_0) -> ELSE block 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: IF ABREPARENTESE STRING FECHAPARENTESE THEN ELSE VIRGULA 
##
## Ends in an error in state: 77.
##
## option(__anonymous_0) -> ELSE . block [ END ]
##
## The known suffix of the stack is as follows:
## ELSE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: IF ABREPARENTESE STRING FECHAPARENTESE THEN RETURN EOF 
##
## Ends in an error in state: 76.
##
## stat -> IF ABREPARENTESE expressao FECHAPARENTESE THEN block . option(__anonymous_0) END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF ABREPARENTESE expressao FECHAPARENTESE THEN block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 67, spurious reduction of production option(expressao) -> 
## In state 68, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 70, spurious reduction of production retstat -> RETURN option(expressao) option(PONTOEVIRGULA) 
## In state 72, spurious reduction of production option(retstat) -> retstat 
## In state 73, spurious reduction of production block -> list(stat) option(retstat) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: IF ABREPARENTESE STRING FECHAPARENTESE THEN VIRGULA 
##
## Ends in an error in state: 46.
##
## stat -> IF ABREPARENTESE expressao FECHAPARENTESE THEN . block option(__anonymous_0) END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF ABREPARENTESE expressao FECHAPARENTESE THEN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: IF ABREPARENTESE STRING FECHAPARENTESE WRITE 
##
## Ends in an error in state: 45.
##
## stat -> IF ABREPARENTESE expressao FECHAPARENTESE . THEN block option(__anonymous_0) END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF ABREPARENTESE expressao FECHAPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: IF ABREPARENTESE STRING WRITE 
##
## Ends in an error in state: 44.
##
## expressao -> expressao . binop expressao [ SUBTRACAO SOMA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHAPARENTESE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## stat -> IF ABREPARENTESE expressao . FECHAPARENTESE THEN block option(__anonymous_0) END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF ABREPARENTESE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: IF ABREPARENTESE WRITE 
##
## Ends in an error in state: 43.
##
## stat -> IF ABREPARENTESE . expressao FECHAPARENTESE THEN block option(__anonymous_0) END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF ABREPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: IF WRITE 
##
## Ends in an error in state: 42.
##
## stat -> IF . ABREPARENTESE expressao FECHAPARENTESE THEN block option(__anonymous_0) END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: READ ABREPARENTESE STRING WRITE 
##
## Ends in an error in state: 33.
##
## expressao -> expressao . binop expressao [ SUBTRACAO SOMA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHAPARENTESE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## expressao -> READ ABREPARENTESE expressao . FECHAPARENTESE [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## READ ABREPARENTESE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: READ ABREPARENTESE WRITE 
##
## Ends in an error in state: 6.
##
## expressao -> READ ABREPARENTESE . expressao FECHAPARENTESE [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## READ ABREPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: READ WRITE 
##
## Ends in an error in state: 5.
##
## expressao -> READ . ABREPARENTESE expressao FECHAPARENTESE [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## READ 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: RETURN END 
##
## Ends in an error in state: 84.
##
## chunk -> block . EOF [ # ]
##
## The known suffix of the stack is as follows:
## block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 67, spurious reduction of production option(expressao) -> 
## In state 68, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 70, spurious reduction of production retstat -> RETURN option(expressao) option(PONTOEVIRGULA) 
## In state 72, spurious reduction of production option(retstat) -> retstat 
## In state 73, spurious reduction of production block -> list(stat) option(retstat) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: RETURN STRING WRITE 
##
## Ends in an error in state: 71.
##
## expressao -> expressao . binop expressao [ SUBTRACAO SOMA PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE AND ]
## option(expressao) -> expressao . [ PONTOEVIRGULA EOF END ELSE ]
##
## The known suffix of the stack is as follows:
## expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: RETURN WRITE 
##
## Ends in an error in state: 67.
##
## retstat -> RETURN . option(expressao) option(PONTOEVIRGULA) [ EOF END ELSE ]
##
## The known suffix of the stack is as follows:
## RETURN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: STRING ATRIBUICAO STRING VIRGULA 
##
## Ends in an error in state: 65.
##
## expressao -> expressao . binop expressao [ WRITE WHILE SUBTRACAO STRING SOMA RETURN READ OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE AND ABREPARENTESE ]
## stat -> expressao ATRIBUICAO expressao . [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## expressao ATRIBUICAO expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: STRING ATRIBUICAO WRITE 
##
## Ends in an error in state: 64.
##
## stat -> expressao ATRIBUICAO . expressao [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## expressao ATRIBUICAO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: STRING SUBTRACAO STRING UNTIL 
##
## Ends in an error in state: 30.
##
## expressao -> expressao . binop expressao [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
## expressao -> expressao binop expressao . [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## expressao binop expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: STRING SUBTRACAO WRITE 
##
## Ends in an error in state: 29.
##
## expressao -> expressao binop . expressao [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## expressao binop 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: STRING WRITE 
##
## Ends in an error in state: 63.
##
## expressao -> expressao . binop expressao [ SUBTRACAO SOMA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DIVISAO DIFERENTE ATRIBUICAO AND ]
## stat -> expressao . ATRIBUICAO expressao [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: SUBTRACAO STRING UNTIL 
##
## Ends in an error in state: 14.
##
## expressao -> expressao . binop expressao [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
## expressao -> unop expressao . [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## unop expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: SUBTRACAO WRITE 
##
## Ends in an error in state: 13.
##
## expressao -> unop . expressao [ WRITE WHILE VIRGULA SUBTRACAO STRING SOMA RETURN READ PONTOEVIRGULA OR NOT MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR INT IGUALDADE IF ID FUNCTION FLOAT FECHAPARENTESE EXPONENCIACAO EOF END ELSE DIVISAO DIFERENTE ATRIBUICAO AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## unop 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: VIRGULA 
##
## Ends in an error in state: 0.
##
## chunk' -> . chunk [ # ]
##
## The known suffix of the stack is as follows:
## 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WHILE ABREPARENTESE STRING FECHAPARENTESE DO RETURN ELSE 
##
## Ends in an error in state: 81.
##
## stat -> WHILE ABREPARENTESE expressao FECHAPARENTESE DO block . END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE ABREPARENTESE expressao FECHAPARENTESE DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 67, spurious reduction of production option(expressao) -> 
## In state 68, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 70, spurious reduction of production retstat -> RETURN option(expressao) option(PONTOEVIRGULA) 
## In state 72, spurious reduction of production option(retstat) -> retstat 
## In state 73, spurious reduction of production block -> list(stat) option(retstat) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WHILE ABREPARENTESE STRING FECHAPARENTESE DO VIRGULA 
##
## Ends in an error in state: 41.
##
## stat -> WHILE ABREPARENTESE expressao FECHAPARENTESE DO . block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE ABREPARENTESE expressao FECHAPARENTESE DO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WHILE ABREPARENTESE STRING FECHAPARENTESE WRITE 
##
## Ends in an error in state: 40.
##
## stat -> WHILE ABREPARENTESE expressao FECHAPARENTESE . DO block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE ABREPARENTESE expressao FECHAPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WHILE ABREPARENTESE STRING WRITE 
##
## Ends in an error in state: 39.
##
## expressao -> expressao . binop expressao [ SUBTRACAO SOMA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHAPARENTESE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## stat -> WHILE ABREPARENTESE expressao . FECHAPARENTESE DO block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE ABREPARENTESE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WHILE ABREPARENTESE WRITE 
##
## Ends in an error in state: 38.
##
## stat -> WHILE ABREPARENTESE . expressao FECHAPARENTESE DO block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE ABREPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WHILE WRITE 
##
## Ends in an error in state: 37.
##
## stat -> WHILE . ABREPARENTESE expressao FECHAPARENTESE DO block END [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WRITE ABREPARENTESE STRING WRITE 
##
## Ends in an error in state: 35.
##
## expressao -> expressao . binop expressao [ SUBTRACAO SOMA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHAPARENTESE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## stat -> WRITE ABREPARENTESE expressao . FECHAPARENTESE [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WRITE ABREPARENTESE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WRITE ABREPARENTESE WRITE 
##
## Ends in an error in state: 2.
##
## stat -> WRITE ABREPARENTESE . expressao FECHAPARENTESE [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WRITE ABREPARENTESE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

chunk: WRITE WRITE 
##
## Ends in an error in state: 1.
##
## stat -> WRITE . ABREPARENTESE expressao FECHAPARENTESE [ WRITE WHILE SUBTRACAO STRING RETURN READ NOT INT IF ID FUNCTION FLOAT EOF END ELSE ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WRITE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

