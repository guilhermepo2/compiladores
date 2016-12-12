open Ast

type expressao =
  | ExpVar of ident pos
  | ExpInt of int pos
  | ExpString of string pos
  | ExpBool of bool pos
  | ExpOp of binop pos * expressao * expressao
  | ExpChamada of ident pos * (expressao list)
