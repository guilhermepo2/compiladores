{
    open Lexing
    open Printf

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
	sprintf "%d:%d: caractere desconhecido %c" lin col c

type tokens = ABREPARENTESE
     	    | FECHAPARENTESE
	    | ABRECOLCHETE
	    | FECHACOLCHETE
	    | ABRECHAVES
	    | FECHACHAVES
	    
	    | ATRIBUICAO
	    | INTEIRO of int
	    | STRING of string
	    | IDENTIFICADOR of string
	    | OPERADOR of string (* + - * / % ^ *)
	    | COMPARADOR of string (* == <= >= < > *)
	    | PONTOVIRGULA
	    | VIRGULA
	    | DOISPONTOS
	    | PONTO
	    | PONTOPONTO
	    | PONTOPONTOPONTO
	    
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
	    | EOF

}

let digito = ['0' - '9']
let inteiro = digito+

let letra = ['a'-'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "--" [^ '\r' '\n' ]*

rule token = parse
    brancos     { token lexbuf }
  | novalinha   { incr_num_linha lexbuf; token lexbuf }
  | comentario  { token lexbuf }
  | "--["       { comentario_bloco 0 lexbuf }
  | '('         { ABREPARENTESE }
  | ')'		{ FECHAPARENTESE}
  | '['         { ABRECOLCHETE  }
  | ']'         { FECHACOLCHETE }
  | '{'         { ABRECHAVES }
  | '}'         { FECHACHAVES }
  | '='         { ATRIBUICAO }
  | inteiro as num {let numero = int_of_string num in
    	       	   	INTEIRO numero }
  | "if"        { IF }
  | "while"     { WHILE }
  | identificador as id { ID id }
  | '"'         { let buffer = Buffer.create 1 in
    		   let str = leia_string buffer lexbuf in
		       STRING str }
  | _ as c      { failwith (msg_erro lexbuf c) }
  | eof         { EOF }
and comentario_bloco n = parse
     "]--"      { if n = 0 then token lexbuf
                  else comentario_bloco (n+1) lexbuf }
   | "--["      { comentario_bloco (n+1) lexbuf }
   | _          { comentario_bloco n lexbuf }
   | eof        { failwith "Comentario nao fechado" }
and leia_string buffer = parse
     '"'        { Buffer.contents buffer }
   | "\\t"   { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
   | "\\n"   { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
   | '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
   | '\\' '\\'  { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
   | _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
   | eof     { failwith "A string não foi fechada"}