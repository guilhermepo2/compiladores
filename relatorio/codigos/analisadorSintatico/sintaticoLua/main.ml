let parse_arq arq =
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let ast = Parser.chunk Lualexer.token lexbuf in
  let _ = close_in ic in
  ast
;;
