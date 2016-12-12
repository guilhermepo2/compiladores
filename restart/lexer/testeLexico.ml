#load "lexer.cmo";;

let rec tokens lexbuf =
  let tok = Lexer.token lexbuf in
  match tok with
  | Lexer.EOF -> [Lexer.EOF]
  | _ -> tok :: tokens lexbuf
;;

let lexico str =
  let lexbuf = Lexing.from_string str in
  tokens lexbuf
;;

let lex arq =
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let toks = tokens lexbuf in
  let _ = close_in ic in
  toks

(*
ocamllex lexer.mll
ocamlc lexer.ml
rlwrap ocaml

#use "testeLexico.ml";;
*)
