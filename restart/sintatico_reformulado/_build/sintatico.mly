
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
  | b=block EOF { Programa(b) }
  ;

block:
  | s=stat* r=retstat? { Bloco(s,r) }
  ;

(* stat = comandos *)
stat:
  | esq=expressao ATRIBUICAO dir=expressao { CmdAttrib(esq,dir) }                        (* ATRIBUICAO *)

  | f=functioncall { ChamadaFuncao(f) }                                                              (* CHAMADA DE FUNCAO *)

  (* IMPRIMIR NA TELA *)
  | WRITE ABREPARENTESE e=expressao FECHAPARENTESE { Escrever(e) }

  (* WHILE *)
  | WHILE ABREPARENTESE e=expressao FECHAPARENTESE
    DO
    b=block
    END { While(e,b) }

  | IF ABREPARENTESE e=expressao FECHAPARENTESE
    THEN
    entao=block
    senao=option(ELSE senaoentao=block { Else(senaoentao) })
    END { If(e, entao, senao) }

  (* CRIACAO DE FUNCAO *)
  | FUNCTION funcname=ID ABREPARENTESE args=separated_list(VIRGULA,expressao) FECHAPARENTESE
      b = block
    END { Funcao(funcname, args, b) }
  ;

functioncall:
  nome_fun=ID ABREPARENTESE args=separated_list(VIRGULA, expressao) FECHAPARENTESE { Chamada(nome_fun, args) }

(* retstat = retorno do stat *)
retstat:
  | RETURN e=expressao? PONTOEVIRGULA? { Retorno(e) }        (* Retorna uma lista de expressoes *)
  ;

(* DEFINICAO DE EXPRESSAO *)
expressao:
  | v=variavel { Variavel v }
  | i=INT { Int i }
  | f=FLOAT { Float f }
  | s=STRING { String s }
  | e1=expressao b=binop e2=expressao { BinOp(e1,b,e2) }
  | u=unop e=expressao { UnOp(u,e) }  (* UMA EXPRESSAO PODE SER ALGO COM UM OPERADOR UNARIO *)
  | ABREPARENTESE e=expressao FECHAPARENTESE { e }  (* Uma expressao pode ser uma expressao entre parenteses *)

  | f=functioncall { ExpChamada(f) } (* CHAMADA DE FUNCAO *)

  (* LER INPUT *)
  | READ ABREPARENTESE e=expressao FECHAPARENTESE { Leitura }
  ;

variavel:
  | x=ID { VarSimples x }
  ;


(* OPERADORES *)
binop:
  | SOMA { Soma }                                                                   (* OK *)
  | SUBTRACAO { Subtracao }                                                         (* OK *)
  | MULTIPLICACAO { Multiplicacao  }                                                 (* OK *)
  | DIVISAO { Divisao  }                                                             (* OK *)
  | EXPONENCIACAO { Exponenciacao  }                                                 (* OK *)
  | MODULO { Modulo  }                                                               (* OK *)
  | MENOR { Menor }                                                                 (* OK *)
  | MENORIGUAL { MenorIgual  }                                                       (* OK *)
  | MAIOR { Maior }                                                                 (* OK *)
  | MAIORIGUAL { MaiorIgual }                                                       (* OK *)
  | IGUALDADE { Igualdade }                                                         (* OK *)
  | DIFERENTE { Diferente }                                                         (* OK *)
  | AND { And }                                                                     (* OK *)
  | OR { Or }                                                                       (* OK *)
  ;

unop:
  | SUBTRACAO { Negativo }
  | NOT { Not }
  ;
