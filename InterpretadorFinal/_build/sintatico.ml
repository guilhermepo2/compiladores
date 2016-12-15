
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20161115

module Basics = struct
  
  exception Error
  
  type token = 
    | WHILE of (Lexing.position)
    | VIRG of (Lexing.position)
    | STRING of (string * Lexing.position)
    | SENAO of (Lexing.position)
    | SE of (Lexing.position)
    | SAIDA of (Lexing.position)
    | RETORNE of (Lexing.position)
    | REGISTRO of (Lexing.position)
    | PTO of (Lexing.position)
    | PROGRAMA of (Lexing.position)
    | PPTO of (Lexing.position)
    | PFLOAT of (float * Lexing.position)
    | PASSO of (Lexing.position)
    | OULOG of (Lexing.position)
    | MULT of (Lexing.position)
    | MENOS of (Lexing.position)
    | MENORIGUAL of (Lexing.position)
    | MENOR of (Lexing.position)
    | MAIS of (Lexing.position)
    | MAIORIGUAL of (Lexing.position)
    | MAIOR of (Lexing.position)
    | INTEIRO of (Lexing.position)
    | INT of (int * Lexing.position)
    | INICIO of (Lexing.position)
    | IGUAL of (Lexing.position)
    | ID of (string * Lexing.position)
    | FUNCAO of (Lexing.position)
    | FPAR of (Lexing.position)
    | FOR of (Lexing.position)
    | FLOAT of (Lexing.position)
    | FIM of (Lexing.position)
    | FCOL of (Lexing.position)
    | EOF
    | ENTRADA of (Lexing.position)
    | ENTAO of (Lexing.position)
    | ELOG of (Lexing.position)
    | DPTOS of (Lexing.position)
    | DO of (Lexing.position)
    | DIV of (Lexing.position)
    | DIFER of (Lexing.position)
    | DE of (Lexing.position)
    | CONCAT of (Lexing.position)
    | CADEIA of (Lexing.position)
    | BOOLEANO of (Lexing.position)
    | BOOL of (bool * Lexing.position)
    | ATRIB of (Lexing.position)
    | ATE of (Lexing.position)
    | ARRANJO of (Lexing.position)
    | APAR of (Lexing.position)
    | ACOL of (Lexing.position)
  
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
      | ACOL _ ->
          50
      | APAR _ ->
          49
      | ARRANJO _ ->
          48
      | ATE _ ->
          47
      | ATRIB _ ->
          46
      | BOOL _ ->
          45
      | BOOLEANO _ ->
          44
      | CADEIA _ ->
          43
      | CONCAT _ ->
          42
      | DE _ ->
          41
      | DIFER _ ->
          40
      | DIV _ ->
          39
      | DO _ ->
          38
      | DPTOS _ ->
          37
      | ELOG _ ->
          36
      | ENTAO _ ->
          35
      | ENTRADA _ ->
          34
      | EOF ->
          33
      | FCOL _ ->
          32
      | FIM _ ->
          31
      | FLOAT _ ->
          30
      | FOR _ ->
          29
      | FPAR _ ->
          28
      | FUNCAO _ ->
          27
      | ID _ ->
          26
      | IGUAL _ ->
          25
      | INICIO _ ->
          24
      | INT _ ->
          23
      | INTEIRO _ ->
          22
      | MAIOR _ ->
          21
      | MAIORIGUAL _ ->
          20
      | MAIS _ ->
          19
      | MENOR _ ->
          18
      | MENORIGUAL _ ->
          17
      | MENOS _ ->
          16
      | MULT _ ->
          15
      | OULOG _ ->
          14
      | PASSO _ ->
          13
      | PFLOAT _ ->
          12
      | PPTO _ ->
          11
      | PROGRAMA _ ->
          10
      | PTO _ ->
          9
      | REGISTRO _ ->
          8
      | RETORNE _ ->
          7
      | SAIDA _ ->
          6
      | SE _ ->
          5
      | SENAO _ ->
          4
      | STRING _ ->
          3
      | VIRG _ ->
          2
      | WHILE _ ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ACOL _v ->
          Obj.repr _v
      | APAR _v ->
          Obj.repr _v
      | ARRANJO _v ->
          Obj.repr _v
      | ATE _v ->
          Obj.repr _v
      | ATRIB _v ->
          Obj.repr _v
      | BOOL _v ->
          Obj.repr _v
      | BOOLEANO _v ->
          Obj.repr _v
      | CADEIA _v ->
          Obj.repr _v
      | CONCAT _v ->
          Obj.repr _v
      | DE _v ->
          Obj.repr _v
      | DIFER _v ->
          Obj.repr _v
      | DIV _v ->
          Obj.repr _v
      | DO _v ->
          Obj.repr _v
      | DPTOS _v ->
          Obj.repr _v
      | ELOG _v ->
          Obj.repr _v
      | ENTAO _v ->
          Obj.repr _v
      | ENTRADA _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | FCOL _v ->
          Obj.repr _v
      | FIM _v ->
          Obj.repr _v
      | FLOAT _v ->
          Obj.repr _v
      | FOR _v ->
          Obj.repr _v
      | FPAR _v ->
          Obj.repr _v
      | FUNCAO _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IGUAL _v ->
          Obj.repr _v
      | INICIO _v ->
          Obj.repr _v
      | INT _v ->
          Obj.repr _v
      | INTEIRO _v ->
          Obj.repr _v
      | MAIOR _v ->
          Obj.repr _v
      | MAIORIGUAL _v ->
          Obj.repr _v
      | MAIS _v ->
          Obj.repr _v
      | MENOR _v ->
          Obj.repr _v
      | MENORIGUAL _v ->
          Obj.repr _v
      | MENOS _v ->
          Obj.repr _v
      | MULT _v ->
          Obj.repr _v
      | OULOG _v ->
          Obj.repr _v
      | PASSO _v ->
          Obj.repr _v
      | PFLOAT _v ->
          Obj.repr _v
      | PPTO _v ->
          Obj.repr _v
      | PROGRAMA _v ->
          Obj.repr _v
      | PTO _v ->
          Obj.repr _v
      | REGISTRO _v ->
          Obj.repr _v
      | RETORNE _v ->
          Obj.repr _v
      | SAIDA _v ->
          Obj.repr _v
      | SE _v ->
          Obj.repr _v
      | SENAO _v ->
          Obj.repr _v
      | STRING _v ->
          Obj.repr _v
      | VIRG _v ->
          Obj.repr _v
      | WHILE _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000\000\000?\000\000\000\000\000IJKL\000\000\000\000(\000\000\000DFEG\0004\000\000H\020\001\000\000\000\000\000\000;2\000\000C\000\000\000\000\000\000\000\000\023\022\000\000\024\000\000\000N\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000&\000\000\000\000\000\000\000\000\000\000O\000'0\000\002\000\000A\000\000\000\000\000\000\000\000\000\000\000\017\000\016\000\000\000\000\000\000\000\000<\000\000\000\014\000\015\000\000\000\004\006\b\n\005\t\007\003\000*\000\000\0008\0006\000\018\000\r\000\019\000.\000\000\000\000=\000,")
  
  and error =
    (51, "\000\000\000°\000\000\004\000\000\000\000\128\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\001\000\004\004\0001\000\000\000\b\000\000\000\000\000\000\000 \000\000\128\002\002\000\024\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000@\000\000\000\000\128\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000 \000\b\000  \001\136\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004 \000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\144\000\000\000\000\000\004\000\000\000\000\000\000\000\000\001\000\000\000\020\000\000\000\000\000\000\000@\000\001\000\004\004\0001\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\b\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000@\000\001\000\004\004\0001\000\000\000(\000\000\000\000\000\004\000\000\000W\000\001%\000\004@\000\000\000\000\000\b@\000\004\128\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000þ\143úÛSLÄ\000\000J\000\001\016\000\000\000\000\000\000\016\000\001 \000\004Oèÿ­µ4Ì\000\000\000\128\000\000\000\000\000\000\000\000\001\000\000\018\000\000D\000\007ø\129\019@\004\000\000H\000\001\019ø?ëmM2\016\000\001 \000\004Oàÿ­µ4È@\000\004\128\000\017?\131þ¶ÔÓ!\000\000\018\000\000Dþ\015úÛSL\132\000\000H\000\001\019ø?ëmM2\016\000\001 \000\004Oàÿ­µ4È@\000\004\128\000\017?\131þ¶ÔÓ!\000\000\018\000\000Dþ\015úÛSL\128\000\000\000\000\000\000\128\000\t\000\000\"\127\007ým©¦B\000\000$\000\000\137ü\031õ¶¦\153\b\000\000\144\000\002'ð\127ÖÚ\154d \000\002@\000\b\159Áÿ[ji\144\128\000\t\000\000\"\127\007ým©¦@\000\000\000\000\000\000\000\015ñ &\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\001\000\031âAM\000\016\000\001 \000\004@\000\000\000\000\000\000\000\015ñ &\128\000\000\000\000\001\000\005p\000\018P\000D\000\000\000\000\000\000\132\000\000H\000\001\016\000\031â@M\000\000\000\000\000\016\000\nà\000$\128\000\136\000\000\000\000\000\001\b\000\000\144\000\002 \000\000\000\128\000\000\000\000\000\000\000\000\023À\000I@\001\016\000\000\000\000\000\000_\003ýe\t¤B\000\000$\000\000\136\128\015ñ\000&\128\b\000\000\144\000\002\"\000?Ä\000\154\000 \000\002@\000\b\128\001ÿ\016\002h\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\001\\\000\004\148\000\017\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\001\000\031â\001M\016\016\000\001 \000\004Kà\127¬¡4\136\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\\\000\004\148\000\017\000\000\000\000\000\000\007ð?ÖR\154d\016\000\000\002\000\000\021À\000I\000\001\016\000\000\000\000\000\000_\000\001%\000\004@\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000°\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000+\128\000\146\128\002 \000\000\000\016\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\004\128\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\020\000\018\000#\000\000\0007\000\003\000\012\000\006\000\003\000\000\000\000\000\000\000\000\000\022\000d\000\136\000z\000\000\000n\000b\000\003\000\000\000\000\000\000\000\000\000Z\000\000\000z\000ª\000\000\000\000\000\000\000\003\000\140\000`\000>\000\140\000\003\000\000\000\000\000t\000>\000\000\000 \000\146\000\003\000\020\000®\007¶\000\144\006\000\000\000\000\000\000\003\006^\000\000\006\000\000b\000Â\000\000\006\000\006\030\006\000\000Æ\006\000\001(\006\000\001\138\006\000\001ì\006\000\002N\006\000\002°\006\000\003\018\006\000\003t\000\000\006\000\003Ö\006\000\0048\006\000\004\154\006\000\004ü\006\000\005^\000\000\006\030\000\000\000\000\000Ä\000\000\006Ä\006\000\000\000\006|\000¶\007¶\000¦\006\000\007\006\000Æ\007¨\000®\006\000\000Ú\000\000\007n\000\000\006\030\006\000\007\006\006\000\007@\006\000\006\030\000ê\000\000\000Ð\007¶\000Ú\000\000\000æ\000\000\006Ä\006\000\006|\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007¶\000\000\005À\000\156\007¨\000\000\007¨\000\000\000è\000\000\000ú\000\000\000ü\000\000\000\020\000\000\001\012\007¶\001\000\000þ\000\000\000\003\000\000"), (16, "\0011\0011\0011\0011\0011\0011\0011\000\026\0011\000\006\000\022\000\n\0011\0011\0011\0011\0011\0011\0011\0011\0011\000&\0011\000©\0011\0011\000\134\0011\0011\000*\0011\0011\000\030\0011\000±\0011\000\006\000±\0011\0011\000\"\0011\000.\0002\0011\0011\000õ\0006\000Ú\0011\000Q\000Q\000Q\000Q\000Q\000Q\000Q\000\146\000ê\000Á\000¦\000:\000Q\000Q\000Q\000Q\000Q\000Q\000Q\000Q\000Q\000\030\000Q\000>\000Q\000Q\000É\000Q\000Q\000B\000Q\000Q\002:\000Q\000F\000Q\001\005\000N\000Q\000Q\000R\000Q\000r\000v\000Q\000Q\000\138\000\142\000Q\000ò\000\141\000\141\000\141\000\141\000\141\000\141\000\141\000\150\000²\000Ù\000¶\000Â\000\141\000\141\001\002\001\018\001\n\001\"\001*\001\026\001F\000Ê\000\141\000î\001N\000\141\001z\000\141\000\141\001\146\000\141\000\141\001\154\000\141\001¦\001V\001®\001¶\0012\001^\001â\001>\001ê\001ò\000\141\000\141\001ú\002N\000\141\000i\000i\000i\000i\000i\000i\000i\002V\002^\002n\002v\002{\000i\000i\000i\000i\001\n\000i\000i\001\026\000i\000\000\000i\000\000\000i\000i\000\000\000i\000i\000\000\000i\000i\000\000\000i\000\000\000i\000\000\000\000\000i\000i\000\000\000i\000\000\000\000\000i\000i\000\000\000\000\000i\000u\000u\000u\000u\000u\000u\000u\000\000\000\000\000\000\000\000\000\000\000u\000ú\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000u\000\000\001N\000u\000\000\000u\000u\000\000\000u\000u\000\000\000u\000\000\001V\000\000\000\000\0012\001^\000\000\001>\000\000\000\000\000u\000u\000\000\000\000\000u\000e\000e\000e\000e\000e\000e\000e\000\000\000\000\000\000\000\000\000\000\000e\000e\001\002\000e\001\n\000e\000e\001\026\000e\000\000\000e\000\000\000e\000e\000\000\000e\000e\000\000\000e\000e\000\000\000e\000\000\000e\000\000\000\000\0012\000e\000\000\000e\000\000\000\000\000e\000e\000\000\000\000\000e\000\133\000\133\000\133\000\133\000\133\000\133\000\133\000\000\000\000\000\000\000\000\000\000\000\133\000ú\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000\133\000\000\001N\000\133\000\000\000\133\000\133\000\000\000\133\000\133\000\000\000\133\000\000\001V\000\000\000\000\0012\001^\000\000\001>\000\000\000\000\000\133\000\133\000\000\000\000\000\133\000q\000q\000q\000q\000q\000q\000q\000\000\000\000\000\000\000\000\000\000\000q\000q\001\002\001\018\001\n\000q\001*\001\026\000q\000\000\000q\000\000\000q\000q\000\000\000q\000q\000\000\000q\000q\000\000\000q\000\000\000q\000\000\000\000\0012\000q\000\000\001>\000\000\000\000\000q\000q\000\000\000\000\000q\000a\000a\000a\000a\000a\000a\000a\000\000\000\000\000\000\000\000\000\000\000a\000a\001\002\000a\001\n\000a\000a\001\026\000a\000\000\000a\000\000\000a\000a\000\000\000a\000a\000\000\000a\000a\000\000\000a\000\000\000a\000\000\000\000\0012\000a\000\000\000a\000\000\000\000\000a\000a\000\000\000\000\000a\000m\000m\000m\000m\000m\000m\000m\000\000\000\000\000\000\000\000\000\000\000m\000m\000m\000m\001\n\000m\000m\001\026\000m\000\000\000m\000\000\000m\000m\000\000\000m\000m\000\000\000m\000m\000\000\000m\000\000\000m\000\000\000\000\000m\000m\000\000\000m\000\000\000\000\000m\000m\000\000\000\000\000m\000\145\000\145\000\145\000\145\000\145\000\145\000\145\000\000\000\000\000\000\000\000\000\000\000\145\000\145\001\002\001\018\001\n\000\145\001*\001\026\000\145\000\000\000\145\000\000\000\145\000\145\000\000\000\145\000\145\000\000\000\145\000\145\000\000\000\145\000\000\000\145\000\000\000\000\0012\000\145\000\000\000\145\000\000\000\000\000\145\000\145\000\000\000\000\000\145\000\129\000\129\000\129\000\129\000\129\000\129\000\129\000\000\000\000\000\000\000\000\000\000\000\129\000\129\001\002\001\018\001\n\000\129\001*\001\026\000\129\000\000\000\129\000\000\000\129\000\129\000\000\000\129\000\129\000\000\000\129\000\129\000\000\000\129\000\000\000\129\000\000\000\000\0012\000\129\000\000\001>\000\000\000\000\000\129\000\129\000\000\000\000\000\129\000y\000y\000y\000y\000y\000y\000y\000\000\000\000\000\000\000\000\000\000\000y\000y\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000y\000\000\000y\000y\000\000\000y\000y\000\000\000y\000y\000\000\000y\000\000\000y\000\000\000\000\0012\000y\000\000\001>\000\000\000\000\000y\000y\000\000\000\000\000y\000\137\000\137\000\137\000\137\000\137\000\137\000\137\000\000\000\000\000\000\000\000\000\000\000\137\000\137\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000\137\000\000\001N\000\137\000\000\000\137\000\137\000\000\000\137\000\137\000\000\000\137\000\000\000\137\000\000\000\000\0012\001^\000\000\001>\000\000\000\000\000\137\000\137\000\000\000\000\000\137\000}\000}\000}\000}\000}\000}\000}\000\000\000\000\000\000\000\000\000\000\000}\000}\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000}\000\000\000}\000}\000\000\000}\000}\000\000\000}\000}\000\000\000}\000\000\000}\000\000\000\000\0012\000}\000\000\001>\000\000\000\000\000}\000}\000\000\000\000\000}\000-\000\149\000-\000-\000-\000-\000-\000\000\000\000\000\000\000\000\000\000\000\000\000\149\000\149\000\149\000\149\000\149\000\149\000\149\000\149\000\000\000-\000\000\000\149\000-\000\000\000\000\000-\000\000\000-\000\000\000\000\000\149\000Î\000\149\000\000\000\000\000\149\000\149\000\000\000\149\000\000\000\000\000-\000\149\000\000\000å\000-\000å\000å\000å\000å\000å\000Ò\000\000\000\000\000Ö\000\000\001Þ\000ú\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000å\000\000\001N\000å\000\000\001n\000å\000Þ\000å\001f\000\000\000â\000Î\001V\000\000\000\000\0012\001^\000\000\001>\000\000\000\000\000å\000\000\000\000\000)\000å\000)\000)\000)\000)\000)\000Ò\000\000\000\000\000Ö\000\000\000¹\000ú\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000)\000\000\001N\000)\000\000\001\142\000)\000Þ\000)\000\000\000\000\000â\000\000\001V\000\000\001\130\0012\001^\000\000\001>\000\000\000\000\000)\000\000\000\000\000\000\000)\000ú\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000\000\000\000\001N\000\000\000\000\000ý\000\000\000\000\000\000\000\000\000\000\000ý\001Î\001V\000\000\000\000\0012\001^\000\000\001>\000\000\000\000\000\000\002\002\000ú\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000\000\000\000\001N\000\000\000\000\001¢\000\000\000\000\001Ö\000\000\000\000\000\000\000\000\001V\000\000\000\000\0012\001^\000\000\001>\000ú\001\002\001\018\001\n\001\"\001*\001\026\001F\000\000\000\000\000á\001N\000Î\000á\000á\000á\000á\000\000\000\000\000\000\000\000\000\000\001V\000\000\000\000\0012\001^\000\000\001>\000\000\000\000\000\000\000Ò\000\000\000\000\000Ö\000\000\000\000\000á\000Æ\000á\000Î\000Ñ\001\150\001ª\001º\000Æ\000\000\000Î\000\000\001\150\001ª\001º\000\000\000Þ\000\000\000\000\000\000\000â\000\000\000\000\000Ò\000\000\000\000\000Ö\000\000\000\000\001Æ\000Ò\000Ñ\000\000\000Ö\000\000\000\000\001Æ\000\000\000¡\000\000\000\000\000\000\000\000\000\000\000\000\000Þ\000\000\000\000\000\000\000â\000\000\000\000\000Þ\000\000\000\000\000\000\000â"))
  
  and lhs =
    (8, "\000\"!!!!!!!! \031\030\029\028\027\026\025\024\023\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\022\021\020\020\019\019\018\018\017\017\016\016\015\015\014\014\r\r\012\012\011\n\t\b\b\007\007\006\006\005\005\005\004\003\002\002\002\002\001\001\001")
  
  and goto =
    ((16, "\000\r\000\000\000\015\000\000\000\000\000\n\000\023\000\000\000b\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000n\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\030\000\000\000\000\000\014\000\000\000\130\000\000\000\000\000\000\001\b\000\000\000\000\000\000\000Ö\000\007\000\000\000\003\000\000\000¦\000\000\000\000\000\000\000Ê\000\000\000î\000\000\000\000\000\000\001*\000\000\001.\000\000\0012\000\000\001\146\000\000\001\150\000\000\001\154\000\000\001¶\000\000\001¸\000\000\001º\000\000\000\000\001¾\000\000\001Â\000\000\001È\000\000\001Ê\000\000\001Ì\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000æ\000\000\000\000\000\000\000\030\000\000\001æ\000\000\000\000\000b\000\000\001\014\000\000\000\000\001\156\000\000\000\000\001ê\000\000\001î\000\000\001ð\0004\000\000\000\000\000\000\000\130\000\000\000\000\000\000\000\000\000\000\002\018\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000Æ\000\000\000\000\0002\001\n\000\000\001N\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001P\000\000\000\000\001n\000\000\000\000\000\000\000ð\000\000"), (8, ":\004\005 \028\005|\022\023\024\031\019!(\0270:\153)\151\153\128|,\131\132\133\134\135\136\137\138\139\141\155\149z\128\147 \131\132\133\134\135\136\137\138\139\141:\022\023\024\026\000|\022\023\024\025\000\000\142\000\000:\022\023\024'\128|\000\131\132\133\134\135\136\137\138\145\141:~\000\128\000\000\131\132\133\134\135\136\137\138\139\141:\000:\000\000c|\000]\022\023\024/\000\000\000:O^\140:\128b`\131\132\133\134\135\136\137\138\139\141:O:`+¡|[m) \000\000\144\000O:\000:O:\128\000`\131\132\133\134\135\136\137\138\145\141:O\000>\000@|B\005\000\000\000\000\146\000O:O\154O\000\128|\153\131\132\133\134\135\136\137\138\145\141:\157:\128::\131\132\133\134\135\136\137\138\139\141p\000:::D:F:Hq:::\000\000\000O\000O\000OOJLN:Q:S::UWYOOO\000O\000O\000\000OOOh:s\000uw\000\000\000\000\000\000O\000O\000OO\000\000\000\000\130\000\000\000\000\000\000\000\000\000\000\000O"))
  
  and semantic_action =
    [|
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
                MenhirLib.EngineTypes.semv = nome;
                MenhirLib.EngineTypes.startp = _startpos_nome_;
                MenhirLib.EngineTypes.endp = _endpos_nome_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let xs0 : (Sast.expressao Ast.expressoes) = Obj.magic xs0 in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let nome : (string * Lexing.position) = Obj.magic nome in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao) = let args =
          let xs = xs0 in
              ( xs )
        in
                                                                         (
             ExpChamada  (nome, args)) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) =                               ( c ) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) =                               ( c ) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) =                               ( c ) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) =                               ( c ) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) =                               ( c ) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) =                               ( c ) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) =                             (c) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) =                         (c) in
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
        let _v : (Sast.expressao Ast.comando) =                                                        (
      CmdAtrib (esq,dir)
) in
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
          MenhirLib.EngineTypes.semv = exp;
          MenhirLib.EngineTypes.startp = _startpos_exp_;
          MenhirLib.EngineTypes.endp = _endpos_exp_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exp_ in
        let _endpos = _endpos_exp_ in
        let _v : (Sast.expressao Ast.comando) =                               ( CmdChamada exp ) in
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
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
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
        let stm : (Sast.expressao Ast.comandos) = Obj.magic stm in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sast.expressao Ast.comando) =                                                       ( While (e,stm) ) in
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
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_xs_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.comando) =                                                                       (
                   CmdEntrada xs
               ) in
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
          MenhirLib.EngineTypes.semv = _10;
          MenhirLib.EngineTypes.startp = _startpos__10_;
          MenhirLib.EngineTypes.endp = _endpos__10_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = stm;
            MenhirLib.EngineTypes.startp = _startpos_stm_;
            MenhirLib.EngineTypes.endp = _endpos_stm_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _8;
              MenhirLib.EngineTypes.startp = _startpos__8_;
              MenhirLib.EngineTypes.endp = _endpos__8_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = p;
                MenhirLib.EngineTypes.startp = _startpos_p_;
                MenhirLib.EngineTypes.endp = _endpos_p_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = e2;
                  MenhirLib.EngineTypes.startp = _startpos_e2_;
                  MenhirLib.EngineTypes.endp = _endpos_e2_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _5;
                    MenhirLib.EngineTypes.startp = _startpos__5_;
                    MenhirLib.EngineTypes.endp = _endpos__5_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = e1;
                      MenhirLib.EngineTypes.startp = _startpos_e1_;
                      MenhirLib.EngineTypes.endp = _endpos_e1_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = _3;
                        MenhirLib.EngineTypes.startp = _startpos__3_;
                        MenhirLib.EngineTypes.endp = _endpos__3_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.semv = lv;
                          MenhirLib.EngineTypes.startp = _startpos_lv_;
                          MenhirLib.EngineTypes.endp = _endpos_lv_;
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
            };
          };
        } = _menhir_stack in
        let _10 : (Lexing.position) = Obj.magic _10 in
        let stm : (Sast.expressao Ast.comandos) = Obj.magic stm in
        let _8 : (Lexing.position) = Obj.magic _8 in
        let p : (Sast.expressao) = Obj.magic p in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let lv : (Sast.expressao) = Obj.magic lv in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__10_ in
        let _v : (Sast.expressao Ast.comando) =                                                                                        ( For(lv, e1, e2, p, stm)  ) in
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let e : (Sast.expressao option) = Obj.magic e in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao Ast.comando) =                                        ( CmdRetorno e) in
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
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
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
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) =                                                                              (
                 CmdSaida xs
         ) in
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
                    MenhirLib.EngineTypes.semv = teste;
                    MenhirLib.EngineTypes.startp = _startpos_teste_;
                    MenhirLib.EngineTypes.endp = _endpos_teste_;
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
        let senao : (Sast.expressao Ast.comandos option) = Obj.magic senao in
        let entao : (Sast.expressao Ast.comandos) = Obj.magic entao in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (Sast.expressao Ast.comando) =                 (
              CmdSe (teste, entao, senao)
            ) in
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
          MenhirLib.EngineTypes.semv = _11;
          MenhirLib.EngineTypes.startp = _startpos__11_;
          MenhirLib.EngineTypes.endp = _endpos__11_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = cs;
            MenhirLib.EngineTypes.startp = _startpos_cs_;
            MenhirLib.EngineTypes.endp = _endpos_cs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _9;
              MenhirLib.EngineTypes.startp = _startpos__9_;
              MenhirLib.EngineTypes.endp = _endpos__9_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = ds;
                MenhirLib.EngineTypes.startp = _startpos_ds_;
                MenhirLib.EngineTypes.endp = _endpos_ds_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = tret;
                  MenhirLib.EngineTypes.startp = _startpos_tret_;
                  MenhirLib.EngineTypes.endp = _endpos_tret_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _6;
                    MenhirLib.EngineTypes.startp = _startpos__6_;
                    MenhirLib.EngineTypes.endp = _endpos__6_;
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
                            MenhirLib.EngineTypes.semv = nome;
                            MenhirLib.EngineTypes.startp = _startpos_nome_;
                            MenhirLib.EngineTypes.endp = _endpos_nome_;
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
              };
            };
          };
        } = _menhir_stack in
        let _11 : (Lexing.position) = Obj.magic _11 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _9 : (Lexing.position) = Obj.magic _9 in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let tret : (Ast.tipo) = Obj.magic tret in
        let _6 : (Lexing.position) = Obj.magic _6 in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let xs0 : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic xs0 in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let nome : (string * Lexing.position) = Obj.magic nome in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__11_ in
        let _v : (Sast.expressao Ast.funcao) = let formais =
          let xs = xs0 in
              ( xs )
        in
               (
    DecFun {
      fn_nome = nome;
      fn_tiporet = tret ;
      fn_formais = formais;
      fn_locais = List.flatten ds;
      fn_corpo = cs
    }
 ) in
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
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ids;
              MenhirLib.EngineTypes.startp = _startpos_ids_;
              MenhirLib.EngineTypes.endp = _endpos_ids_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ids_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.declaracao list) =                                                           (
                   List.map (fun id -> DecVar (id,t)) ids  ) in
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
        let _v : (Sast.expressao) =                       ( ExpVar v    ) in
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
        let _v : (Sast.expressao) =                       ( ExpInt i    ) in
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
        let _v : (Sast.expressao) =                       ( ExpString s ) in
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
          MenhirLib.EngineTypes.semv = b;
          MenhirLib.EngineTypes.startp = _startpos_b_;
          MenhirLib.EngineTypes.endp = _endpos_b_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let b : (bool * Lexing.position) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sast.expressao) =                       ( ExpBool b   ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                          ( (Mais, pos)  )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Menos, pos) )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Mult, pos)  )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Div, pos)   )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Menor, pos) )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                                ( (MenorIgual, pos) )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Igual, pos) )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Difer, pos) )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Maior, pos) )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                                ( (MaiorIgual, pos) )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (E, pos)     )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Ou, pos)    )
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
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
        let pos0 : (Lexing.position) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
                           ( (Concat, pos))
        in
                                                    ( ExpOp (op, e1, e2) ) in
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) =                         ( c ) in
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
        let _v : (Sast.expressao) =                                  ( e ) in
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
          MenhirLib.EngineTypes.semv = fim;
          MenhirLib.EngineTypes.startp = _startpos_fim_;
          MenhirLib.EngineTypes.endp = _endpos_fim_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = inicio;
              MenhirLib.EngineTypes.startp = _startpos_inicio_;
              MenhirLib.EngineTypes.endp = _endpos_inicio_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let fim : (int * Lexing.position) = Obj.magic fim in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let inicio : (int * Lexing.position) = Obj.magic inicio in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_inicio_ in
        let _endpos = _endpos_fim_ in
        let _v : (int Ast.pos * int Ast.pos) =                                  ( (inicio, fim) ) in
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
        let _v : (Sast.expressao Ast.comandos) =     ( [] ) in
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
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) =     ( x :: xs ) in
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
        let _v : (Sast.expressao Ast.funcoes) =     ( [] ) in
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
        let xs : (Sast.expressao Ast.funcoes) = Obj.magic xs in
        let x : (Sast.expressao Ast.funcao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.funcoes) =     ( x :: xs ) in
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
        let _v : (Ast.declaracao list list) =     ( [] ) in
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
        let xs : (Ast.declaracao list list) = Obj.magic xs in
        let x : (Ast.declaracao list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.declaracao list list) =     ( x :: xs ) in
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
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) =     ( [] ) in
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
        let x : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) =     ( x ) in
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
          MenhirLib.EngineTypes.semv = tp0;
          MenhirLib.EngineTypes.startp = _startpos_tp0_;
          MenhirLib.EngineTypes.endp = _endpos_tp0_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _20;
            MenhirLib.EngineTypes.startp = _startpos__20_;
            MenhirLib.EngineTypes.endp = _endpos__20_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = id0;
              MenhirLib.EngineTypes.startp = _startpos_id0_;
              MenhirLib.EngineTypes.endp = _endpos_id0_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let tp0 : (Ast.tipo) = Obj.magic tp0 in
        let _20 : (Lexing.position) = Obj.magic _20 in
        let id0 : (string * Lexing.position) = Obj.magic id0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id0_ in
        let _endpos = _endpos_tp0_ in
        let _v : (Ast.campos) = let x =
          let tp = tp0 in
          let _2 = _20 in
          let id = id0 in
                                                                     ( (id,tp) )
        in
            ( [ x ] ) in
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
            MenhirLib.EngineTypes.semv = tp0;
            MenhirLib.EngineTypes.startp = _startpos_tp0_;
            MenhirLib.EngineTypes.endp = _endpos_tp0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _20;
              MenhirLib.EngineTypes.startp = _startpos__20_;
              MenhirLib.EngineTypes.endp = _endpos__20_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = id0;
                MenhirLib.EngineTypes.startp = _startpos_id0_;
                MenhirLib.EngineTypes.endp = _endpos_id0_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let xs : (Ast.campos) = Obj.magic xs in
        let tp0 : (Ast.tipo) = Obj.magic tp0 in
        let _20 : (Lexing.position) = Obj.magic _20 in
        let id0 : (string * Lexing.position) = Obj.magic id0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id0_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.campos) = let x =
          let tp = tp0 in
          let _2 = _20 in
          let id = id0 in
                                                                     ( (id,tp) )
        in
            ( x :: xs ) in
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
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.comandos) =     ( [ x ] ) in
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
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) =     ( x :: xs ) in
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
        let _v : (Sast.expressao Ast.comandos option) =     ( None ) in
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
          MenhirLib.EngineTypes.semv = cs0;
          MenhirLib.EngineTypes.startp = _startpos_cs0_;
          MenhirLib.EngineTypes.endp = _endpos_cs0_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let cs0 : (Sast.expressao Ast.comandos) = Obj.magic cs0 in
        let _10 : (Lexing.position) = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos_cs0_ in
        let _v : (Sast.expressao Ast.comandos option) = let x =
          let cs = cs0 in
          let _1 = _10 in
                                                        (cs)
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
        let {
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = nome;
              MenhirLib.EngineTypes.startp = _startpos_nome_;
              MenhirLib.EngineTypes.endp = _endpos_nome_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let nome : (string * Lexing.position) = Obj.magic nome in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.ident Ast.pos * Ast.tipo) =                                     ( (nome, t) ) in
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
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let i : (int * Lexing.position) = Obj.magic i in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) =               (ExpInt i) in
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
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _5;
            MenhirLib.EngineTypes.startp = _startpos__5_;
            MenhirLib.EngineTypes.endp = _endpos__5_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = cs;
              MenhirLib.EngineTypes.startp = _startpos_cs_;
              MenhirLib.EngineTypes.endp = _endpos_cs_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _3;
                MenhirLib.EngineTypes.startp = _startpos__3_;
                MenhirLib.EngineTypes.endp = _endpos__3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = fs;
                  MenhirLib.EngineTypes.startp = _startpos_fs_;
                  MenhirLib.EngineTypes.endp = _endpos_fs_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = ds;
                    MenhirLib.EngineTypes.startp = _startpos_ds_;
                    MenhirLib.EngineTypes.endp = _endpos_ds_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : unit = Obj.magic _6 in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _3 : (Lexing.position) = Obj.magic _3 in
        let fs : (Sast.expressao Ast.funcoes) = Obj.magic fs in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ds_ in
        let _endpos = _endpos__6_ in
        let _v : (Sast.expressao Ast.programa) =               ( Programa (List.flatten ds, fs, cs) ) in
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
        let _v : (Ast.ident Ast.pos list) =     ( [ x ] ) in
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
        let xs : (Ast.ident Ast.pos list) = Obj.magic xs in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let x : (string * Lexing.position) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.ident Ast.pos list) =     ( x :: xs ) in
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
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.ident Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) =     ( [ x ] ) in
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
        let xs : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic xs in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let x : (Ast.ident Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) =     ( x :: xs ) in
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
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.tipo) =                       ( t ) in
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
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.tipo) =                       ( t ) in
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
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.tipo) =                       ( t ) in
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
          MenhirLib.EngineTypes.semv = tp;
          MenhirLib.EngineTypes.startp = _startpos_tp_;
          MenhirLib.EngineTypes.endp = _endpos_tp_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _5;
            MenhirLib.EngineTypes.startp = _startpos__5_;
            MenhirLib.EngineTypes.endp = _endpos__5_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _4;
              MenhirLib.EngineTypes.startp = _startpos__4_;
              MenhirLib.EngineTypes.endp = _endpos__4_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = lim;
                MenhirLib.EngineTypes.startp = _startpos_lim_;
                MenhirLib.EngineTypes.endp = _endpos_lim_;
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
        } = _menhir_stack in
        let tp : (Ast.tipo) = Obj.magic tp in
        let _5 : (Lexing.position) = Obj.magic _5 in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let lim : (int Ast.pos * int Ast.pos) = Obj.magic lim in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_tp_ in
        let _v : (Ast.tipo) =                                                        (
                let (inicio, fim) = lim in
                TipoArranjo (tp, inicio, fim)
            ) in
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
            MenhirLib.EngineTypes.semv = _3;
            MenhirLib.EngineTypes.startp = _startpos__3_;
            MenhirLib.EngineTypes.endp = _endpos__3_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = campos;
              MenhirLib.EngineTypes.startp = _startpos_campos_;
              MenhirLib.EngineTypes.endp = _endpos_campos_;
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
        let _3 : (Lexing.position) = Obj.magic _3 in
        let campos : (Ast.campos) = Obj.magic campos in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.tipo) =                             ( TipoRegistro campos ) in
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
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) =                        ( TipoInt    ) in
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
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) =                        ( TipoFloat  ) in
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
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) =                        ( TipoString ) in
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
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (Lexing.position) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) =                        ( TipoBool   ) in
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
        let _v : (Sast.expressao Ast.variavel) =                      ( VarSimples x ) in
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
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = v;
              MenhirLib.EngineTypes.startp = _startpos_v_;
              MenhirLib.EngineTypes.endp = _endpos_v_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x : (string * Lexing.position) = Obj.magic x in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) =                               ( VarCampo (v,x) ) in
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
                MenhirLib.EngineTypes.semv = v;
                MenhirLib.EngineTypes.startp = _startpos_v_;
                MenhirLib.EngineTypes.endp = _endpos_v_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (Lexing.position) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (Lexing.position) = Obj.magic _2 in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.variavel) =                                            ( VarElemento (v,e) ) in
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

let programa =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (Sast.expressao Ast.programa))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (Sast.expressao Ast.programa) MenhirInterpreter.checkpoint)
  
end
  

