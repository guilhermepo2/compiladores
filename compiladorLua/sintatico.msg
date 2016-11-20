chunk: ABREPARENTESE TRUE FECHAPARENTESE WHILE
##
## Ends in an error in state: 143.
##
## functioncall -> prefixexp . args [ WHILE UNTIL STRING RETURN REPEAT PONTOEVIRGULA PONTO LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO BREAK ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## functioncall -> prefixexp . DOISPONTOS ID args [ WHILE UNTIL STRING RETURN REPEAT PONTOEVIRGULA PONTO LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO BREAK ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## var -> prefixexp . ABRECOLCHETE exp FECHACOLCHETE [ VIRGULA STRING PONTO DOISPONTOS ATRIBUICAO ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## var -> prefixexp . PONTO ID [ VIRGULA STRING PONTO DOISPONTOS ATRIBUICAO ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp
##

<MENSAGEM DE ERRO AQUI>

chunk: ABREPARENTESE TRUE WHILE
##
## Ends in an error in state: 99.
##
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHAPARENTESE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## prefixexp -> ABREPARENTESE exp . FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE exp
##

<MENSAGEM DE ERRO AQUI>

chunk: ABREPARENTESE WHILE
##
## Ends in an error in state: 30.
##
## prefixexp -> ABREPARENTESE . exp FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE
##

<MENSAGEM DE ERRO AQUI>

chunk: DO RETURN ELSEIF
##
## Ends in an error in state: 158.
##
## stat -> DO block . END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DO block
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 152, spurious reduction of production option(explist) ->
## In state 153, spurious reduction of production option(PONTOEVIRGULA) ->
## In state 155, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA)
## In state 156, spurious reduction of production option(retstat) -> retstat
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
##

<MENSAGEM DE ERRO AQUI>

chunk: DO VIRGULA
##
## Ends in an error in state: 135.
##
## stat -> DO . block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DO
##

<MENSAGEM DE ERRO AQUI>

chunk: DOISDOISPONTOS ID WHILE
##
## Ends in an error in state: 133.
##
## label -> DOISDOISPONTOS ID . DOISDOISPONTOS [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DOISDOISPONTOS ID
##

<MENSAGEM DE ERRO AQUI>

chunk: DOISDOISPONTOS WHILE
##
## Ends in an error in state: 132.
##
## label -> DOISDOISPONTOS . ID DOISDOISPONTOS [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DOISDOISPONTOS
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID ATRIBUICAO TRUE VIRGULA TRUE DO RETURN ELSEIF
##
## Ends in an error in state: 160.
##
## stat -> FOR ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO block . END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO block
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 152, spurious reduction of production option(explist) ->
## In state 153, spurious reduction of production option(PONTOEVIRGULA) ->
## In state 155, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA)
## In state 156, spurious reduction of production option(retstat) -> retstat
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID ATRIBUICAO TRUE VIRGULA TRUE DO VIRGULA
##
## Ends in an error in state: 131.
##
## stat -> FOR ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO . block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID ATRIBUICAO TRUE VIRGULA TRUE VIRGULA TRUE WHILE
##
## Ends in an error in state: 129.
##
## comma_exp_rule -> VIRGULA exp . [ DO ]
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DO DIVISAO DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## VIRGULA exp
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID ATRIBUICAO TRUE VIRGULA TRUE VIRGULA WHILE
##
## Ends in an error in state: 128.
##
## comma_exp_rule -> VIRGULA . exp [ DO ]
##
## The known suffix of the stack is as follows:
## VIRGULA
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID ATRIBUICAO TRUE VIRGULA TRUE WHILE
##
## Ends in an error in state: 127.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DO DIVISAO DIFERENTE AND ]
## stat -> FOR ID ATRIBUICAO exp VIRGULA exp . option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp VIRGULA exp
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID ATRIBUICAO TRUE VIRGULA WHILE
##
## Ends in an error in state: 126.
##
## stat -> FOR ID ATRIBUICAO exp VIRGULA . exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp VIRGULA
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID ATRIBUICAO TRUE WHILE
##
## Ends in an error in state: 125.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## stat -> FOR ID ATRIBUICAO exp . VIRGULA exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID ATRIBUICAO WHILE
##
## Ends in an error in state: 124.
##
## stat -> FOR ID ATRIBUICAO . exp VIRGULA exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID IN TRUE DO RETURN ELSEIF
##
## Ends in an error in state: 167.
##
## stat -> FOR namelist IN explist DO block . END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist IN explist DO block
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 152, spurious reduction of production option(explist) ->
## In state 153, spurious reduction of production option(PONTOEVIRGULA) ->
## In state 155, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA)
## In state 156, spurious reduction of production option(retstat) -> retstat
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID IN TRUE DO VIRGULA
##
## Ends in an error in state: 166.
##
## stat -> FOR namelist IN explist DO . block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist IN explist DO
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID IN TRUE WHILE
##
## Ends in an error in state: 165.
##
## stat -> FOR namelist IN explist . DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist IN explist
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 49, spurious reduction of production list(virgula_exp_rule) ->
## In state 71, spurious reduction of production explist -> exp list(virgula_exp_rule)
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID IN WHILE
##
## Ends in an error in state: 164.
##
## stat -> FOR namelist IN . explist DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist IN
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID VIRGULA ID WHILE
##
## Ends in an error in state: 163.
##
## stat -> FOR namelist . IN explist DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 17, spurious reduction of production list(virgula_id_rule) ->
## In state 18, spurious reduction of production list(virgula_id_rule) -> virgula_id_rule list(virgula_id_rule)
## In state 19, spurious reduction of production namelist -> ID list(virgula_id_rule)
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR ID WHILE
##
## Ends in an error in state: 123.
##
## namelist -> ID . list(virgula_id_rule) [ IN ]
## stat -> FOR ID . ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID
##

<MENSAGEM DE ERRO AQUI>

chunk: FOR WHILE
##
## Ends in an error in state: 122.
##
## stat -> FOR . ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
## stat -> FOR . namelist IN explist DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR
##

<MENSAGEM DE ERRO AQUI>

chunk: FUNCTION ID DOISPONTOS ID WHILE
##
## Ends in an error in state: 120.
##
## stat -> FUNCTION funcname . funcbody [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION funcname
##

<MENSAGEM DE ERRO AQUI>

chunk: FUNCTION ID DOISPONTOS WHILE
##
## Ends in an error in state: 116.
##
## doispontos_id_rule -> DOISPONTOS . ID [ ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DOISPONTOS
##

<MENSAGEM DE ERRO AQUI>

chunk: FUNCTION ID PONTO ID WHILE
##
## Ends in an error in state: 113.
##
## list(ponto_id_rule) -> ponto_id_rule . list(ponto_id_rule) [ DOISPONTOS ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ponto_id_rule
##

<MENSAGEM DE ERRO AQUI>

chunk: FUNCTION ID PONTO WHILE
##
## Ends in an error in state: 111.
##
## ponto_id_rule -> PONTO . ID [ PONTO DOISPONTOS ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## PONTO
##

<MENSAGEM DE ERRO AQUI>

chunk: FUNCTION ID WHILE
##
## Ends in an error in state: 110.
##
## funcname -> ID . list(ponto_id_rule) option(doispontos_id_rule) [ ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ID
##

<MENSAGEM DE ERRO AQUI>

chunk: FUNCTION WHILE
##
## Ends in an error in state: 109.
##
## stat -> FUNCTION . funcname funcbody [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION
##

<MENSAGEM DE ERRO AQUI>

chunk: GOTO WHILE
##
## Ends in an error in state: 107.
##
## stat -> GOTO . ID [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## GOTO
##

<MENSAGEM DE ERRO AQUI>

chunk: ID ABRECOLCHETE TRUE WHILE
##
## Ends in an error in state: 75.
##
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACOLCHETE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## var -> prefixexp ABRECOLCHETE exp . FECHACOLCHETE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK ATRIBUICAO AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp ABRECOLCHETE exp
##

<MENSAGEM DE ERRO AQUI>

chunk: ID ABRECOLCHETE WHILE
##
## Ends in an error in state: 74.
##
## var -> prefixexp ABRECOLCHETE . exp FECHACOLCHETE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK ATRIBUICAO AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp ABRECOLCHETE
##

<MENSAGEM DE ERRO AQUI>

chunk: ID ABREPARENTESE TRUE EOF
##
## Ends in an error in state: 44.
##
## args -> ABREPARENTESE option(explist) . FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE option(explist)
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 49, spurious reduction of production list(virgula_exp_rule) ->
## In state 71, spurious reduction of production explist -> exp list(virgula_exp_rule)
## In state 48, spurious reduction of production option(explist) -> explist
##

<MENSAGEM DE ERRO AQUI>

chunk: ID ABREPARENTESE WHILE
##
## Ends in an error in state: 43.
##
## args -> ABREPARENTESE . option(explist) FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE
##

<MENSAGEM DE ERRO AQUI>

chunk: ID ATRIBUICAO WHILE
##
## Ends in an error in state: 138.
##
## stat -> varlist ATRIBUICAO . explist [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## varlist ATRIBUICAO
##

<MENSAGEM DE ERRO AQUI>

chunk: ID DOISPONTOS ID WHILE
##
## Ends in an error in state: 42.
##
## functioncall -> prefixexp DOISPONTOS ID . args [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp DOISPONTOS ID
##

<MENSAGEM DE ERRO AQUI>

chunk: ID DOISPONTOS WHILE
##
## Ends in an error in state: 41.
##
## functioncall -> prefixexp DOISPONTOS . ID args [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp DOISPONTOS
##

<MENSAGEM DE ERRO AQUI>

chunk: ID PONTO WHILE
##
## Ends in an error in state: 39.
##
## var -> prefixexp PONTO . ID [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK ATRIBUICAO AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp PONTO
##

<MENSAGEM DE ERRO AQUI>

chunk: ID STRING VIRGULA
##
## Ends in an error in state: 150.
##
## prefixexp -> functioncall . [ STRING PONTO DOISPONTOS ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## stat -> functioncall . [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## functioncall
##

<MENSAGEM DE ERRO AQUI>

chunk: ID VIRGULA ID WHILE
##
## Ends in an error in state: 142.
##
## prefixexp -> var . [ STRING PONTO DOISPONTOS ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## virgula_var_rule -> VIRGULA var . [ VIRGULA ATRIBUICAO ]
##
## The known suffix of the stack is as follows:
## VIRGULA var
##

<MENSAGEM DE ERRO AQUI>

chunk: ID VIRGULA WHILE
##
## Ends in an error in state: 141.
##
## virgula_var_rule -> VIRGULA . var [ VIRGULA ATRIBUICAO ]
##
## The known suffix of the stack is as follows:
## VIRGULA
##

<MENSAGEM DE ERRO AQUI>

chunk: ID WHILE
##
## Ends in an error in state: 140.
##
## prefixexp -> var . [ STRING PONTO DOISPONTOS ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## varlist -> var . list(virgula_var_rule) [ ATRIBUICAO ]
##
## The known suffix of the stack is as follows:
## var
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES ABRECOLCHETE TRUE FECHACOLCHETE ATRIBUICAO TRUE WHILE
##
## Ends in an error in state: 84.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACHAVES EXPONENCIACAO DIVISAO DIFERENTE AND ]
## field -> ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO exp . [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO exp
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES ABRECOLCHETE TRUE FECHACOLCHETE ATRIBUICAO WHILE
##
## Ends in an error in state: 83.
##
## field -> ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO . exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES ABRECOLCHETE TRUE FECHACOLCHETE WHILE
##
## Ends in an error in state: 82.
##
## field -> ABRECOLCHETE exp FECHACOLCHETE . ATRIBUICAO exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE exp FECHACOLCHETE
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES ABRECOLCHETE TRUE WHILE
##
## Ends in an error in state: 81.
##
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACOLCHETE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## field -> ABRECOLCHETE exp . FECHACOLCHETE ATRIBUICAO exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE exp
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES ABRECOLCHETE WHILE
##
## Ends in an error in state: 80.
##
## field -> ABRECOLCHETE . exp FECHACOLCHETE ATRIBUICAO exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES ID ATRIBUICAO TRUE WHILE
##
## Ends in an error in state: 79.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACHAVES EXPONENCIACAO DIVISAO DIFERENTE AND ]
## field -> ID ATRIBUICAO exp . [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ID ATRIBUICAO exp
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES ID ATRIBUICAO WHILE
##
## Ends in an error in state: 33.
##
## field -> ID ATRIBUICAO . exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ID ATRIBUICAO
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES ID WHILE
##
## Ends in an error in state: 32.
##
## field -> ID . ATRIBUICAO exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
## var -> ID . [ VIRGULA SUBTRACAO STRING SOMA PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACHAVES EXPONENCIACAO DOISPONTOS DIVISAO DIFERENTE AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ID
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES TRUE VIRGULA WHILE
##
## Ends in an error in state: 96.
##
## fieldsep_field_rule -> fieldsep . field [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## fieldsep
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES TRUE WHILE
##
## Ends in an error in state: 98.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACHAVES EXPONENCIACAO DIVISAO DIFERENTE AND ]
## field -> exp . [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## exp
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ABRECHAVES WHILE
##
## Ends in an error in state: 31.
##
## tableconstructor -> ABRECHAVES . option(fieldlist) FECHACHAVES [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECHAVES
##

<MENSAGEM DE ERRO AQUI>

chunk: IF FUNCTION ABREPARENTESE FECHAPARENTESE RETURN ELSEIF
##
## Ends in an error in state: 185.
##
## funcbody -> ABREPARENTESE option(parlist) FECHAPARENTESE block . END [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE option(parlist) FECHAPARENTESE block
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 152, spurious reduction of production option(explist) ->
## In state 153, spurious reduction of production option(PONTOEVIRGULA) ->
## In state 155, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA)
## In state 156, spurious reduction of production option(retstat) -> retstat
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
##

<MENSAGEM DE ERRO AQUI>

chunk: IF FUNCTION ABREPARENTESE FECHAPARENTESE VIRGULA
##
## Ends in an error in state: 22.
##
## funcbody -> ABREPARENTESE option(parlist) FECHAPARENTESE . block END [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE option(parlist) FECHAPARENTESE
##

<MENSAGEM DE ERRO AQUI>

chunk: IF FUNCTION ABREPARENTESE ID WHILE
##
## Ends in an error in state: 187.
##
## parlist -> namelist . option(virgula_tres_pontos_rule) [ FECHAPARENTESE ]
##
## The known suffix of the stack is as follows:
## namelist
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 14, spurious reduction of production list(virgula_id_rule) ->
## In state 19, spurious reduction of production namelist -> ID list(virgula_id_rule)
##

<MENSAGEM DE ERRO AQUI>

chunk: IF FUNCTION ABREPARENTESE PONTOPONTOPONTO FECHACOLCHETE
##
## Ends in an error in state: 21.
##
## funcbody -> ABREPARENTESE option(parlist) . FECHAPARENTESE block END [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE option(parlist)
##

<MENSAGEM DE ERRO AQUI>

chunk: IF FUNCTION ABREPARENTESE WHILE
##
## Ends in an error in state: 12.
##
## funcbody -> ABREPARENTESE . option(parlist) FECHAPARENTESE block END [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE
##

<MENSAGEM DE ERRO AQUI>

chunk: IF FUNCTION WHILE
##
## Ends in an error in state: 11.
##
## functiondef -> FUNCTION . funcbody [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION
##

<MENSAGEM DE ERRO AQUI>

chunk: IF ID TRUE
##
## Ends in an error in state: 37.
##
## exp -> prefixexp . [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## functioncall -> prefixexp . args [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## functioncall -> prefixexp . DOISPONTOS ID args [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## var -> prefixexp . ABRECOLCHETE exp FECHACOLCHETE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## var -> prefixexp . PONTO ID [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp
##

<MENSAGEM DE ERRO AQUI>

chunk: IF SUBTRACAO TRUE TRUE
##
## Ends in an error in state: 78.
##
## exp -> exp . binop exp [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## exp -> unop exp . [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## unop exp
##

<MENSAGEM DE ERRO AQUI>

chunk: IF SUBTRACAO WHILE
##
## Ends in an error in state: 35.
##
## exp -> unop . exp [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## unop
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE THEN ELSE PONTOEVIRGULA UNTIL
##
## Ends in an error in state: 177.
##
## stat -> IF exp THEN block list(elseif_rule) option(else_block_rule) . END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF exp THEN block list(elseif_rule) option(else_block_rule)
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 147, spurious reduction of production list(stat) ->
## In state 148, spurious reduction of production list(stat) -> stat list(stat)
## In state 151, spurious reduction of production option(retstat) ->
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
## In state 176, spurious reduction of production else_block_rule -> ELSE block
## In state 179, spurious reduction of production option(else_block_rule) -> else_block_rule
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE THEN ELSE VIRGULA
##
## Ends in an error in state: 175.
##
## else_block_rule -> ELSE . block [ END ]
##
## The known suffix of the stack is as follows:
## ELSE
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE THEN ELSEIF TRUE THEN BREAK UNTIL
##
## Ends in an error in state: 180.
##
## list(elseif_rule) -> elseif_rule . list(elseif_rule) [ END ELSE ]
##
## The known suffix of the stack is as follows:
## elseif_rule
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 147, spurious reduction of production list(stat) ->
## In state 148, spurious reduction of production list(stat) -> stat list(stat)
## In state 151, spurious reduction of production option(retstat) ->
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
## In state 173, spurious reduction of production elseif_rule -> ELSEIF exp THEN block
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE THEN ELSEIF TRUE THEN VIRGULA
##
## Ends in an error in state: 172.
##
## elseif_rule -> ELSEIF exp THEN . block [ END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## ELSEIF exp THEN
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE THEN ELSEIF TRUE WHILE
##
## Ends in an error in state: 171.
##
## elseif_rule -> ELSEIF exp . THEN block [ END ELSEIF ELSE ]
## exp -> exp . binop exp [ THEN SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DIVISAO DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## ELSEIF exp
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE THEN ELSEIF WHILE
##
## Ends in an error in state: 170.
##
## elseif_rule -> ELSEIF . exp THEN block [ END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## ELSEIF
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE THEN RETURN UNTIL
##
## Ends in an error in state: 169.
##
## stat -> IF exp THEN block . list(elseif_rule) option(else_block_rule) END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF exp THEN block
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 152, spurious reduction of production option(explist) ->
## In state 153, spurious reduction of production option(PONTOEVIRGULA) ->
## In state 155, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA)
## In state 156, spurious reduction of production option(retstat) -> retstat
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE THEN VIRGULA
##
## Ends in an error in state: 106.
##
## stat -> IF exp THEN . block list(elseif_rule) option(else_block_rule) END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF exp THEN
##

<MENSAGEM DE ERRO AQUI>

chunk: IF TRUE WHILE
##
## Ends in an error in state: 105.
##
## exp -> exp . binop exp [ THEN SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## stat -> IF exp . THEN block list(elseif_rule) option(else_block_rule) END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF exp
##

<MENSAGEM DE ERRO AQUI>

chunk: IF WHILE
##
## Ends in an error in state: 104.
##
## stat -> IF . exp THEN block list(elseif_rule) option(else_block_rule) END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF
##

<MENSAGEM DE ERRO AQUI>

chunk: LOCAL ID ATRIBUICAO WHILE
##
## Ends in an error in state: 27.
##
## atribuicao_explist_rule -> ATRIBUICAO . explist [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ATRIBUICAO
##

<MENSAGEM DE ERRO AQUI>

chunk: LOCAL ID FECHAPARENTESE
##
## Ends in an error in state: 26.
##
## stat -> LOCAL namelist . option(atribuicao_explist_rule) [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## LOCAL namelist
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 14, spurious reduction of production list(virgula_id_rule) ->
## In state 19, spurious reduction of production namelist -> ID list(virgula_id_rule)
##

<MENSAGEM DE ERRO AQUI>

chunk: LOCAL ID TRUE
##
## Ends in an error in state: 14.
##
## namelist -> ID . list(virgula_id_rule) [ WHILE VIRGULA UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ATRIBUICAO ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ID
##

<MENSAGEM DE ERRO AQUI>

chunk: LOCAL ID VIRGULA ID TRUE
##
## Ends in an error in state: 17.
##
## list(virgula_id_rule) -> virgula_id_rule . list(virgula_id_rule) [ WHILE VIRGULA UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IN IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ATRIBUICAO ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## virgula_id_rule
##

<MENSAGEM DE ERRO AQUI>

chunk: LOCAL ID VIRGULA WHILE
##
## Ends in an error in state: 15.
##
## virgula_id_rule -> VIRGULA . ID [ WHILE VIRGULA UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IN IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ATRIBUICAO ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## VIRGULA
##

<MENSAGEM DE ERRO AQUI>

chunk: LOCAL WHILE
##
## Ends in an error in state: 25.
##
## stat -> LOCAL . namelist option(atribuicao_explist_rule) [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## LOCAL
##

<MENSAGEM DE ERRO AQUI>

chunk: PONTOEVIRGULA VIRGULA
##
## Ends in an error in state: 147.
##
## list(stat) -> stat . list(stat) [ UNTIL RETURN EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## stat
##

<MENSAGEM DE ERRO AQUI>

chunk: REPEAT RETURN EOF
##
## Ends in an error in state: 182.
##
## stat -> REPEAT block . UNTIL exp [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## REPEAT block
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 152, spurious reduction of production option(explist) ->
## In state 153, spurious reduction of production option(PONTOEVIRGULA) ->
## In state 155, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA)
## In state 156, spurious reduction of production option(retstat) -> retstat
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
##

<MENSAGEM DE ERRO AQUI>

chunk: REPEAT UNTIL TRUE VIRGULA
##
## Ends in an error in state: 184.
##
## exp -> exp . binop exp [ WHILE UNTIL SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## stat -> REPEAT block UNTIL exp . [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## REPEAT block UNTIL exp
##

<MENSAGEM DE ERRO AQUI>

chunk: REPEAT UNTIL WHILE
##
## Ends in an error in state: 183.
##
## stat -> REPEAT block UNTIL . exp [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## REPEAT block UNTIL
##

<MENSAGEM DE ERRO AQUI>

chunk: REPEAT VIRGULA
##
## Ends in an error in state: 23.
##
## stat -> REPEAT . block UNTIL exp [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## REPEAT
##

<MENSAGEM DE ERRO AQUI>

chunk: RETURN END
##
## Ends in an error in state: 198.
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
## In state 152, spurious reduction of production option(explist) ->
## In state 153, spurious reduction of production option(PONTOEVIRGULA) ->
## In state 155, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA)
## In state 156, spurious reduction of production option(retstat) -> retstat
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
##

<MENSAGEM DE ERRO AQUI>

chunk: RETURN TRUE DOISDOISPONTOS
##
## Ends in an error in state: 153.
##
## retstat -> RETURN option(explist) . option(PONTOEVIRGULA) [ UNTIL EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## RETURN option(explist)
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 49, spurious reduction of production list(virgula_exp_rule) ->
## In state 71, spurious reduction of production explist -> exp list(virgula_exp_rule)
## In state 48, spurious reduction of production option(explist) -> explist
##

<MENSAGEM DE ERRO AQUI>

chunk: RETURN TRUE SUBTRACAO TRUE TRUE
##
## Ends in an error in state: 68.
##
## exp -> exp . binop exp [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## exp -> exp binop exp . [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## exp binop exp
##

<MENSAGEM DE ERRO AQUI>

chunk: RETURN TRUE SUBTRACAO WHILE
##
## Ends in an error in state: 67.
##
## exp -> exp binop . exp [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## exp binop
##

<MENSAGEM DE ERRO AQUI>

chunk: RETURN TRUE TRUE
##
## Ends in an error in state: 49.
##
## exp -> exp . binop exp [ WHILE VIRGULA UNTIL SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## explist -> exp . list(virgula_exp_rule) [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## exp
##

<MENSAGEM DE ERRO AQUI>

chunk: RETURN TRUE VIRGULA TRUE TRUE
##
## Ends in an error in state: 51.
##
## exp -> exp . binop exp [ WHILE VIRGULA UNTIL SUBTRACAO SOMA RETURN REPEAT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## virgula_exp_rule -> VIRGULA exp . [ WHILE VIRGULA UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## VIRGULA exp
##

<MENSAGEM DE ERRO AQUI>

chunk: RETURN TRUE VIRGULA WHILE
##
## Ends in an error in state: 50.
##
## virgula_exp_rule -> VIRGULA . exp [ WHILE VIRGULA UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## VIRGULA
##

<MENSAGEM DE ERRO AQUI>

chunk: RETURN WHILE
##
## Ends in an error in state: 152.
##
## retstat -> RETURN . option(explist) option(PONTOEVIRGULA) [ UNTIL EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## RETURN
##

<MENSAGEM DE ERRO AQUI>

chunk: VIRGULA
##
## Ends in an error in state: 0.
##
## chunk' -> . chunk [ # ]
##
## The known suffix of the stack is as follows:
##
##

<MENSAGEM DE ERRO AQUI>

chunk: WHILE TRUE DO RETURN ELSEIF
##
## Ends in an error in state: 195.
##
## stat -> WHILE exp DO block . END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE exp DO block
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 152, spurious reduction of production option(explist) ->
## In state 153, spurious reduction of production option(PONTOEVIRGULA) ->
## In state 155, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA)
## In state 156, spurious reduction of production option(retstat) -> retstat
## In state 157, spurious reduction of production block -> list(stat) option(retstat)
##

<MENSAGEM DE ERRO AQUI>

chunk: WHILE TRUE DO VIRGULA
##
## Ends in an error in state: 194.
##
## stat -> WHILE exp DO . block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE exp DO
##

<MENSAGEM DE ERRO AQUI>

chunk: WHILE TRUE WHILE
##
## Ends in an error in state: 193.
##
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DO DIVISAO DIFERENTE AND ]
## stat -> WHILE exp . DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE exp
##

<MENSAGEM DE ERRO AQUI>

chunk: WHILE WHILE
##
## Ends in an error in state: 1.
##
## stat -> WHILE . exp DO block END [ WHILE UNTIL RETURN REPEAT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE
##

WHILE WHILE? ISSO NEM EXISTE
