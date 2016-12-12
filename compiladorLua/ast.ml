(* The type of the abstract syntax tree (AST). *)

type ident = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

type 'expr programa = Programa of 'expr bloco
and 'expr bloco = Bloco of ('expr stat_list) * ('expr retstat_option)

(* REFERENTES AO ANALISADOR SEMANTICO *)

and tipo = TipoNumber
         | TipoString
         | TipoBool
         | TipoNil
         | TipoFunction

and 'expr stat_list = ('expr stat) list
and 'expr stat =
        | Stat of string
        | PontoeVirgula
        | Break
        | Atribuicao of ('expr varlist) * ('expr explist)
        | StatFunctionCall of ('expr functioncall)
        | FunctionDefinition of funcname * ('expr funcbody)
        | If of ('expr exp) * ('expr bloco) * ('expr elseif) list * ('expr else_r) option
        | StatBloco of ('expr bloco)
        | StatLabel of label
        | Goto of string
        | Local of namelist * ('expr atribuicao_explist_rule) option
        | While of ('expr exp) * ('expr bloco)
        | Repeat of ('expr bloco) * ('expr exp)
        | Forlist of namelist * ('expr explist) * ('expr bloco)
        | For of string * ('expr exp) * ('expr exp) * ('expr comma_exp_rule) option * ('expr bloco)

and 'expr elseif = Elseif of ('expr exp) * ('expr bloco)
and 'expr else_r = Else of ('expr bloco)
and label = Label of string
and 'expr atribuicao_explist_rule = Atribuicao of ('expr explist)
and 'expr comma_exp_rule = Virgula of ('expr exp)

and 'expr varlist = Varlist of ('expr var) * ('expr variavel) list
and 'expr variavel = Variavel of ('expr var)
and 'expr var =
      | Identificador of string
      | SeparadoPonto of ('expr prefixexp) * string
      | VarCol of ('expr prefixexp) * ('expr exp)

and funcname = FuncName of string * ponto_id_rule list * doispontos_id_rule option

and ponto_id_rule = Ponto of string
and doispontos_id_rule = Doispontos of string

and namelist = NameList of string * name list
and name = Name of string
and virgula_tres_pontos_rule = VirgulaPPP


and 'expr explist = Explist of ('expr exp) * ('expr expaux) list
and 'expr expaux = Expression of ('expr exp)
and 'expr exp =
      | Nil
      | True
      | False
      | Int of int
      | Float of float
      | String of string
      | ExpVar of ('expr var)
      | ExpFunctioncall of ('expr functioncall)
      | ExpPrefixExp of ('expr prefixexp)
      | ExpAExpF of ('expr exp)
      | Exp of string
      | ExpBinop of binop * ('expr exp) * ('expr exp)
      | ExpUnop of unop * ('expr exp)
      | Pontopontoponto
      | FunctionDef of ('expr functiondef)
      | TableConstructor of ('expr tableconstructor)

and 'expr functiondef = FunctionDef of ('expr funcbody)
and 'expr funcbody = FuncBody of parlist option * ('expr bloco)
and parlist =
    | NameListVirgula of namelist * virgula_tres_pontos_rule option
    | Pontopontoponto

and 'expr prefixexp =
      | PrefixExpVar of ('expr var)
      | PrefixExpFunctionCall of ('expr functioncall)
      | PrefixExpParentese of ('expr exp)

and 'expr functioncall =
      | FunctionCallPA of ('expr prefixexp) * ('expr args)
      | PrefixoDoisPontosIdArgs of ('expr prefixexp) * string * ('expr args)

and 'expr args =
      | ArgsExp of ('expr explist) option
      | Args of string
      | TableConstructor of ('expr tableconstructor)

and 'expr tableconstructor = FieldList of ('expr fieldlist) option
and 'expr fieldlist = FieldLists of ('expr field) * ('expr fieldsep_field_rule) list * fieldsep option
and 'expr fieldsep_field_rule = FieldSepField of fieldsep * ('expr field)
and 'expr field =
      | Campo1 of ('expr exp) * ('expr exp)
      | Campo2 of string * ('expr exp)
      | Campo3 of ('expr exp)
and fieldsep =
      | Virgula
      | PontoEVirgula

and 'expr retstat_option = ('expr retstat) option
and 'expr retstat =
        | Retorno of ('expr explist) option

and binop =
        | Soma
        | Subtracao
        | Multiplicacao
        | Divisao
        | Exponenciacao
        | Modulo
        | Pontoponto
        | Maior
        | MaiorIgual
        | Menor
        | MenorIgual
        | Igualdade
        | Diferente
        | And
        | Or

and unop =
        | Decremento
        | Not
        | Quadrado
