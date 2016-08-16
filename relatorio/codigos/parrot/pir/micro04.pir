
.HLL "cardinal"

.namespace []
.include "except_types.pasm"
.sub "_block1000" :load :main :anon :subid("10_1471303711.8864")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro04.rb"
.annotate 'line', 0
    .const 'Sub' $P1022 = "15_1471303711.8864" 
    capture_lex $P1022
    .const 'Sub' $P1019 = "14_1471303711.8864" 
    capture_lex $P1019
    .const 'Sub' $P1005 = "11_1471303711.8864" 
    capture_lex $P1005
.annotate 'line', 1
    if has_param_1002, optparam_17
    new $P100, "Undef"
    set param_1002, $P100
  optparam_17:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    new $P101, "CardinalInteger"
    assign $P101, 0
    set $P1003, $P101
    .lex "intervalo", $P1003
.annotate 'line', 4
    new $P103, "CardinalInteger"
    assign $P103, 1
    new $P104, "CardinalInteger"
    assign $P104, 5
    $P105 = "infix:.."($P103, $P104)
    defined $I100, $P105
    unless $I100, for_undef_18
    iter $P102, $P105
    new $P129, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P129, loop1017_handler
    push_eh $P129
  loop1017_test:
    unless $P102, loop1017_done
    shift $P106, $P102
  loop1017_redo:
.annotate 'line', 5
    .const 'Sub' $P1005 = "11_1471303711.8864" 
    capture_lex $P1005
    $P1005($P106)
  loop1017_next:
    goto loop1017_test
  loop1017_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P130, exception, 'type'
    eq $P130, .CONTROL_LOOP_NEXT, loop1017_next
    eq $P130, .CONTROL_LOOP_REDO, loop1017_redo
  loop1017_done:
    pop_eh 
  for_undef_18:
.annotate 'line', 14
    get_hll_global $P131, "puts"
    unless_null $P131, vivify_28
    new $P131, "Undef"
  vivify_28:
    new $P132, "CardinalString"
    assign $P132, "Ao total, foram digitados "
    .const 'Sub' $P1019 = "14_1471303711.8864" 
    capture_lex $P1019
    $S100 = $P1019()
    concat $P135, $P132, $S100
    new $P136, "CardinalString"
    assign $P136, "numeros no intervalo entre 10 e 150"
    concat $P137, $P135, $P136
    $P138 = $P131($P137)
.annotate 'line', 1
    .return ($P138)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post16") :outer("10_1471303711.8864")
.annotate 'file', "micro04.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303711.8864" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1021" :init :load :anon :subid("15_1471303711.8864") :outer("10_1471303711.8864")
.annotate 'file', "micro04.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1004"  :anon :subid("11_1471303711.8864") :outer("10_1471303711.8864")
    .param pmc param_1007 :optional
    .param int has_param_1007 :opt_flag
    .param pmc param_1006 :optional :named("!BLOCK")
    .param int has_param_1006 :opt_flag
.annotate 'file', "micro04.rb"
.annotate 'line', 5
    .const 'Sub' $P1011 = "12_1471303711.8864" 
    capture_lex $P1011
    if has_param_1006, optparam_19
    new $P107, "Undef"
    set param_1006, $P107
  optparam_19:
    .lex "!BLOCK", param_1006
.annotate 'line', 4
    if has_param_1007, optparam_20
    new $P108, "Undef"
    set param_1007, $P108
  optparam_20:
    .lex "i", param_1007
.annotate 'line', 5
    get_hll_global $P109, "puts"
    unless_null $P109, vivify_21
    new $P109, "Undef"
  vivify_21:
    new $P110, "CardinalString"
    assign $P110, "Digite um numero:"
    $P109($P110)
.annotate 'line', 6
    get_hll_global $P111, "gets"
    unless_null $P111, vivify_22
    new $P111, "Undef"
  vivify_22:
    $P112 = $P111."chomp"()
    $P113 = $P112."to_i"()
    set $P1008, $P113
    .lex "num", $P1008
.annotate 'line', 7
    find_lex $P115, "num"
    unless_null $P115, vivify_23
    new $P115, "Undef"
  vivify_23:
    new $P116, "CardinalInteger"
    assign $P116, 10
    $P117 = "infix:>="($P115, $P116)
    if $P117, if_1009
    set $P114, $P117
    goto if_1009_end
  if_1009:
.annotate 'line', 8
    .const 'Sub' $P1011 = "12_1471303711.8864" 
    capture_lex $P1011
    $P128 = $P1011()
    set $P114, $P128
  if_1009_end:
.annotate 'line', 5
    .return ($P114)
.end


.HLL "cardinal"

.namespace []
.sub "_block1010"  :anon :subid("12_1471303711.8864") :outer("11_1471303711.8864")
    .param pmc param_1012 :optional :named("!BLOCK")
    .param int has_param_1012 :opt_flag
.annotate 'file', "micro04.rb"
.annotate 'line', 8
    .const 'Sub' $P1015 = "13_1471303711.8864" 
    capture_lex $P1015
    if has_param_1012, optparam_24
    new $P118, "Undef"
    set param_1012, $P118
  optparam_24:
    .lex "!BLOCK", param_1012
    find_lex $P120, "num"
    unless_null $P120, vivify_25
    new $P120, "Undef"
  vivify_25:
    new $P121, "CardinalInteger"
    assign $P121, 150
    $P122 = "infix:<="($P120, $P121)
    if $P122, if_1013
    set $P119, $P122
    goto if_1013_end
  if_1013:
.annotate 'line', 9
    .const 'Sub' $P1015 = "13_1471303711.8864" 
    capture_lex $P1015
    $P127 = $P1015()
    set $P119, $P127
  if_1013_end:
.annotate 'line', 8
    .return ($P119)
.end


.HLL "cardinal"

.namespace []
.sub "_block1014"  :anon :subid("13_1471303711.8864") :outer("12_1471303711.8864")
    .param pmc param_1016 :optional :named("!BLOCK")
    .param int has_param_1016 :opt_flag
.annotate 'file', "micro04.rb"
.annotate 'line', 9
    if has_param_1016, optparam_26
    new $P123, "Undef"
    set param_1016, $P123
  optparam_26:
    .lex "!BLOCK", param_1016
    find_lex $P124, "intervalo"
    unless_null $P124, vivify_27
    new $P124, "Undef"
  vivify_27:
    new $P125, "CardinalInteger"
    assign $P125, 1
    $P126 = "infix:+"($P124, $P125)
    store_lex "intervalo", $P126
    .return ($P126)
.end


.HLL "cardinal"

.namespace []
.sub "_block1018"  :anon :subid("14_1471303711.8864") :outer("10_1471303711.8864")
    .param pmc param_1020 :optional :named("!BLOCK")
    .param int has_param_1020 :opt_flag
.annotate 'file', "micro04.rb"
.annotate 'line', 14
    if has_param_1020, optparam_29
    new $P133, "Undef"
    set param_1020, $P133
  optparam_29:
    .lex "!BLOCK", param_1020
    find_lex $P134, "intervalo"
    unless_null $P134, vivify_30
    new $P134, "Undef"
  vivify_30:
    .return ($P134)
.end

