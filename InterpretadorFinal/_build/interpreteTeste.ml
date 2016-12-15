open Printf
open Lexing

open Ast
exception Erro_Sintatico of string

module S = MenhirLib.General (* Streams *)
module I = Sintatico.MenhirInterpreter

open Semantico


(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Esperava um programa.\n"
    | 49 ->
        "Esperava um '('\n"
    | 50 ->
        "Esperava uma expressão\n"
    | 99 ->
        "Esperava um operador binário ou um ')'\n"
    | 100 ->
        "Esperava a palavra chave 'DO'\n"
    | 101 ->
        "Esperava uma lista de comandos.\n"
    | 156 ->
        "Esperava uma lista de comandos após BEGIN\n"
    | 128 ->
        "Operação Inválida, após uma expressão faça uma atribuição, utilize um operador binário ou separe por virgula caso esteja chamando ou declarando uma função.\n"
    | 97 ->
        "Esperava por mais expressões ou por um ')'\n"
    | 124 ->
        "Erro após expressão\n"
    | 63 ->
        "Esperava uma expressão após o operador\n"
    | 64 ->
        "Esperava um operador ou um ')'\n"
    | 65 ->
        "Esperava por uma expressão\n"
    | 66 ->
        "Esperava por um operador ou um ')'\n"
    | 69 ->
        "Esperava por uma expressão\n"
    | 70 ->
        "Esperava por um operador ou um ')'\n"
    | 67 ->
        "Esperava por uma expressao\n"
    | 68 ->
        "Esperava por um operador ou um ')'\n"
    | 73 ->
        "Esperava por uma expressao\n"
    | 74 ->
        "Esperava por um operador ou um ')'\n"
    | 75 ->
        "Esperava por uma expressao\n"
    | 76 ->
        "Esperava por um operador ou um ')'\n"
    | 71 ->
        "Esperava uma expressao\n"
    | 72 ->
        "Esperava por um operador ou um ')'\n"
    | 82 ->
        "Esperava uma expressao\n"
    | 83 ->
        "Esperava por um operador ou um ')'\n"
    | 84 ->
        "Esperava uma expressao\n"
    | 85 ->
        "Esperava por um operador ou um ')'\n"
    | 86 ->
        "Esperava uma expressao\n"
    | 87 ->
        "Esperava por um operador ou um ')'\n"
    | 77 ->
        "Esperava uma expressao\n"
    | 78 ->
        "Esperava por um operador ou um ')'\n"
    | 88 ->
        "Espera uma expressao\n"
    | 89 ->
        "Esperava por um operador ou um ')'\n"
    | 80 ->
        "Esperava uma expressão após a concatenação.\n"
    | 81 ->
        "Esperava por um operador ou um ')'\n"
    | 129 ->
        "Esperava por uma expressão após a atribuição\n"
    | 130 ->
        "Esperava por um operador ou um ')'\n"
    | 102 ->
        "Esperava por um '('\n"
    | 103 ->
        "Esperava por uma expressão no teste do if\n"
    | 104 ->
        "Esperava por um operador ou um ')'\n"
    | 105 ->
        "Esperava pela palavra chave THEN\n"
    | 106 ->
        "Esperava por uma lista de comandos após o BEGIN\n"
    | 145 ->
        "Esperava por um else ou pela palavra chave end\n"
    | 143 ->
        "Esperava uma lista de comandos para o else\n"
    | 147 ->
        "Esperava pela palavra chave end\n"
    | 107 ->
        "Esperava uma por um '('\n"
    | 108 ->
        "Esperava por uma lista de expressoes ou um ')'\n"
    | 109 ->
        "Esperava um ')'\n"
    | 111 ->
        "Erro após o retorno\n"
    | 113 ->
        "Esperava um operador ou operação inválida após o retorno\n"
    | 139 ->
        "Esperava por uma lista de comandos\n"
    | 53 ->
        "Esperava um '(' ou um operador para a variavel\n"
    | 59 ->
        "Esperava um por identificador após o ponto\n"
    | 58 ->
        "Esperava por uma operação na expressão, por um ponto ou por um '['\n"
    | 54 ->
        "Esperava por expressoes ou por um ')'\n"
    | 96 ->
        "Esperava por um operador, um ')' ou por outra expressão separada por vírgula\n"
    | 94 ->
        "Esperava por um ')'\n"
    | 141 ->
        "Erro após chamada de função\n"
    | 61 ->
        "Esperava uma expressão após '['\n"
    | 62 ->
        "Esperava por um operador ou um ']'\n"
    | 114 ->
        "Esperava por uma expressao após o for\n"
    | 115 ->
        "Esperava um operador ou por uma virgula para separar as expressoes\n"
    | 116 ->
        "Esperava por uma expressao apos a virgula\n"
    | 117 ->
        "Esperava por um operador ou por uma virgula\n"
    | 118 ->
        "Esperava por uma expressao após a vírgula\n"
    | 119 ->
        "Esperava pelo passo do for\n"
    | 120 ->
        "Esperava por um inteiro\n"
    | 122 ->
        "Esperava pela palavra chave 'do'\n"
    | 123 ->
        "Esperava por uma lista de comandos\n"
    | 158 ->
        "Esperava pelo fim do programa\n"
    | 57 ->
        "Esperava uma expressão após '('\n"
    | 91 ->
        "Esperava por um operador ou um ')'\n"
    | 1 ->
        "Esperava por um vírgula ou dois pontos após o identificador\n"
    | 2 ->
        "Esperava por um identificador após a virgula\n"
    | 5 ->
        "Esperava pela declaração do tipo da variavel\n"
    | 6 ->
        "Erro após declaração de registro\n"
    | 7 ->
        "Esperava por dois pontos e o tipo após o identificador\n"
    | 8 ->
        "Esperava pela declaração do tipo da variavel\n"
    | 25 ->
        "Esperava pela palavra chave end ou por uma lista de registros\n"
    | 28 ->
        "Esperava por um registro\n"
    | 153 ->
        "Esperava por declaração de variaveis\n"
    | 13 ->
        "Esperava por um '['\n"
    | 14 ->
        "Esperava algo após o '['\n"
    | 15 ->
        "Erro na declaração do arranjo depois de '['\n"
    | 16 ->
        "Erro na declaração de arranjo, esperava um inteiro\n"
    | 18 ->
        "Esperava um ']'\n"
    | 19 ->
        "Esperava pela declaração do tipo do arranjo\n"
    | 20 ->
        "Esperava pela declaração do tipo do arranjo\n"
    | 33 ->
        "Esperava pelo nome da função\n"
    | 34 ->
        "Esperava por um '('\n"
    | 35 ->
        "Esperava pelos argumentos da função ou um ')'\n"
    | 36 ->
        "Esperava pelo tipo do argumento de entrada da função\n"
    | 37 ->
        "Esperava pelo tipo do parametro\n"
    | 40 ->
        "Esperava por um ')' ou por mais argumentos separados por vírgula\n"
    | 41 ->
        "Esperava por mais parametros ou por um ')'\n"
    | 44 ->
        "Esperava pela declaração do tipo de retorno da função\n"
    | 45 ->
        "Esperava pela declaração do tipo de retorno da função\n"
    | 46 ->
        "Esperava pelas declarações de variáveis da função ou pela palavra chave begin\n"
    | 48 ->
        "Esperava pelo corpo da função ou pela palavra chave end\n"
    | 47 ->
        "Esperava pela palavra chave begin\n"
    | 160 ->
        "Esperava por mais uma declaração de função ou pelo início do programa.\n"
    | _ ->
        raise Not_found


let posicao lexbuf =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "linha %d, coluna %d" lin col

(* [pilha checkpoint] extrai a pilha do autômato LR(1) contida em checkpoint *)

let pilha checkpoint =
  match checkpoint with
  | I.HandlingError amb -> I.stack amb
  | _ -> assert false (* Isso não pode acontecer *)

let estado checkpoint : int =
  match Lazy.force (pilha checkpoint) with
  | S.Nil -> (* O parser está no estado inicial *)
     0
  | S.Cons (I.Element (s, _, _, _), _) ->
     I.number s

let sucesso v = Some v

let falha lexbuf (checkpoint : (Sast.expressao Ast.programa) I.checkpoint) =
  let estado_atual = estado checkpoint in
  let msg = message estado_atual in
  raise (Erro_Sintatico (Printf.sprintf "%d - %s.\n"
                                      (Lexing.lexeme_start lexbuf) msg))

let loop lexbuf resultado =
  let fornecedor = I.lexer_lexbuf_to_supplier Lexico.token lexbuf in
  I.loop_handle sucesso (falha lexbuf) fornecedor resultado


let parse_com_erro lexbuf =
  try
    Some (loop lexbuf (Sintatico.Incremental.programa lexbuf.lex_curr_p))
  with
  | Lexico.Erro msg ->
     printf "Erro lexico na %s:\n\t%s\n" (posicao lexbuf) msg;
     None
  | Erro_Sintatico msg ->
     printf "Erro sintático na %s %s\n" (posicao lexbuf) msg;
     None

let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = parse_com_erro lexbuf in
  ast

let parse_arq nome =
  let ic = open_in nome in
  let lexbuf = Lexing.from_channel ic in
  let ast = parse_com_erro lexbuf in
  let _ = close_in ic in
  ast

let verifica_tipos nome =
  let ast = parse_arq nome in
  match ast with
    Some (Some ast) -> semantico ast
  | _ -> failwith "Nada a fazer!\n"


let interprete nome =
  let tast,amb = verifica_tipos nome in
  Interprete.interprete tast

(* TESTAR LEXER *)

let rec tokens lexbuf =
  let tok = Lexico.token lexbuf in
  match tok with
  | EOF -> [Sintatico.EOF]
  | _ -> tok :: tokens lexbuf
;;

let lex arq =
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let toks = tokens lexbuf in
  let _ = close_in ic in
  toks

(* TESTAR SINTATICO *)
