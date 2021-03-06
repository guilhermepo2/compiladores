
(* The type of tokens. *)

type token = 
  | WRITE
  | WHILE
  | VIRGULA
  | UNTIL
  | TRUE
  | THEN
  | SUBTRACAO
  | STRING of (string)
  | SOMA
  | RETURN
  | REPEAT
  | READ
  | QUADRADO
  | PONTOPONTOPONTO
  | PONTOPONTO
  | PONTOEVIRGULA
  | PONTO
  | OR
  | NOT
  | NIL
  | MULTIPLICACAO
  | MODULO
  | MENORIGUAL
  | MENOR
  | MAIORIGUAL
  | MAIOR
  | LOCAL
  | INT of (int)
  | IN
  | IGUALDADE
  | IF
  | ID of (string)
  | GOTO
  | FUNCTION
  | FOR
  | FLOAT of (float)
  | FECHAPARENTESE
  | FECHACOLCHETE
  | FECHACHAVES
  | FALSE
  | EXPONENCIACAO
  | EOF
  | END
  | ELSEIF
  | ELSE
  | DOISPONTOS
  | DOISDOISPONTOS
  | DO
  | DIVISAO
  | DIFERENTE
  | BREAK
  | ATRIBUICAO
  | AND
  | ABREPARENTESE
  | ABRECOLCHETE
  | ABRECHAVES

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val chunk: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val chunk: Lexing.position -> (Ast.programa) MenhirInterpreter.checkpoint
  
end
