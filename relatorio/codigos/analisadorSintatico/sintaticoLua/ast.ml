type tokens = ABREPARENTESE
      | FECHAPARENTESE
	    | ABRECOLCHETE
	    | FECHACOLCHETE
	    | ABRECHAVES
	    | FECHACHAVES
	    | DOISPONTOS
	    | DOISDOISPONTOS

	    | PONTOEVIRGULA
	    | VIRGULA
	    | QUADRADO

	    | PONTO
	    | PONTOPONTO
	    | PONTOPONTOPONTO

      | ATRIBUICAO

	    | OPERADOR of string
      | SOMA
      | SUBTRACAO
      | MULTIPLICACAO
      | DIVISAO
      | MODULO
      | EXPONENCIACAO

	    | COMPARADOR of string
      | IGUALDADE
      | DIFERENTE
      | MENORIGUAL
      | MAIORIGUAL
      | MENOR
      | MAIOR

	    | AND
	    | BREAK
	    | DO
	    | ELSE
	    | ELSEIF
	    | END
	    | FALSE
	    | FOR
	    | FUNCTION
	    | GOTO
      | IF
	    | IN
	    | LOCAL
	    | NIL
	    | NOT
	    | OR
	    | REPEAT
	    | RETURN
	    | THEN
	    | TRUE
	    | UNTIL
      | WHILE

      | INT of int
      | STRING of string
      | FLOAT of float
      | ID of string
      | EOF
