
%{
  open Ast
%}

%token READ
%token WRITE
%token ABREPARENTESE
%token FECHAPARENTESE
%token ABRECOLCHETE
%token FECHACOLCHETE
%token ABRECHAVES
%token FECHACHAVES
%token DOISPONTOS
%token DOISDOISPONTOS

%token PONTOEVIRGULA
%token VIRGULA
%token QUADRADO

%token PONTO
%token PONTOPONTO
%token PONTOPONTOPONTO

%token ATRIBUICAO
%token SOMA
%token SUBTRACAO
%token MULTIPLICACAO
%token DIVISAO
%token MODULO
%token EXPONENCIACAO
%token IGUALDADE
%token DIFERENTE
%token MENORIGUAL
%token MAIORIGUAL
%token MENOR
%token MAIOR

%token AND
%token BREAK
%token DO
%token ELSE
%token ELSEIF
%token END
%token FALSE
%token FOR
%token FUNCTION
%token GOTO
%token IF
%token IN
%token LOCAL
%token NIL
%token NOT
%token OR
%token REPEAT
%token RETURN
%token THEN
%token TRUE
%token UNTIL
%token WHILE

%token <int> INT
%token <string> STRING
%token <string> ID
%token <float> FLOAT
%token EOF

%start <Ast.programa> chunk

%%

chunk:
  | b=block EOF { BLOCO }
  ;

block:
  | s=stat* r=retstat? { }
  ;

(* stat = comandos *)
stat:
  | PONTOEVIRGULA { }                                                               (* PONTO E VIRGULA *)
  | esq=expressao ATRIBUICAO dir=expressao { }                                            (* ATRIBUICAO *)
  | f=functioncall { }                                                              (* CHAMADA DE FUNCAO *)
  (* | BREAK { }                                                                       (* BREAK *) *)

  (* IMPRIMIR NA TELA *)
  | WRITE ABREPARENTESE e=expressao FECHAPARENTESE { }

  | WHILE ABREPARENTESE e=expressao FECHAPARENTESE
    DO
    b=block
    END { }                                                  (* WHILE *)

  | IF ABREPARENTESE e=expressao FECHAPARENTESE
    THEN
    entao=block
    senao=option(ELSE senaoentao=block { })
    END { }

  (* FOR *)
  | FOR e=expressao ATRIBUICAO dir=expressao VIRGULA vai_ate=expressao incremento=expressao
  DO
  b = block
  END { }

  (* CRIACAO DE FUNCAO *)
  | FUNCTION funcname=ID ABREPARENTESE args=separated_list(VIRGULA,expressao) FECHAPARENTESE
      b = block
    END {  }
  (* | LOCAL n=namelist a=atribuicao_explist_rule? { }                                 (* VARIAVEL LOCAL *) *)
  ;

functioncall:
  nome_fun=ID ABREPARENTESE args=separated_list(VIRGULA, expressao) FECHAPARENTESE { }

(* retstat = retorno do stat *)
retstat:
  | RETURN e=expressao? PONTOEVIRGULA? {  }        (* Retorna uma lista de expressoes *)
  ;

(* DEFINICAO DE EXPRESSAO *)
expressao:
  | v=variavel { }
  | i=INT { }
  | f=FLOAT { }
  | s=STRING { }
  | e1=expressao b=binop e2=expressao { }
  | u=unop e=expressao { }  (* UMA EXPRESSAO PODE SER ALGO COM UM OPERADOR UNARIO *)
  | ABREPARENTESE e=expressao FECHAPARENTESE { }  (* Uma expressao pode ser uma expressao entre parenteses *)
  | f=functioncall { } (* CHAMADA DE FUNCAO *)

  (* LER INPUT *)
  | READ ABREPARENTESE e=expressao FECHAPARENTESE { }
  ;

variavel:
  | x=ID { }
  ;


(* OPERADORES *)
binop:
  | SOMA { }                                                                   (* OK *)
  | SUBTRACAO { }                                                         (* OK *)
  | MULTIPLICACAO {  }                                                 (* OK *)
  | DIVISAO {  }                                                             (* OK *)
  | EXPONENCIACAO {  }                                                 (* OK *)
  | MODULO {  }                                                               (* OK *)
  | PONTOPONTO {  }                                                       (* OK *)
  | MENOR {  }                                                                 (* OK *)
  | MENORIGUAL {  }                                                       (* OK *)
  | MAIOR {  }                                                                 (* OK *)
  | MAIORIGUAL {  }                                                       (* OK *)
  | IGUALDADE {  }                                                         (* OK *)
  | DIFERENTE {  }                                                         (* OK *)
  | AND {  }                                                                     (* OK *)
  | OR {  }                                                                       (* OK *)
  ;

unop:
  | SUBTRACAO {  }                                                        (* OK *)
  | NOT {  }                                                                     (* OK *)
  | QUADRADO {  }                                                           (* OK *)
  ;
