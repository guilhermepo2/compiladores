
.HLL "cardinal"

.namespace []
.include "except_types.pasm"
.sub "_block1000" :load :main :anon :subid("10_1471303784.49866")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro08.rb"
.annotate 'line', 0
    .const 'Sub' $P1022 = "16_1471303784.49866" 
    capture_lex $P1022
    .const 'Sub' $P1005 = "11_1471303784.49866" 
    capture_lex $P1005
.annotate 'line', 1
    if has_param_1002, optparam_18
    new $P100, "Undef"
    set param_1002, $P100
  optparam_18:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    new $P101, "CardinalInteger"
    assign $P101, 1
    set $P1003, $P101
    .lex "numero", $P1003
.annotate 'line', 4
    new $P135, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P135, loop1020_handler
    push_eh $P135
  loop1020_test:
    find_lex $P102, "numero"
    unless_null $P102, vivify_19
    new $P102, "Undef"
  vivify_19:
    new $P103, "CardinalInteger"
    assign $P103, 0
    $P104 = "infix:!="($P102, $P103)
    unless $P104, loop1020_done
  loop1020_redo:
.annotate 'line', 5
    .const 'Sub' $P1005 = "11_1471303784.49866" 
    capture_lex $P1005
    $P1005()
  loop1020_next:
    goto loop1020_test
  loop1020_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P136, exception, 'type'
    eq $P136, .CONTROL_LOOP_NEXT, loop1020_next
    eq $P136, .CONTROL_LOOP_REDO, loop1020_redo
  loop1020_done:
    pop_eh 
.annotate 'line', 1
    .return ($P104)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post17") :outer("10_1471303784.49866")
.annotate 'file', "micro08.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303784.49866" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1021" :init :load :anon :subid("16_1471303784.49866") :outer("10_1471303784.49866")
.annotate 'file', "micro08.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1004"  :anon :subid("11_1471303784.49866") :outer("10_1471303784.49866")
    .param pmc param_1006 :optional :named("!BLOCK")
    .param int has_param_1006 :opt_flag
.annotate 'file', "micro08.rb"
.annotate 'line', 5
    .const 'Sub' $P1015 = "14_1471303784.49866" 
    capture_lex $P1015
    .const 'Sub' $P1009 = "12_1471303784.49866" 
    capture_lex $P1009
    if has_param_1006, optparam_20
    new $P105, "Undef"
    set param_1006, $P105
  optparam_20:
    .lex "!BLOCK", param_1006
    get_hll_global $P106, "puts"
    unless_null $P106, vivify_21
    new $P106, "Undef"
  vivify_21:
    new $P107, "CardinalString"
    assign $P107, "Escreva um numero:"
    $P106($P107)
.annotate 'line', 6
    get_hll_global $P108, "gets"
    unless_null $P108, vivify_22
    new $P108, "Undef"
  vivify_22:
    $P109 = $P108."chomp"()
    $P110 = $P109."to_i"()
    store_lex "numero", $P110
.annotate 'line', 8
    find_lex $P112, "numero"
    unless_null $P112, vivify_23
    new $P112, "Undef"
  vivify_23:
    new $P113, "CardinalInteger"
    assign $P113, 10
    $P114 = "infix:>"($P112, $P113)
    if $P114, if_1007
.annotate 'line', 10
    .const 'Sub' $P1015 = "14_1471303784.49866" 
    capture_lex $P1015
    $P134 = $P1015()
    set $P111, $P134
.annotate 'line', 8
    goto if_1007_end
  if_1007:
.annotate 'line', 9
    .const 'Sub' $P1009 = "12_1471303784.49866" 
    capture_lex $P1009
    $P124 = $P1009()
    set $P111, $P124
  if_1007_end:
.annotate 'line', 5
    .return ($P111)
.end


.HLL "cardinal"

.namespace []
.sub "_block1014"  :anon :subid("14_1471303784.49866") :outer("11_1471303784.49866")
    .param pmc param_1016 :optional :named("!BLOCK")
    .param int has_param_1016 :opt_flag
.annotate 'file', "micro08.rb"
.annotate 'line', 10
    .const 'Sub' $P1018 = "15_1471303784.49866" 
    capture_lex $P1018
    if has_param_1016, optparam_24
    new $P125, "Undef"
    set param_1016, $P125
  optparam_24:
    .lex "!BLOCK", param_1016
.annotate 'line', 11
    get_hll_global $P126, "puts"
    unless_null $P126, vivify_25
    new $P126, "Undef"
  vivify_25:
    new $P127, "CardinalString"
    assign $P127, "O numero "
    .const 'Sub' $P1018 = "15_1471303784.49866" 
    capture_lex $P1018
    $S101 = $P1018()
    concat $P130, $P127, $S101
    new $P131, "CardinalString"
    assign $P131, "e menor que 10"
    concat $P132, $P130, $P131
    $P133 = $P126($P132)
.annotate 'line', 10
    .return ($P133)
.end


.HLL "cardinal"

.namespace []
.sub "_block1017"  :anon :subid("15_1471303784.49866") :outer("14_1471303784.49866")
    .param pmc param_1019 :optional :named("!BLOCK")
    .param int has_param_1019 :opt_flag
.annotate 'file', "micro08.rb"
.annotate 'line', 11
    if has_param_1019, optparam_26
    new $P128, "Undef"
    set param_1019, $P128
  optparam_26:
    .lex "!BLOCK", param_1019
    find_lex $P129, "numero"
    unless_null $P129, vivify_27
    new $P129, "Undef"
  vivify_27:
    .return ($P129)
.end


.HLL "cardinal"

.namespace []
.sub "_block1008"  :anon :subid("12_1471303784.49866") :outer("11_1471303784.49866")
    .param pmc param_1010 :optional :named("!BLOCK")
    .param int has_param_1010 :opt_flag
.annotate 'file', "micro08.rb"
.annotate 'line', 9
    .const 'Sub' $P1012 = "13_1471303784.49866" 
    capture_lex $P1012
    if has_param_1010, optparam_28
    new $P115, "Undef"
    set param_1010, $P115
  optparam_28:
    .lex "!BLOCK", param_1010
    get_hll_global $P116, "puts"
    unless_null $P116, vivify_29
    new $P116, "Undef"
  vivify_29:
    new $P117, "CardinalString"
    assign $P117, "O numero "
    .const 'Sub' $P1012 = "13_1471303784.49866" 
    capture_lex $P1012
    $S100 = $P1012()
    concat $P120, $P117, $S100
    new $P121, "CardinalString"
    assign $P121, "e maior que 10"
    concat $P122, $P120, $P121
    $P123 = $P116($P122)
    .return ($P123)
.end


.HLL "cardinal"

.namespace []
.sub "_block1011"  :anon :subid("13_1471303784.49866") :outer("12_1471303784.49866")
    .param pmc param_1013 :optional :named("!BLOCK")
    .param int has_param_1013 :opt_flag
.annotate 'file', "micro08.rb"
.annotate 'line', 9
    if has_param_1013, optparam_30
    new $P118, "Undef"
    set param_1013, $P118
  optparam_30:
    .lex "!BLOCK", param_1013
    find_lex $P119, "numero"
    unless_null $P119, vivify_31
    new $P119, "Undef"
  vivify_31:
    .return ($P119)
.end

