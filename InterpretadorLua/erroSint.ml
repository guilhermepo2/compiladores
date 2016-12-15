
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Esperava um programa.\n"
    | 49 ->
        "Esperava um '('\n"
    | 50 ->
        "Esperava uma expressão\n"
    | 99 ->
        "Esperava um operador binário ou um ')'\n"
    | 100 ->
        "Esperava a palavra chave 'DO'\n"
    | 101 ->
        "Esperava uma lista de comandos.\n"
    | 156 ->
        "Esperava uma lista de comandos após BEGIN\n"
    | 128 ->
        "Operação Inválida, após uma expressão faça uma atribuição, utilize um operador binário ou separe por virgula caso esteja chamando ou declarando uma função.\n"
    | 97 ->
        "Esperava por mais expressões ou por um ')'\n"
    | 124 ->
        "Erro após expressão\n"
    | 63 ->
        "Esperava uma expressão após o operador\n"
    | 64 ->
        "Esperava um operador ou um ')'\n"
    | 65 ->
        "Esperava por uma expressão\n"
    | 66 ->
        "Esperava por um operador ou um ')'\n"
    | 69 ->
        "Esperava por uma expressão\n"
    | 70 ->
        "Esperava por um operador ou um ')'\n"
    | 67 ->
        "Esperava por uma expressao\n"
    | 68 ->
        "Esperava por um operador ou um ')'\n"
    | 73 ->
        "Esperava por uma expressao\n"
    | 74 ->
        "Esperava por um operador ou um ')'\n"
    | 75 ->
        "Esperava por uma expressao\n"
    | 76 ->
        "Esperava por um operador ou um ')'\n"
    | 71 ->
        "Esperava uma expressao\n"
    | 72 ->
        "Esperava por um operador ou um ')'\n"
    | 82 ->
        "Esperava uma expressao\n"
    | 83 ->
        "Esperava por um operador ou um ')'\n"
    | 84 ->
        "Esperava uma expressao\n"
    | 85 ->
        "Esperava por um operador ou um ')'\n"
    | 86 ->
        "Esperava uma expressao\n"
    | 87 ->
        "Esperava por um operador ou um ')'\n"
    | 77 ->
        "Esperava uma expressao\n"
    | 78 ->
        "Esperava por um operador ou um ')'\n"
    | 88 ->
        "Espera uma expressao\n"
    | 89 ->
        "Esperava por um operador ou um ')'\n"
    | 80 ->
        "Esperava uma expressão após a concatenação.\n"
    | 81 ->
        "Esperava por um operador ou um ')'\n"
    | 129 ->
        "Esperava por uma expressão após a atribuição\n"
    | 130 ->
        "Esperava por um operador ou um ')'\n"
    | 102 ->
        "Esperava por um '('\n"
    | 103 ->
        "Esperava por uma expressão no teste do if\n"
    | 104 ->
        "Esperava por um operador ou um ')'\n"
    | 105 ->
        "Esperava pela palavra chave THEN\n"
    | 106 ->
        "Esperava por uma lista de comandos após o BEGIN\n"
    | 145 ->
        "Esperava por um else ou pela palavra chave end\n"
    | 143 ->
        "Esperava uma lista de comandos para o else\n"
    | 147 ->
        "Esperava pela palavra chave end\n"
    | 107 ->
        "Esperava uma por um '('\n"
    | 108 ->
        "Esperava por uma lista de expressoes ou um ')'\n"
    | 109 ->
        "Esperava um ')'\n"
    | 111 ->
        "Erro após o retorno\n"
    | 113 ->
        "Esperava um operador ou operação inválida após o retorno\n"
    | 139 ->
        "Esperava por uma lista de comandos\n"
    | 53 ->
        "Esperava um '(' ou um operador para a variavel\n"
    | 59 ->
        "Esperava um por identificador após o ponto\n"
    | 58 ->
        "Esperava por uma operação na expressão, por um ponto ou por um '['\n"
    | 54 ->
        "Esperava por expressoes ou por um ')'\n"
    | 96 ->
        "Esperava por um operador, um ')' ou por outra expressão separada por vírgula\n"
    | 94 ->
        "Esperava por um ')'\n"
    | 141 ->
        "Erro após chamada de função\n"
    | 61 ->
        "Esperava uma expressão após '['\n"
    | 62 ->
        "Esperava por um operador ou um ']'\n"
    | 114 ->
        "Esperava por uma expressao após o for\n"
    | 115 ->
        "Esperava um operador ou por uma virgula para separar as expressoes\n"
    | 116 ->
        "Esperava por uma expressao apos a virgula\n"
    | 117 ->
        "Esperava por um operador ou por uma virgula\n"
    | 118 ->
        "Esperava por uma expressao após a vírgula\n"
    | 119 ->
        "Esperava pelo passo do for\n"
    | 120 ->
        "Esperava por um inteiro\n"
    | 122 ->
        "Esperava pela palavra chave 'do'\n"
    | 123 ->
        "Esperava por uma lista de comandos\n"
    | 158 ->
        "Esperava pelo fim do programa\n"
    | 57 ->
        "Esperava uma expressão após '('\n"
    | 91 ->
        "Esperava por um operador ou um ')'\n"
    | 1 ->
        "Esperava por um vírgula ou dois pontos após o identificador\n"
    | 2 ->
        "Esperava por um identificador após a virgula\n"
    | 5 ->
        "Esperava pela declaração do tipo da variavel\n"
    | 6 ->
        "Erro após declaração de registro\n"
    | 7 ->
        "Esperava por dois pontos e o tipo após o identificador\n"
    | 8 ->
        "Esperava pela declaração do tipo da variavel\n"
    | 25 ->
        "Esperava pela palavra chave end ou por uma lista de registros\n"
    | 28 ->
        "Esperava por um registro\n"
    | 153 ->
        "Esperava por declaração de variaveis\n"
    | 13 ->
        "Esperava por um '['\n"
    | 14 ->
        "Esperava algo após o '['\n"
    | 15 ->
        "Erro na declaração do arranjo depois de '['\n"
    | 16 ->
        "Erro na declaração de arranjo, esperava um inteiro\n"
    | 18 ->
        "Esperava um ']'\n"
    | 19 ->
        "Esperava pela declaração do tipo do arranjo\n"
    | 20 ->
        "Esperava pela declaração do tipo do arranjo\n"
    | 33 ->
        "Esperava pelo nome da função\n"
    | 34 ->
        "Esperava por um '('\n"
    | 35 ->
        "Esperava pelos argumentos da função ou um ')'\n"
    | 36 ->
        "Esperava pelo tipo do argumento de entrada da função\n"
    | 37 ->
        "Esperava pelo tipo do parametro\n"
    | 40 ->
        "Esperava por um ')' ou por mais argumentos separados por vírgula\n"
    | 41 ->
        "Esperava por mais parametros ou por um ')'\n"
    | 44 ->
        "Esperava pela declaração do tipo de retorno da função\n"
    | 45 ->
        "Esperava pela declaração do tipo de retorno da função\n"
    | 46 ->
        "Esperava pelas declarações de variáveis da função ou pela palavra chave begin\n"
    | 48 ->
        "Esperava pelo corpo da função ou pela palavra chave end\n"
    | 47 ->
        "Esperava pela palavra chave begin\n"
    | 160 ->
        "Esperava por mais uma declaração de função ou pelo início do programa.\n"
    | _ ->
        raise Not_found
