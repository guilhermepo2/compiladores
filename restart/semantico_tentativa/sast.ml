open Ast

type expressao =
	  ExpVar of (expressao variavel)
	| ExpInt of int pos
	| ExpVoid of unit pos
	| ExpFloat of float pos
	| ExpString of string pos
	| ExpOpBin of binop pos * expressao * expressao
	| ExpOpUn of unop pos * expressao
	| ExpChamada of id pos * (expressao expressoes)
  | ExpLeitura
