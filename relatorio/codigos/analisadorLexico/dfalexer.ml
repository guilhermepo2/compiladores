type estado = int
type entrada = string
type simbolo = char
type posicao = int

type dfa = {
  transicao : estado -> simbolo -> estado;
  estado: estado;
  posicao: posicao
}

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

type estado_lexico = {
   pos_inicial: posicao; (* posição inicial na string *)
   pos_final: posicao; (* posicao na string ao encontrar um estado final recente *)
   ultimo_final: estado; (* último estado final encontrado *)
   dfa : dfa;
   rotulo : estado -> entrada -> token
}

let estado_morto:estado = -1

let estado_inicial:estado = 0

let eh_letra (c:simbolo) = ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')

let eh_digito (c:simbolo) = '0' <= c && c <= '9'

let eh_branco (c:simbolo) = c = ' ' || c = '\t' || c = '\n'

let eh_estado_final e el =
  let rotulo = el.rotulo in
  try
      let _ = rotulo e "" in true
  with _ -> false

let obtem_token_e_estado (str:entrada) el =
  let inicio =  el.pos_inicial
  and fim = el.pos_final
  and estado_final = el.ultimo_final
  and rotulo = el.rotulo in
  let tamanho = fim - inicio + 1 in
  let lexema = String.sub str inicio tamanho in
  let token = rotulo estado_final lexema in
  let proximo_el = { el with pos_inicial = fim + 1;
                             pos_final = -1;
                             ultimo_final = -1;
                             dfa = { el.dfa with estado = estado_inicial;
                                                 posicao = fim + 1 }}
  in
   (token, proximo_el)


let rec analisador (str:entrada) tam el =
  let posicao_atual = el.dfa.posicao
  and estado_atual = el.dfa.estado in
  if posicao_atual >= tam
  then
    if el.ultimo_final >= 0
    then let token, proximo_el = obtem_token_e_estado str el in
      [token; EOF]
    else [EOF]
  else
    let simbolo = str.[posicao_atual]
    and transicao = el.dfa.transicao in
    let proximo_estado = transicao estado_atual simbolo in
    if proximo_estado = estado_morto
    then let token, proximo_el = obtem_token_e_estado str el in
      token :: analisador str tam proximo_el
    else
      let proximo_el =
        if eh_estado_final proximo_estado el
        then { el with pos_final = posicao_atual;
                       ultimo_final = proximo_estado;
                       dfa = { el.dfa with estado = proximo_estado;
                                           posicao = posicao_atual + 1 }}
        else { el with dfa = { el.dfa with estado = proximo_estado;
                                           posicao = posicao_atual + 1 }}
      in
      analisador str tam proximo_el

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
in let dfa = { transicao = trans;
               estado = estado_inicial;
               posicao = 0 }
in let estado_lexico = {
  pos_inicial = 0;
  pos_final = -1;
  ultimo_final = -1;
  rotulo = rotulo;
  dfa = dfa
} in
  analisador str (String.length str) estado_lexico
