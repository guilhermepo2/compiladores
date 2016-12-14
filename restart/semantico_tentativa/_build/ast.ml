type id = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

type 'expr programa =
  | Programa of ('expr bloco)

and 'expr bloco =
  | Bloco of ('expr stat_list) * ('expr retstat option)

(* SEMANTICO *)
and tipo = TipoInt
         | TipoChar
         | TipoFloat
         | TipoBool
         | TipoVoid
         | TipoString

and 'expr stat_list = ('expr stat) list

and 'expr stat =
  | CmdAttrib of 'expr * 'expr
  | Chamada of id pos * ('expr expressoes)
  | Escrever of 'expr
  | While of 'expr * ('expr bloco)
  | Funcao of id pos * ('expr expressoes) * ('expr bloco)
  | If of 'expr * ('expr bloco) * ('expr else_regra) option

and 'expr else_regra =
  | Else of ('expr bloco)


and 'expr retstat =
  | Retorno of 'expr option

and 'expr variavel = VarSimples of id pos
and 'expr variaveis = ('expr variavel) list

and 'expr expressoes = 'expr list

and binop =
  | Soma
  | Subtracao
  | Multiplicacao
  | Divisao
  | Exponenciacao
  | Modulo
  | Menor
  | MenorIgual
  | Maior
  | MaiorIgual
  | Igualdade
  | Diferente
  | And
  | Or
  | Concat

and unop =
  | Negativo
  | Not
