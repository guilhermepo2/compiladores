type programa =
  | Programa of bloco
  | BLOCO
  
and bloco =
  | Bloco of stat list * retstat option


and stat =
  | PontoEVirgula

and retstat =
  | RETORNO
