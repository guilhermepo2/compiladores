{
  open Sintatico
  open Lexing
  open Printf

  exception Erro of string

  let incr_num_linha lexbuf =
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d:%d: caracter desconhecido %c" lin col c
}

let digito = ['0' - '9']
let inteiro = digito+
let float = '-'? digito+ '.'? digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "-- " [^ '\r' '\n' ]*

rule token =
  parse
|  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| "--[["       { comentario_bloco 0 lexbuf }
| '('        { ABREPARENTESE }
| ')'        { FECHAPARENTESE }
| '['        { ABRECOLCHETE }
| ']'        { FECHACOLCHETE }
| '{'        { ABRECHAVES }
| '}'        { FECHACHAVES }

| '+'	     { SOMA }
| '-'	     { SUBTRACAO }
| '*'	     { MULTIPLICACAO }
| '/'	     { DIVISAO }
| '%'	     { MODULO }
| '^'	     { EXPONENCIACAO }

| "=="	     { IGUALDADE }
| "~="	     { DIFERENTE }
| ">="	     { MAIORIGUAL }
| "<="	     { MENORIGUAL }
| '>'	     { MAIOR }
| '<'	     { MENOR }

| '#'          { QUADRADO }
| ':'	     { DOISPONTOS }
| "::"	     { DOISDOISPONTOS }
| ';'	     { PONTOEVIRGULA }
| ','	     { VIRGULA }
| '.'	     { PONTO }
| ".."	     { PONTOPONTO }
| "..."	     { PONTOPONTOPONTO }

| "="       { ATRIBUICAO }
| inteiro as num { let numero = int_of_string num in
                    INT numero  }
| float { FLOAT (float_of_string (Lexing.lexeme lexbuf))}
| "and"      { AND }
| "break"    { BREAK }
| "do"	     { DO }
| "else"     { ELSE }
| "elseif"   { ELSEIF }
| "end"	     { END }
| "false"    { FALSE }
| "for"      { FOR }
| "function" { FUNCTION }
| "goto"     { GOTO }
| "if"       { IF }
| "in" 	     { IN }
| "local"    { LOCAL }
| "nil"	     { NIL }
| "not"	     { NOT }
| "or"	     { OR }
| "repeat"   { REPEAT }
| "return"   { RETURN }
| "then"     { THEN }
| "true"     { TRUE }
| "until"    { UNTIL }
| "while"    { WHILE }

| identificador as id { ID id }
| '"'        { let buffer = Buffer.create 1 in
               let str = leia_string buffer lexbuf in
                STRING str }
| _ as c  { (raise (Erro (msg_erro lexbuf c))) }
| eof        { EOF }
and comentario_bloco n = parse
   "]]"   { if n=0 then token lexbuf
            else comentario_bloco (n-1) lexbuf }
| "--[["    { comentario_bloco (n+1) lexbuf }
| _       { comentario_bloco n lexbuf }
| eof     { raise (Erro ("Comentario não foi fechado")) }
and leia_string buffer = parse
   '"'    { Buffer.contents buffer}
| "\\t"   { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"   { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\'  { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof     { raise (Erro ("A string nao foi fechada")) }
