
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20161115

module Basics = struct
  
  exception Error
  
  type token = 
    | WRITE of (Lexing.position)
    | WHILE of (Lexing.position)
    | VIRGULA of (Lexing.position)
    | UNTIL of (Lexing.position)
    | TRUE of (Lexing.position)
    | THEN of (Lexing.position)
    | SUBTRACAO of (Lexing.position)
    | STRING of (string * Lexing.position)
    | SOMA of (Lexing.position)
    | RETURN of (Lexing.position)
    | REPEAT of (Lexing.position)
    | READ of (Lexing.position)
    | QUADRADO of (Lexing.position)
    | PONTOPONTOPONTO of (Lexing.position)
    | PONTOPONTO of (Lexing.position)
    | PONTOEVIRGULA of (Lexing.position)
    | PONTO of (Lexing.position)
    | OR of (Lexing.position)
    | NOT of (Lexing.position)
    | NIL of (Lexing.position)
    | MULTIPLICACAO of (Lexing.position)
    | MODULO of (Lexing.position)
    | MENORIGUAL of (Lexing.position)
    | MENOR of (Lexing.position)
    | MAIORIGUAL of (Lexing.position)
    | MAIOR of (Lexing.position)
    | LOCAL of (Lexing.position)
    | INT of (int * Lexing.position)
    | IN of (Lexing.position)
    | IGUALDADE of (Lexing.position)
    | IF of (Lexing.position)
    | ID of (string * Lexing.position)
    | GOTO of (Lexing.position)
    | FUNCTION of (Lexing.position)
    | FOR of (Lexing.position)
    | FLOAT of (float * Lexing.position)
    | FECHAPARENTESE of (Lexing.position)
    | FECHACOLCHETE of (Lexing.position)
    | FECHACHAVES of (Lexing.position)
    | FALSE of (Lexing.position)
    | EXPONENCIACAO of (Lexing.position)
    | EOF
    | END of (Lexing.position)
    | ELSEIF of (Lexing.position)
    | ELSE of (Lexing.position)
    | DOISPONTOS of (Lexing.position)
    | DOISDOISPONTOS of (Lexing.position)
    | DO of (Lexing.position)
    | DIVISAO of (Lexing.position)
    | DIFERENTE of (Lexing.position)
    | BREAK of (Lexing.position)
    | ATRIBUICAO of (Lexing.position)
    | AND of (Lexing.position)
    | ABREPARENTESE of (Lexing.position)
    | ABRECOLCHETE of (Lexing.position)
    | ABRECHAVES of (Lexing.position)
  
end

include Basics

let _eRR =
  Basics.Error
  
  open Lexing
  open Ast
  open Sast

module Tables = struct
  
  include Basics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ABRECHAVES _ ->
          56
      | ABRECOLCHETE _ ->
          55
      | ABREPARENTESE _ ->
          54
      | AND _ ->
          53
      | ATRIBUICAO _ ->
          52
      | BREAK _ ->
          51
      | DIFERENTE _ ->
          50
      | DIVISAO _ ->
          49
      | DO _ ->
          48
      | DOISDOISPONTOS _ ->
          47
      | DOISPONTOS _ ->
          46
      | ELSE _ ->
          45
      | ELSEIF _ ->
          44
      | END _ ->
          43
      | EOF ->
          42
      | EXPONENCIACAO _ ->
          41
      | FALSE _ ->
          40
      | FECHACHAVES _ ->
          39
      | FECHACOLCHETE _ ->
          38
      | FECHAPARENTESE _ ->
          37
      | FLOAT _ ->
          36
      | FOR _ ->
          35
      | FUNCTION _ ->
          34
      | GOTO _ ->
          33
      | ID _ ->
          32
      | IF _ ->
          31
      | IGUALDADE _ ->
          30
      | IN _ ->
          29
      | INT _ ->
          28
      | LOCAL _ ->
          27
      | MAIOR _ ->
          26
      | MAIORIGUAL _ ->
          25
      | MENOR _ ->
          24
      | MENORIGUAL _ ->
          23
      | MODULO _ ->
          22
      | MULTIPLICACAO _ ->
          21
      | NIL _ ->
          20
      | NOT _ ->
          19
      | OR _ ->
          18
      | PONTO _ ->
          17
      | PONTOEVIRGULA _ ->
          16
      | PONTOPONTO _ ->
          15
      | PONTOPONTOPONTO _ ->
          14
      | QUADRADO _ ->
          13
      | READ _ ->
          12
      | REPEAT _ ->
          11
      | RETURN _ ->
          10
      | SOMA _ ->
          9
      | STRING _ ->
          8
      | SUBTRACAO _ ->
          7
      | THEN _ ->
          6
      | TRUE _ ->
          5
      | UNTIL _ ->
          4
      | VIRGULA _ ->
          3
      | WHILE _ ->
          2
      | WRITE _ ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ABRECHAVES _v ->
          Obj.repr _v
      | ABRECOLCHETE _v ->
          Obj.repr _v
      | ABREPARENTESE _v ->
          Obj.repr _v
      | AND _v ->
          Obj.repr _v
      | ATRIBUICAO _v ->
          Obj.repr _v
      | BREAK _v ->
          Obj.repr _v
      | DIFERENTE _v ->
          Obj.repr _v
      | DIVISAO _v ->
          Obj.repr _v
      | DO _v ->
          Obj.repr _v
      | DOISDOISPONTOS _v ->
          Obj.repr _v
      | DOISPONTOS _v ->
          Obj.repr _v
      | ELSE _v ->
          Obj.repr _v
      | ELSEIF _v ->
          Obj.repr _v
      | END _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | EXPONENCIACAO _v ->
          Obj.repr _v
      | FALSE _v ->
          Obj.repr _v
      | FECHACHAVES _v ->
          Obj.repr _v
      | FECHACOLCHETE _v ->
          Obj.repr _v
      | FECHAPARENTESE _v ->
          Obj.repr _v
      | FLOAT _v ->
          Obj.repr _v
      | FOR _v ->
          Obj.repr _v
      | FUNCTION _v ->
          Obj.repr _v
      | GOTO _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IF _v ->
          Obj.repr _v
      | IGUALDADE _v ->
          Obj.repr _v
      | IN _v ->
          Obj.repr _v
      | INT _v ->
          Obj.repr _v
      | LOCAL _v ->
          Obj.repr _v
      | MAIOR _v ->
          Obj.repr _v
      | MAIORIGUAL _v ->
          Obj.repr _v
      | MENOR _v ->
          Obj.repr _v
      | MENORIGUAL _v ->
          Obj.repr _v
      | MODULO _v ->
          Obj.repr _v
      | MULTIPLICACAO _v ->
          Obj.repr _v
      | NIL _v ->
          Obj.repr _v
      | NOT _v ->
          Obj.repr _v
      | OR _v ->
          Obj.repr _v
      | PONTO _v ->
          Obj.repr _v
      | PONTOEVIRGULA _v ->
          Obj.repr _v
      | PONTOPONTO _v ->
          Obj.repr _v
      | PONTOPONTOPONTO _v ->
          Obj.repr _v
      | QUADRADO _v ->
          Obj.repr _v
      | READ _v ->
          Obj.repr _v
      | REPEAT _v ->
          Obj.repr _v
      | RETURN _v ->
          Obj.repr _v
      | SOMA _v ->
          Obj.repr _v
      | STRING _v ->
          Obj.repr _v
      | SUBTRACAO _v ->
          Obj.repr _v
      | THEN _v ->
          Obj.repr _v
      | TRUE _v ->
          Obj.repr _v
      | UNTIL _v ->
          Obj.repr _v
      | VIRGULA _v ->
          Obj.repr _v
      | WHILE _v ->
          Obj.repr _v
      | WRITE _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000\000\0000\021\000\0001\0192\020\000\018\000\000\003\002\015\004\007\t\b\011\n\012\006\005\r\014\000\000\000\024\000\025\000,\000\000\000\000\000\000\000\000\000\000\000\000\030\000\026\000\000)\000\000\000\000\000\000\028+\000\000\000\000\000\000 '\000&\016\000/\000\000\"\000.\000-\001\000\017")
  
  and error =
    (57, "a¨\016\t¨ \002\000\000\000\000\000\000\001\000b\004\002\"\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\006 @\" \000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0001\002\001\017\000\000@\000\000\000\000\000\000\000\012@\128D@\000\017Ç¢ß®±Ñ¸\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\012@\128D@\000\017Ç¢ß®±Ñ¸\002\128OÄ\b\128È\000\000\000\000\000\000\000\000 \019ñ\002 2\000\000\000\000\000\000\000\000(\004ü@\136\012\128\000\000\000\000\000\000\000\000\000\000\000\000\000\016\006 @\" \000\b\002\128OÄ\b\128È\000\000\000\000\000\000\1280Ô\b\004Ô\b\001\000\000\000\000\000\000\000\1281\002\001\017\000\000@\020\002~ D\006@\016\000\000\000\000\000\001\134 @& P\b\002\128OÄ\000\128Ü\001\136\016\b\140\000\002\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\001\020\002~ D\006@\012@\128D@\000\016\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\002\000Ä\b\004F\000\001\000\000\000\000\001\000\000\0125\002\0015\002\000F\026\129\000\154\131@ \000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\128OÄ\000\128Ø\001\136\016\b\136\000\0020ô\027õÔ:3\000\b\000\000\000\r\000\0001\018\001\017\006\128@\000\b\000\000\003@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\129OÄ\000èÈ\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\001@\003\r@\128M@\128\016\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\001¤\000e\001\134\000\000\000\000\000Y\001\134\000\000\000\000\000\000\000\000\001\134\000\000\001\134\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\134\000j\001$\000\000\001Ø\000\000\002\004\000\000\000U\001\134\002F\000G\001¤\000Q\001\134\002r\000\020\001¤\0018\001\134\000\000\000%\000\000\000Ö\001\134\000\000\000\r\0005\001\134\000\011\001¤\001¤\000\000\000\000\000Ö\001\134\000Ö\000\156\002¦\001\154\000\000\000\000\001$\000\000\000\000\000\019\000\000\000Q\001¤\000\000\000\r\000\000\000\011\000\000\000\000\000\007\000\000"), (16, "\000Y\000Y\000Y\000\129\000\n\0016\000>\000Y\000B\000Y\000\026\000Y\000\154\000¦\000®\000Y\000º\000F\000Y\000Î\000J\000N\000R\000V\000Z\000^\000â\000Y\000æ\000b\000Y\000Y\000î\000Y\001.\000Y\000Y\001B\001J\001W\000f\000Y\000Y\000\000\000Y\000\000\000\000\000\000\000j\000n\000\000\000Y\000r\000Y\000U\000U\000U\000\000\000\000\000\000\000>\000U\000B\000U\000\000\000U\000\000\000\000\000\000\000U\000\000\000F\000U\000\000\000J\000N\000R\000V\000Z\000^\000\000\000U\000\000\000b\000U\000U\000\000\000U\001\014\000U\000U\000\000\000\000\000\000\000f\000U\000U\000\000\000U\000\000\000\000\000\000\000j\000n\000\000\000U\000r\000U\000¥\000¥\000Ö\000\000\000\000\000\000\000>\000¥\000B\000¥\000\000\000¥\000\145\000\145\000\000\000\145\000\000\000F\000¥\000\000\000J\000N\000R\000V\000Z\000^\000\000\000¥\000\000\000b\000¥\000¥\000\000\000¥\000\000\000¥\000\157\000\000\000\000\000\000\000f\000¥\000¥\000\000\000¥\000>\000\000\000B\000j\000n\000\000\001\002\000r\000¥\000\141\000Å\000F\000Å\000\000\000J\000N\000R\000V\000Z\000^\000\000\000Å\000\000\000b\000Å\000Å\000Å\000Å\000Å\000Å\000\130\000\000\000\000\000Å\000f\000\141\000\141\000\000\000\141\000\000\000\000\000\000\000j\000n\000Å\000\000\000r\000\000\000\000\000\014\000\018\000\000\000Å\000Å\000\022\000Å\000Å\000Â\000\006\000\150\000\000\000\030\000\000\000\000\000\014\000\018\000\000\000i\001\022\000\022\000\"\000\000\000\000\000\000\000&\000\000\000\030\000\000\000*\000q\000\000\000\000\000\000\000\000\000\000\000\"\000\000\000\000\000ª\000¾\000>\000Þ\000B\000*\000y\000y\000.\000y\000\000\000i\000i\000F\000i\000\000\000J\000N\000R\000V\000Z\000^\000\000\000.\000>\000b\000B\000\000\000\000\000\000\000\000\000\000\000\138\000\000\000\000\000F\000f\000\000\000J\000N\000R\000V\000Z\000^\000j\000n\000\000\000b\000r\000\000\000\000\000\000\000\000\000\000\000\146\000\000\000\000\000>\000f\000B\000\000\000\000\000\000\000\000\000\000\000\000\000j\000n\000F\000\000\000r\000J\000N\000R\000V\000Z\000^\000\000\000\000\000>\000b\000B\000\000\000\000\000\000\000\000\000\000\000¢\000\000\000\000\000F\000f\000\000\000J\000N\000R\000V\000Z\000^\000j\000n\000\000\000b\000r\000\000\000\014\000\018\000\000\000\000\000¶\000\022\000\000\000\000\000f\000\137\000\000\000\000\000\030\000\000\000\000\000\000\000j\000n\000\000\000\000\000r\000\"\000\000\000\000\000\000\000&\000\000\000\000\000\000\000*\000\000\000\000\000\000\000\000\000\000\000\137\000\137\000\000\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000."))
  
  and lhs =
    (8, "\000\016\016\016\016\016\016\016\016\016\016\016\016\016\016\015\014\r\r\r\r\r\r\r\r\012\011\011\n\n\t\t\b\b\007\007\006\006\005\004\004\003\003\003\003\003\003\002\002\001")
  
  and goto =
    ((8, "\003\000^\000\000\000\134\000\000\000\000\154\000¨\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000´\017\017\000\017\000\017\000\000¸\017\000\b\000¼\017\000&\000r\000\000\000\017\142\000\000\000z\0000X\000\000\017Â\017\005\150\000\000\000\017\000\000\000\000\020N\000\000\000\000\000\000\000\000"), (8, "\r\014=IJ\r\014=\030GC?@TUC?@PR\r\014=\000\000\r\014=\000\000C?@\000MC?@\000K\r\014=\000\000\r\014=\r\014C?@\000O>?@\r\014$2\r\014\0002\0003\r\0145;\r\01457\r\014\r\014\"\000E\0005\r\014\000H\000 \r\014\r\014\r\014\015\r\014\000\000\000\031\000(\000-\000\000B"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                ( (Soma,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                     ( (Subtracao,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                         ( (Multiplicacao,pos)  ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                   ( (Divisao,pos)  ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                         ( (Exponenciacao,pos)  ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                  ( (Modulo,pos)  ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                 ( (Menor,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                      ( (MenorIgual,pos)  ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                 ( (Maior,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                      ( (MaiorIgual,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                     ( (Igualdade,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =                     ( (Diferente,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =               ( (And,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.binop Ast.pos) =              ( (Or,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = r;
          MenhirLib.EngineTypes.startp = _startpos_r_;
          MenhirLib.EngineTypes.endp = _endpos_r_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = s;
            MenhirLib.EngineTypes.startp = _startpos_s_;
            MenhirLib.EngineTypes.endp = _endpos_s_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let r : (Sast.expressao Ast.retstat option) = Obj.magic r in
        let s : (Sast.expressao Ast.stat_list) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_r_ in
        let _v : (Sast.expressao Ast.bloco) =                        ( Bloco(s,r) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = b;
            MenhirLib.EngineTypes.startp = _startpos_b_;
            MenhirLib.EngineTypes.endp = _endpos_b_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let b : (Sast.expressao Ast.bloco) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.programa) =                 ( Programa(b) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Sast.expressao) =                ( ExpVar v ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (int * Lexing.position) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) =           ( ExpInt i ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (float * Lexing.position) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao) =             ( ExpFloat f) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (string * Lexing.position) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) =              ( ExpString s ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = b;
            MenhirLib.EngineTypes.startp = _startpos_b_;
            MenhirLib.EngineTypes.endp = _endpos_b_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let b : (Ast.binop Ast.pos) = Obj.magic b in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) =                                       ( ExpOpBin(b,e1,e2) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = u;
            MenhirLib.EngineTypes.startp = _startpos_u_;
            MenhirLib.EngineTypes.endp = _endpos_u_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let e : (Sast.expressao) = Obj.magic e in
        let u : (Ast.unop Ast.pos) = Obj.magic u in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_u_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao) =                        ( ExpOpUn(u,e) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) =                                              ( e ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _1;
                MenhirLib.EngineTypes.startp = _startpos__1_;
                MenhirLib.EngineTypes.endp = _endpos__1_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao) =                                                   ( ExpLeitura ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs0;
            MenhirLib.EngineTypes.startp = _startpos_xs0_;
            MenhirLib.EngineTypes.endp = _endpos_xs0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = nome_fun;
                MenhirLib.EngineTypes.startp = _startpos_nome_fun_;
                MenhirLib.EngineTypes.endp = _endpos_nome_fun_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let xs0 : (Sast.expressao Ast.expressoes) = Obj.magic xs0 in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let nome_fun : (string * Lexing.position) = Obj.magic nome_fun in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_fun_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.stat) = let args =
          let xs = xs0 in
              ( xs )
        in
                                                                                           ( Chamada(nome_fun, args) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.stat_list) =     ( [] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.stat_list) = Obj.magic xs in
        let x : (Sast.expressao Ast.stat) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.stat_list) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.expressoes) =     ( [] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.expressoes) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) =     ( x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Lexing.position option) =     ( None ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Lexing.position) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Lexing.position option) =     ( Some x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.else_regra option) =     ( None ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = senaoentao0;
          MenhirLib.EngineTypes.startp = _startpos_senaoentao0_;
          MenhirLib.EngineTypes.endp = _endpos_senaoentao0_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let senaoentao0 : (Sast.expressao Ast.bloco) = Obj.magic senaoentao0 in
        let _10 : (Lexing.position) = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos_senaoentao0_ in
        let _v : (Sast.expressao Ast.else_regra option) = let x =
          let senaoentao = senaoentao0 in
          let _1 = _10 in
                                                 ( Else(senaoentao) )
        in
            ( Some x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao option) =     ( None ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao option) =     ( Some x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.retstat option) =     ( None ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.retstat) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.retstat option) =     ( Some x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (Lexing.position option) = Obj.magic _3 in
        let e : (Sast.expressao option) = Obj.magic e in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.retstat) =                                        ( Retorno(e) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) =     ( [ x ] ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.expressoes) =     ( x :: xs ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = dir;
          MenhirLib.EngineTypes.startp = _startpos_dir_;
          MenhirLib.EngineTypes.endp = _endpos_dir_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = esq;
              MenhirLib.EngineTypes.startp = _startpos_esq_;
              MenhirLib.EngineTypes.endp = _endpos_esq_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let dir : (Sast.expressao) = Obj.magic dir in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let esq : (Sast.expressao) = Obj.magic esq in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_esq_ in
        let _endpos = _endpos_dir_ in
        let _v : (Sast.expressao Ast.stat) =                                            ( CmdAttrib(esq,dir) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = f;
          MenhirLib.EngineTypes.startp = _startpos_f_;
          MenhirLib.EngineTypes.endp = _endpos_f_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let f : (Sast.expressao Ast.stat) = Obj.magic f in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_f_ in
        let _endpos = _endpos_f_ in
        let _v : (Sast.expressao Ast.stat) =                    ( f ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _1;
                MenhirLib.EngineTypes.startp = _startpos__1_;
                MenhirLib.EngineTypes.endp = _endpos__1_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.stat) =                                                    ( Escrever(e) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _7;
          MenhirLib.EngineTypes.startp = _startpos__7_;
          MenhirLib.EngineTypes.endp = _endpos__7_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = b;
            MenhirLib.EngineTypes.startp = _startpos_b_;
            MenhirLib.EngineTypes.endp = _endpos_b_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _5;
              MenhirLib.EngineTypes.startp = _startpos__5_;
              MenhirLib.EngineTypes.endp = _endpos__5_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _4;
                MenhirLib.EngineTypes.startp = _startpos__4_;
                MenhirLib.EngineTypes.endp = _endpos__4_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = e;
                  MenhirLib.EngineTypes.startp = _startpos_e_;
                  MenhirLib.EngineTypes.endp = _endpos_e_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _2;
                    MenhirLib.EngineTypes.startp = _startpos__2_;
                    MenhirLib.EngineTypes.endp = _endpos__2_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _menhir_s;
                      MenhirLib.EngineTypes.semv = _1;
                      MenhirLib.EngineTypes.startp = _startpos__1_;
                      MenhirLib.EngineTypes.endp = _endpos__1_;
                      MenhirLib.EngineTypes.next = _menhir_stack;
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _7 : (Lexing.position) = Obj.magic _7 in
        let b : (Sast.expressao Ast.bloco) = Obj.magic b in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sast.expressao Ast.stat) =         ( While(e,b) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _8;
          MenhirLib.EngineTypes.startp = _startpos__8_;
          MenhirLib.EngineTypes.endp = _endpos__8_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = senao;
            MenhirLib.EngineTypes.startp = _startpos_senao_;
            MenhirLib.EngineTypes.endp = _endpos_senao_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = entao;
              MenhirLib.EngineTypes.startp = _startpos_entao_;
              MenhirLib.EngineTypes.endp = _endpos_entao_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _5;
                MenhirLib.EngineTypes.startp = _startpos__5_;
                MenhirLib.EngineTypes.endp = _endpos__5_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = e;
                    MenhirLib.EngineTypes.startp = _startpos_e_;
                    MenhirLib.EngineTypes.endp = _endpos_e_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _2;
                      MenhirLib.EngineTypes.startp = _startpos__2_;
                      MenhirLib.EngineTypes.endp = _endpos__2_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = _1;
                        MenhirLib.EngineTypes.startp = _startpos__1_;
                        MenhirLib.EngineTypes.endp = _endpos__1_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _8 : (Lexing.position) = Obj.magic _8 in
        let senao : (Sast.expressao Ast.else_regra option) = Obj.magic senao in
        let entao : (Sast.expressao Ast.bloco) = Obj.magic entao in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sast.expressao Ast.stat) =         ( If(e, entao, senao) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _7;
          MenhirLib.EngineTypes.startp = _startpos__7_;
          MenhirLib.EngineTypes.endp = _endpos__7_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = b;
            MenhirLib.EngineTypes.startp = _startpos_b_;
            MenhirLib.EngineTypes.endp = _endpos_b_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _5;
              MenhirLib.EngineTypes.startp = _startpos__5_;
              MenhirLib.EngineTypes.endp = _endpos__5_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = xs0;
                MenhirLib.EngineTypes.startp = _startpos_xs0_;
                MenhirLib.EngineTypes.endp = _endpos_xs0_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _3;
                  MenhirLib.EngineTypes.startp = _startpos__3_;
                  MenhirLib.EngineTypes.endp = _endpos__3_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = funcname;
                    MenhirLib.EngineTypes.startp = _startpos_funcname_;
                    MenhirLib.EngineTypes.endp = _endpos_funcname_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _menhir_s;
                      MenhirLib.EngineTypes.semv = _1;
                      MenhirLib.EngineTypes.startp = _startpos__1_;
                      MenhirLib.EngineTypes.endp = _endpos__1_;
                      MenhirLib.EngineTypes.next = _menhir_stack;
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _7 : (Lexing.position) = Obj.magic _7 in
        let b : (Sast.expressao Ast.bloco) = Obj.magic b in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let xs0 : (Sast.expressao Ast.expressoes) = Obj.magic xs0 in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let funcname : (string * Lexing.position) = Obj.magic funcname in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sast.expressao Ast.stat) = let args =
          let xs = xs0 in
              ( xs )
        in
                ( Funcao(funcname, args, b) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.unop Ast.pos) =                     ( (Negativo,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = pos;
          MenhirLib.EngineTypes.startp = _startpos_pos_;
          MenhirLib.EngineTypes.endp = _endpos_pos_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let pos : (Lexing.position) = Obj.magic pos in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_pos_ in
        let _endpos = _endpos_pos_ in
        let _v : (Ast.unop Ast.pos) =               ( (Not,pos) ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (string * Lexing.position) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) =          ( VarSimples x ) in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module TI = MenhirLib.TableInterpreter.Make (Tables)
  
  include TI
  
end

let chunk =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (Sast.expressao Ast.programa))

module Incremental = struct
  
  let chunk =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (Sast.expressao Ast.programa) MenhirInterpreter.checkpoint)
  
end
  

