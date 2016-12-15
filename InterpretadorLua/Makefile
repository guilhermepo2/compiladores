gera-msg:
	menhir -v --list-errors sintatico.mly > sintatico.msg
gera-erros:
	menhir -v --list-errors sintatico.mly --compile-errors sintatico.msg > erroSint.ml

interprete:
	ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib interpreteTeste.byte
