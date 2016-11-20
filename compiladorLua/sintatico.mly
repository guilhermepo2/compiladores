%{
  open Ast
%}

%token ABREPARENTESE
%token FECHAPARENTESE
%token ABRECOLCHETE
%token FECHACOLCHETE
%token ABRECHAVES
%token FECHACHAVES
%token DOISPONTOS
%token DOISDOISPONTOS

%token PONTOEVIRGULA
%token VIRGULA
%token QUADRADO

%token PONTO
%token PONTOPONTO
%token PONTOPONTOPONTO

%token ATRIBUICAO
%token SOMA
%token SUBTRACAO
%token MULTIPLICACAO
%token DIVISAO
%token MODULO
%token EXPONENCIACAO
%token IGUALDADE
%token DIFERENTE
%token MENORIGUAL
%token MAIORIGUAL
%token MENOR
%token MAIOR

%token AND
%token BREAK
%token DO
%token ELSE
%token ELSEIF
%token END
%token FALSE
%token FOR
%token FUNCTION
%token GOTO
%token IF
%token IN
%token LOCAL
%token NIL
%token NOT
%token OR
%token REPEAT
%token RETURN
%token THEN
%token TRUE
%token UNTIL
%token WHILE

%token <int> INT
%token <string> STRING
%token <string> ID
%token <float> FLOAT
%token EOF

%start <Ast.programa> chunk

%%

chunk:
  | b=block EOF { Programa(b) }                                                                   (* OK *)
  ;

block:
  | s=stat* r=retstat? { Bloco(s,r) }                                                             (* OK *)
  ;

stat:
  | PONTOEVIRGULA { PontoeVirgula }                                                               (* OK *)
  | vl=varlist ATRIBUICAO el=explist { Atribuicao(vl, el) }                                       (* OK *)
  | f=functioncall { StatFunctionCall(f) }                                                        (* OK *)
  | l=label { StatLabel(l) }                                                                      (* OK *)
  | BREAK { Break }                                                                               (* OK *)
  | GOTO i=ID { Goto(i) }                                                                         (* OK *)
  | DO b=block END { StatBloco(b) }                                                               (* OK *)
  | WHILE e=exp DO b=block END { While(e,b) }                                                     (* OK *)
  | REPEAT b=block UNTIL e=exp { Repeat(b,e) }                                                    (* OK *)
  | IF e=exp THEN b=block el=elseif_rule* es=else_block_rule? END { If(e,b,el,es) }               (* OK *)
  | FOR i=ID ATRIBUICAO e=exp VIRGULA ec=exp c=comma_exp_rule? DO b=block END { For(i,e,ec,c,b) } (* OK *)
  | FOR nl=namelist IN el=explist DO b=block END { Forlist(nl,el,b) }                             (* OK *)
  | FUNCTION fn=funcname fb=funcbody { FunctionDefinition(fn,fb) }                                (* OK *)
  | LOCAL n=namelist a=atribuicao_explist_rule? { Local(n,a) }                                    (* OK *)
  ;

(* AUXILIARES PARA A REGRA STAT *)
elseif_rule:
  | ELSEIF e=exp THEN b=block { Elseif(e,b) }                                                     (* OK *)
  ;

else_block_rule:
  | ELSE b=block { Else(b) }                                                                      (* OK *)
  ;

comma_exp_rule:
  | VIRGULA e=exp { Virgula(e) }                                                                  (* OK *)
  ;
atribuicao_explist_rule:
  | ATRIBUICAO e=explist { Atribuicao(e) }                                                        (* OK *)
  ;
  (* --------------------------- *)

retstat:
  | RETURN e=explist? PONTOEVIRGULA? { Retorno (e) }                                              (* OK *)
  ;

label:
  | DOISDOISPONTOS i=ID DOISDOISPONTOS { Label(i) }                                               (* OK *)
  ;

funcname:
  | i=ID p=ponto_id_rule* d=doispontos_id_rule? { FuncName (i, p, d) }                            (* OK *)
  ;

  (* auxiliares para funcname *)

ponto_id_rule:
  | PONTO i=ID { Ponto(i) }                                                                       (* OK *)
  ;
doispontos_id_rule:
  | DOISPONTOS i=ID { Doispontos(i) }                                                             (* OK *)
  ;
  (* --------------------------- *)

varlist:
  | v1=var v=virgula_var_rule* { Varlist(v1, v) }                                                 (* OK *)
  ;
  (* auxiliares var list *)
virgula_var_rule:
  | VIRGULA v=var { Variavel(v) }                                                                 (* OK *)
  ;
  (* --------------------------- *)

var:
  | i=ID { Identificador(i) }                                                                     (* OK *)
  | p=prefixexp ABRECOLCHETE e=exp FECHACOLCHETE { VarCol(p,e) }                                  (* OK *)
  | p=prefixexp PONTO i=ID { SeparadoPonto(p,i) }                                                 (* OK *)
  ;

namelist:
  | i=ID vi=virgula_id_rule* { NameList(i, vi) }                                                  (* OK *)
  ;
  (* namelist auxiliares *)
virgula_id_rule:
  | VIRGULA i=ID { Name(i) }                                                                      (* OK *)
  ;
  (* --------------------------- *)

explist:
  | e=exp e2=virgula_exp_rule* { Explist(e, e2) }                                                 (* OK *)
  ;
  (* auxiliar para explist *)

virgula_exp_rule:
  | VIRGULA e=exp { Expression(e)  }                                                              (* OK *)
  ;
  (* --------------------------- *)

exp:
  | NIL { Nil }                                                                     (* OK *)
  | FALSE { False }                                                                 (* OK *)
  | TRUE { True }                                                                   (* OK *)
  | i=INT { Int(i) }                                                                (* OK *)
  | f=FLOAT { Float(f) }                                                            (* OK *)
  | s=STRING { String(s) }                                                          (* OK *)
  | PONTOPONTOPONTO { Pontopontoponto }                                             (* OK *)
  | f=functiondef { FunctionDef(f) }                                                (* OK *)
  | p=prefixexp { ExpPrefixExp(p) }                                                 (* OK *)
  | t=tableconstructor { TableConstructor(t) }                                      (* OK *)
  | e1=exp b=binop e2=exp { ExpBinop(b,e1,e2) }                                     (* OK *)
  | u=unop e=exp { ExpUnop(u,e) }                                                   (* OK *)
  ;

prefixexp:
  | v=var { PrefixExpVar (v) }                                                      (* OK *)
  | f=functioncall { PrefixExpFunctionCall(f) }                                     (* OK *)
  | ABREPARENTESE e=exp FECHAPARENTESE { PrefixExpParentese(e) }                    (* OK *)
  ;

functioncall:
  | p=prefixexp a=args { FunctionCallPA(p, a) }                                     (* OK *)
  | p=prefixexp DOISPONTOS i=ID a=args { PrefixoDoisPontosIdArgs(p,i,a) }           (* OK *)
  ;

args:
  | ABREPARENTESE e=explist? FECHAPARENTESE { ArgsExp(e) }                          (* OK *)
  | t=tableconstructor { TableConstructor(t) }                                      (* OK *)
  | s=STRING { Args(s) }                                                            (* OK *)
  ;

functiondef:
  | FUNCTION f=funcbody { FunctionDef(f) }                                          (* OK *)
  ;

funcbody:
  | ABREPARENTESE p=parlist? FECHAPARENTESE b=block END { FuncBody (p,b) }          (* OK *)
  ;

parlist:
  | n=namelist v=virgula_tres_pontos_rule? { NameListVirgula(n,v) }                 (* OK *)
  | PONTOPONTOPONTO { Pontopontoponto }                                             (* OK *)
  ;
  (* parlist auxiliar *)
virgula_tres_pontos_rule:
  | VIRGULA PONTOPONTOPONTO { VirgulaPPP }                                          (* OK *)
  ;
  (* --------------------------- *)

tableconstructor:
  | ABRECHAVES f=fieldlist? FECHACHAVES { FieldList(f) }                            (* OK *)
  ;

fieldlist:
  | f=field ffr=fieldsep_field_rule* fs=fieldsep? { FieldLists(f, ffr, fs) }        (* OK *)
  ;
  (* auxiliar fieldlist *)
fieldsep_field_rule:
  | fs=fieldsep f=field { FieldSepField(fs, f) }                                    (* OK *)
  ;
  (* --------------------------- *)

field:
  | ABRECOLCHETE e=exp FECHACOLCHETE ATRIBUICAO e2=exp { Campo1(e, e2) }            (* OK *)
  | i=ID ATRIBUICAO e=exp { Campo2(i,e) }                                           (* OK *)
  | e=exp { Campo3(e) }                                                             (* OK *)
  ;

fieldsep:
  | VIRGULA { Virgula }                                                             (* OK *)
  | PONTOEVIRGULA { PontoEVirgula }                                                 (* OK *)
  ;

binop:
  | SOMA { Soma }                                                                   (* OK *)
  | SUBTRACAO { Subtracao }                                                         (* OK *)
  | MULTIPLICACAO { Multiplicacao }                                                 (* OK *)
  | DIVISAO { Divisao }                                                             (* OK *)
  | EXPONENCIACAO { Exponenciacao }                                                 (* OK *)
  | MODULO { Modulo }                                                               (* OK *)
  | PONTOPONTO { Pontoponto }                                                       (* OK *)
  | MENOR { Menor }                                                                 (* OK *)
  | MENORIGUAL { MenorIgual }                                                       (* OK *)
  | MAIOR { Maior }                                                                 (* OK *)
  | MAIORIGUAL { MaiorIgual }                                                       (* OK *)
  | IGUALDADE { Igualdade }                                                         (* OK *)
  | DIFERENTE { Diferente }                                                         (* OK *)
  | AND { And }                                                                     (* OK *)
  | OR { Or }                                                                       (* OK *)
  ;

unop:
  | SUBTRACAO { Decremento }                                                        (* OK *)
  | NOT { Not }                                                                     (* OK *)
  | QUADRADO { Quadrado }                                                           (* OK *)
  ;
