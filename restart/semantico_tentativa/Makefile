env:
	eval `opam config env`

gerar_erros:
	menhir -v --list-errors sintatico.mly > sintatico.msg
msg:
	menhir -v --list-errors sintatico.mly --compile-errors sintatico.msg > erroSint.ml

build:
	ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib sintaticoTest.byte

semantico:
	ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib semanticoTest.byte
