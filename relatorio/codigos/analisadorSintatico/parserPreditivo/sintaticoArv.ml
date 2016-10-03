(* Parser preditivo *)
#load "lexico.cmo";;
open Sintatico;;

type regras = REGRA_A of tokens
            | REGRA_B of tokens
            | REGRA_C of tokens
            | REGRA_D of tokens
            | REGRA_E of tokens
            | REGRA_F of tokens
            | REGRA_X of tokens

type comando = If of expressao * comando * comando
             | Bloco of comando list
             | Print of expressao
and expressao = Igual of tokens * tokens

let tk = ref EOF (* variável global para o token atual *)
let lexbuf = ref (Lexing.from_string "")

(* lê o próximo token *)
let prox () = tk := Lexico.token !lexbuf

let to_str tk =
  match tk with
    A -> "a"
  | B -> "b"
  | C -> "c"
  | D -> "d"
  | E -> "e"
  | F -> "f"
  | EOF -> "eof"

let erro esp =
  let msg = Printf.sprintf "Erro: esperava %s mas encontrei %s"
                            esp (to_str !tk)
  in
  failwith msg

let consome t = if (!tk == t) then prox() else erro (to_str t)

let rec ntS () =
  match !tk with
    A     ->let expx = ntX () in
            let expy = ntY () in
            let expz = ntZ () in
            REGRA_A A
  | C     ->
             let expx = ntX() in
             let expy = ntY() in
             let expz = ntZ() in
             REGRA_C C
  | D     ->
             let expx = ntX() in
             let expy = ntY() in
             let expz = ntZ() in
             REGRA_D D
  | _ -> erro "a, c ou d"
and ntX () =
    match !tk with
      A -> let _ = consome A in
           let _ = Printf.printf "a" in
           let cmd = ntX() in
           let _ = consome B in
           let _ = Printf.printf "b" in
           REGRA_A A
    | _ -> REGRA_X VAZIO
and ntY () =
    match !tk with
        C -> let _ = consome C in
             let _ = Printf.printf "c" in
             let cmdy = ntY() in
             let cmdz = ntZ() in
             let _ = consome C in
             let _ = Printf.printf "c" in
             let cmdx = ntX() in
             REGRA_C C
      | D -> let _ = consome D in
             let _ = Printf.printf "d" in
             REGRA_D D
      | _ -> erro "c ou d"
and ntZ () =
    match !tk with
        E -> let _ = consome E in
             let _ = Printf.printf "e" in
             let cmdz = ntZ() in
             let cmdy = ntY() in
             let _ = consome E in
             let _ = Printf.printf "e" in
             REGRA_E E
      | F -> let _ = consome F in
             let _ = Printf.printf "f" in
             REGRA_F F
      | _ -> erro "e ou f"

let parser str =
  lexbuf := Lexing.from_string str;
  prox (); (* inicializa o token *)
  let arv = ntS () in
  match !tk with
    EOF -> let _ = Printf.printf "Tudo ok!\n" in arv
  | _ -> erro "fim da entrada"


let teste () =
    let entrada =
           "abcdfcf"
    in
    parser entrada
