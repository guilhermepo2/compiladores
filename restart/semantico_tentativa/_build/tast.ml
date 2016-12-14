open Ast

type expressao =
	  ExpVar of (expressao variavel) * tipo
	| ExpInt of int * tipo
	| ExpVoid (*of unit * tipo *)
	| ExpFloat of float * tipo
	| ExpString of string * tipo
	| ExpOpBin of (binop * tipo) * (expressao * tipo) * (expressao * tipo)
	| ExpOpUn of (unop * tipo) * (expressao * tipo)
	| ExpChamada of id * (expressao expressoes) * tipo
