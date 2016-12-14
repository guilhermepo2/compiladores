type id = string

type programa =
  | Programa of bloco

and bloco =
  | Bloco of stat_list * retstat option

and stat_list = stat list

and stat =
  | CmdAttrib of expressao * expressao
  | ChamadaFuncao of functioncall
  | Escrever of expressao
  | While of expressao * bloco
  | Funcao of id * expressao list * bloco
  | If of expressao * bloco * else_regra option

and else_regra =
  | Else of bloco

and functioncall =
  | Chamada of id * expressao list

and retstat =
  | Retorno of expressao option

and variavel = VarSimples of id

and expressao =
  | Int of int
  | String of string
  | Float of float
  | Variavel of variavel
  | ExpChamada of functioncall
  | Leitura
  | UnOp of unop * expressao
  | BinOp of expressao * binop * expressao

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

and unop =
  | Negativo
  | Not
