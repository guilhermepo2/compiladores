open Ast

type expressao = ExpVar of ident * tipo
              | ExpInt of int * tipo
              | ExpString of string * tipo
              | ExpBool of bool * tipo
              | ExpOp of (binop * tipo) * (expressao * tipo) * (expressao * tipo)
              | ExpChamada of ident * (expressao list) * tipo
