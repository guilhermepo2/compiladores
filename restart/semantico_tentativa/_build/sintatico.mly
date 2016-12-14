
%{
  open Lexing
  open Ast
  open Sast
%}

%token <Lexing.position> READ
%token <Lexing.position> WRITE
%token <Lexing.position> ABREPARENTESE
%token <Lexing.position> FECHAPARENTESE
%token <Lexing.position> ABRECOLCHETE
%token <Lexing.position> FECHACOLCHETE
%token <Lexing.position> ABRECHAVES
%token <Lexing.position> FECHACHAVES
%token <Lexing.position> DOISPONTOS
%token <Lexing.position> DOISDOISPONTOS

%token <Lexing.position> PONTOEVIRGULA
%token <Lexing.position> VIRGULA
%token <Lexing.position> QUADRADO

%token <Lexing.position> PONTO
%token <Lexing.position> PONTOPONTO
%token <Lexing.position> PONTOPONTOPONTO

%token <Lexing.position> ATRIBUICAO
%token <Lexing.position> SOMA
%token <Lexing.position> SUBTRACAO
%token <Lexing.position> MULTIPLICACAO
%token <Lexing.position> DIVISAO
%token <Lexing.position> MODULO
%token <Lexing.position> EXPONENCIACAO
%token <Lexing.position> IGUALDADE
%token <Lexing.position> DIFERENTE
%token <Lexing.position> MENORIGUAL
%token <Lexing.position> MAIORIGUAL
%token <Lexing.position> MENOR
%token <Lexing.position> MAIOR

%token <Lexing.position> AND
%token <Lexing.position> BREAK
%token <Lexing.position> DO
%token <Lexing.position> ELSE
%token <Lexing.position> ELSEIF
%token <Lexing.position> END
%token <Lexing.position> FALSE
%token <Lexing.position> FOR
%token <Lexing.position> FUNCTION
%token <Lexing.position> GOTO
%token <Lexing.position> IF
%token <Lexing.position> IN
%token <Lexing.position> LOCAL
%token <Lexing.position> NIL
%token <Lexing.position> NOT
%token <Lexing.position> OR
%token <Lexing.position> REPEAT
%token <Lexing.position> RETURN
%token <Lexing.position> THEN
%token <Lexing.position> TRUE
%token <Lexing.position> UNTIL
%token <Lexing.position> WHILE

%token <int * Lexing.position> INT
%token <string * Lexing.position> STRING
%token <string * Lexing.position> ID
%token <float * Lexing.position> FLOAT
%token EOF

%start <Sast.expressao Ast.programa> chunk

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

  | f=functioncall { f }                                                              (* CHAMADA DE FUNCAO *)

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
  | v=variavel { ExpVar v }
  | i=INT { ExpInt i }
  | f=FLOAT { ExpFloat f}
  | s=STRING { ExpString s }
  | e1=expressao b=binop e2=expressao { ExpOpBin(b,e1,e2) }
  | u=unop e=expressao { ExpOpUn(u,e) }  (* UMA EXPRESSAO PODE SER ALGO COM UM OPERADOR UNARIO *)
  | ABREPARENTESE e=expressao FECHAPARENTESE { e }  (* Uma expressao pode ser uma expressao entre parenteses *)

  (* | f=functioncall { f } (* CHAMADA DE FUNCAO *) *)

  (* LER INPUT *)
  | READ ABREPARENTESE e=expressao FECHAPARENTESE { ExpLeitura }
  ;

variavel:
  | x=ID { VarSimples x }
  ;


(* OPERADORES *)
binop:
  | pos = SOMA { (Soma,pos) }                                                                   (* OK *)
  | pos = SUBTRACAO { (Subtracao,pos) }                                                         (* OK *)
  | pos = MULTIPLICACAO { (Multiplicacao,pos)  }                                                 (* OK *)
  | pos = DIVISAO { (Divisao,pos)  }                                                             (* OK *)
  | pos = EXPONENCIACAO { (Exponenciacao,pos)  }                                                 (* OK *)
  | pos = MODULO { (Modulo,pos)  }                                                               (* OK *)
  | pos = MENOR { (Menor,pos) }                                                                 (* OK *)
  | pos = MENORIGUAL { (MenorIgual,pos)  }                                                       (* OK *)
  | pos = MAIOR { (Maior,pos) }                                                                 (* OK *)
  | pos = MAIORIGUAL { (MaiorIgual,pos) }                                                       (* OK *)
  | pos = IGUALDADE { (Igualdade,pos) }                                                         (* OK *)
  | pos = DIFERENTE { (Diferente,pos) }                                                         (* OK *)
  | pos = AND { (And,pos) }                                                                     (* OK *)
  | pos = OR { (Or,pos) }                                                                       (* OK *)
  ;

unop:
  | pos = SUBTRACAO { (Negativo,pos) }
  | pos = NOT { (Not,pos) }
  ;
