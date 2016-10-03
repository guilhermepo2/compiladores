(* Parser preditivo *)
#load "lexico.cmo";;
open Sintatico;;

type regra = REGRA_S_XYZ of regra * regra * regra
            | REGRA_X_AXB of tokens * regra * tokens
            | REGRA_Y_CYZCX of tokens * regra * regra * tokens * regra
            | REGRA_Y_D of tokens
            | REGRA_Z_EZYE of tokens * regra * regra * tokens
            | REGRA_Z_F of tokens
            | REGRA_X_VAZIO

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
            REGRA_S_XYZ(expx, expy, expz)
  | C     ->
             let expx = ntX() in
             let expy = ntY() in
             let expz = ntZ() in
             REGRA_S_XYZ(expx, expy, expz)
  | D     ->
             let expx = ntX() in
             let expy = ntY() in
             let expz = ntZ() in
             REGRA_S_XYZ(expx, expy, expz)
  | _ -> erro "a, c ou d"
and ntX () =
    match !tk with
      A -> let _ = consome A in
           let cmd = ntX() in
           let _ = consome B in
           REGRA_X_AXB (A, cmd, B)
    | _ -> REGRA_X_VAZIO
and ntY () =
    match !tk with
        C -> let _ = consome C in
             let cmdy = ntY() in
             let cmdz = ntZ() in
             let _ = consome C in
             let cmdx = ntX() in
             REGRA_Y_CYZCX(C, cmdy, cmdz, C, cmdx)
      | D -> let _ = consome D in
             REGRA_Y_D D
      | _ -> erro "c ou d"
and ntZ () =
    match !tk with
        E -> let _ = consome E in
             let cmdz = ntZ() in
             let cmdy = ntY() in
             let _ = consome E in
             REGRA_Z_EZYE (E,cmdz,cmdy,E)
      | F -> let _ = consome F in
             REGRA_Z_F F
      | _ -> erro "e ou f"

let parser str =
  lexbuf := Lexing.from_string str;
  prox (); (* inicializa o token *)
  let arv = ntS () in
  match !tk with
    EOF -> let _ = Printf.printf "Ok!\n" in arv
  | _ -> erro "fim da entrada"


let teste () =
    let entrada =
           "abcdfcf"
    in
    parser entrada
