open Ast

type expressao =
			| ExpVar of ident * tipo
		  | ExpInt of int * tipo
		  | ExpFloat of float * tipo
      | ExpString of string * tipo
		  | ExpOp of  (expressao * tipo) * (binop *tipo) * (expressao * tipo)
		  | ExpFunCall of ident * (expressao expressoes) * tipo
      | ExpBool of bool * tipo
