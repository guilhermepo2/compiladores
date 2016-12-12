open Printf
open Lexing

open Ast
exception Erro_Sintatico of string

module S = MenhirLib.General (* Streams *)
module I = Sintatico.MenhirInterpreter

open Semantico

let message =
  fun s ->
    match s with
    | 1 ->
        "WHILE WHILE? ISSO NEM EXISTE\n"
    | 193 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 194 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 195 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 0 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 152 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 50 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 51 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 49 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 67 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 68 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 153 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 198 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 23 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 183 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 184 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 182 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 147 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 25 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 15 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 17 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 14 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 26 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 27 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 104 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 105 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 106 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 169 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 170 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 171 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 172 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 180 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 175 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 177 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 35 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 78 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 37 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 11 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 12 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 21 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 187 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 22 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 185 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 31 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 98 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 96 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 32 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 33 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 79 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 80 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 81 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 82 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 83 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 84 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 140 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 141 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 142 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 150 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 39 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 41 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 42 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 138 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 43 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 44 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 74 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 75 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 107 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 109 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 110 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 111 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 113 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 116 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 120 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 122 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 123 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 163 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 164 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 165 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 166 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 167 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 124 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 125 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 126 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 127 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 128 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 129 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 131 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 160 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 132 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 133 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 135 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 158 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 30 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 99 ->
        "<MENSAGEM DE ERRO AQUI>\n"
    | 143 ->
        "<MENSAGEM DE ERRO AQUI>\n"
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
  let fornecedor = I.lexer_lexbuf_to_supplier Lualexer.token lexbuf in
  I.loop_handle sucesso (falha lexbuf) fornecedor resultado


let parse_com_erro lexbuf =
  try
    Some (loop lexbuf (Sintatico.Incremental.chunk lexbuf.lex_curr_p))
  with
  | Lualexer.Erro msg ->
     printf "Erro c na %s:\n\t%s\n" (posicao lexbuf) msg;
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

(* Para compilar:
     ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib semanticoTest.byte

   Para usar, entre no ocaml

     rlwrap ocaml

   e se desejar ver apenas a árvore sintática que sai do analisador sintático, digite

     parse_arq "exemplos/ex2.tip";;

   Depois, para ver a saída do analisador semântico já com a árvore anotada com
   o tipos, digite:

   verifica_tipos "exemplos/ex2.tip";;

   Note que o analisador semântico está retornando também o ambiente global. Se
   quiser separá-los, digite:

   let (arv, amb) = verifica_tipos "exemplos/ex2.tip";;



 *)
