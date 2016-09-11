type token =
 | If
 | Then
 | Else
 | AbreParentese
 | FechaParentese
 | Comparador of string
 | Operador of string
 | Atribuicao
 | PontoVirgula
 | Id of string
 | Int of string
 | Print
 | Branco
 | EOF

let lexico (str:entrada) =
  let trans (e:estado) (c:simbolo) =
    match (e,c) with
    | (0, 'p') -> 1
    | (0, 'i') -> 6
    | (0, 't') -> 8
    | (0, 'e') -> 12
    | (0, '(') -> 18
    | (0, ')') -> 19
    | (0, '>') -> 20
    | (0, '+') -> 21
    | (0, '-') -> 21
    | (0, '*') -> 21
    | (0, '=') -> 22
    | (0, ';') -> 23
    | (0, _) when eh_letra c -> 16
    | (0, _) when eh_digito c -> 17
    | (0, _) when eh_branco c -> 24
    | (0, _) ->
        failwith ("Erro lexico: caracter desconhecido " ^ Char.escaped c)

    | (1, 'r') -> 2
    | (1, _) when eh_letra c || eh_digito c -> 16

    | (2, 'i') -> 3
    | (2, _) when eh_letra c || eh_digito c -> 16

    | (3, 'n') -> 4
    | (3, _) when eh_letra c || eh_digito c -> 16

    | (4, 't') -> 5
    | (4, _) when eh_letra c || eh_digito c -> 16

    | (5, _) when eh_letra c || eh_digito c -> 16

    | (6, 'f') -> 7

    | (7, _) when eh_letra c || eh_digito c -> 16

    | (8, 'h') -> 9
    | (8, _) when eh_letra c || eh_digito c -> 16

    | (9, 'e') -> 10
    | (9, _)  when eh_letra c || eh_digito c -> 16

    | (10, 'n') -> 11
    | (10, _) when eh_letra c || eh_digito c -> 16

    | (11, _) when eh_letra c || eh_digito c -> 16

    | (12, 'l') -> 13
    | (12, _) when eh_letra c || eh_digito c -> 16

    | (13, 's') -> 14
    | (13,  _) when eh_letra c || eh_digito c -> 16

    | (14, 'e') -> 15
    | (14, _) when eh_letra c || eh_digito c -> 16

    | (15, _) when eh_letra c || eh_digito c -> 16

    | (16, _) when eh_letra c || eh_digito c -> 16

    | (17, _) when eh_digito c -> 17

    | (24, _) when eh_branco c -> 24
    | _ -> estado_morto
 and rotulo e str =
  match e with
  | 7 -> If
  | 5 -> Print
  | 11 -> Then
  | 15 -> Else
  | 18 -> AbreParentese
  | 19 -> FechaParentese
  | 20 -> Comparador str
  | 21 -> Operador str
  | 22 -> Atribuicao
  | 23 -> PontoVirgula
  | 1
  | 2
  | 3
  | 4
  | 6
  | 8
  | 9
  | 10
  | 12
  | 13
  | 14
  | 16 -> Id str
  | 17 -> Int str
  | 24 -> Branco
  | _ -> failwith ("Erro lexico: sequencia desconhecida " ^ str)
