(* The type of the abstract syntax tree (AST). *)
type programa = Programa of bloco
and bloco = Bloco of stat_list * retstat_option

and stat_list = stat list
and stat =
        | Stat of string
        | PontoeVirgula
        | Break
        | Atribuicao of varlist * explist
        | StatFunctionCall of functioncall
        | FunctionDefinition of funcname * funcbody
        | If of exp * bloco * elseif list * else_r option
        | StatBloco of bloco
        | StatLabel of label
        | Goto of string
        | Local of namelist * atribuicao_explist_rule option
        | While of exp * bloco
        | Repeat of bloco * exp
        | Forlist of namelist * explist * bloco
        | For of string * exp * exp * comma_exp_rule option * bloco

and elseif = Elseif of exp * bloco
and else_r = Else of bloco
and label = Label of string
and atribuicao_explist_rule = Atribuicao of explist
and comma_exp_rule = Virgula of exp

and varlist = Varlist of var * variavel list
and variavel = Variavel of var
and var =
      | Identificador of string
      | SeparadoPonto of prefixexp * string
      | VarCol of prefixexp * exp

and funcname = FuncName of string * ponto_id_rule list * doispontos_id_rule option

and ponto_id_rule = Ponto of string
and doispontos_id_rule = Doispontos of string

and namelist = NameList of string * name list
and name = Name of string
and virgula_tres_pontos_rule = VirgulaPPP


and explist = Explist of exp * expaux list
and expaux = Expression of exp
and exp =
      | Nil
      | True
      | False
      | Int of int
      | Float of float
      | String of string
      | ExpVar of var
      | ExpFunctioncall of functioncall
      | ExpPrefixExp of prefixexp
      | ExpAExpF of exp
      | Exp of string
      | ExpBinop of binop * exp * exp
      | ExpUnop of unop * exp
      | Pontopontoponto
      | FunctionDef of functiondef
      | TableConstructor of tableconstructor

and functiondef = FunctionDef of funcbody
and funcbody = FuncBody of parlist option * bloco
and parlist =
    | NameListVirgula of namelist * virgula_tres_pontos_rule option
    | Pontopontoponto

and prefixexp =
      | PrefixExpVar of var
      | PrefixExpFunctionCall of functioncall
      | PrefixExpParentese of exp

and functioncall =
      | FunctionCallPA of prefixexp * args
      | PrefixoDoisPontosIdArgs of prefixexp * string * args

and args =
      | ArgsExp of explist option
      | Args of string
      | TableConstructor of tableconstructor

and tableconstructor = FieldList of fieldlist option
and fieldlist = FieldLists of field * fieldsep_field_rule list * fieldsep option
and fieldsep_field_rule = FieldSepField of fieldsep*field
and field =
      | Campo1 of exp * exp
      | Campo2 of string * exp
      | Campo3 of exp
and fieldsep =
      | Virgula
      | PontoEVirgula

and retstat_option = retstat option
and retstat =
        | Retorno of explist option

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
