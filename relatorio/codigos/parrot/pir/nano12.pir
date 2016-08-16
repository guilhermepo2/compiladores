
.HLL "cardinal"

.namespace []
.include "except_types.pasm"
.sub "_block1000" :load :main :anon :subid("10_1471302899.27719")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "nano12.rb"
.annotate 'line', 0
    .const 'Sub' $P1018 = "14_1471302899.27719" 
    capture_lex $P1018
    .const 'Sub' $P1007 = "11_1471302899.27719" 
    capture_lex $P1007
.annotate 'line', 1
    if has_param_1002, optparam_16
    new $P100, "Undef"
    set param_1002, $P100
  optparam_16:
    .lex "!BLOCK", param_1002
.annotate 'line', 2
    new $P101, "CardinalInteger"
    assign $P101, 1
    set $P1003, $P101
    .lex "n", $P1003
.annotate 'line', 3
    new $P102, "CardinalInteger"
    assign $P102, 2
    set $P1004, $P102
    .lex "m", $P1004
.annotate 'line', 4
    new $P103, "CardinalInteger"
    assign $P103, 5
    set $P1005, $P103
    .lex "x", $P1005
.annotate 'line', 6
    new $P122, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P122, loop1016_handler
    push_eh $P122
  loop1016_test:
    find_lex $P104, "x"
    unless_null $P104, vivify_17
    new $P104, "Undef"
  vivify_17:
    find_lex $P105, "n"
    unless_null $P105, vivify_18
    new $P105, "Undef"
  vivify_18:
    $P106 = "infix:>"($P104, $P105)
    unless $P106, loop1016_done
  loop1016_redo:
.annotate 'line', 7
    .const 'Sub' $P1007 = "11_1471302899.27719" 
    capture_lex $P1007
    $P1007()
  loop1016_next:
    goto loop1016_test
  loop1016_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop1016_next
    eq $P123, .CONTROL_LOOP_REDO, loop1016_redo
  loop1016_done:
    pop_eh 
.annotate 'line', 1
    .return ($P106)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post15") :outer("10_1471302899.27719")
.annotate 'file', "nano12.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471302899.27719" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1017" :init :load :anon :subid("14_1471302899.27719") :outer("10_1471302899.27719")
.annotate 'file', "nano12.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1006"  :anon :subid("11_1471302899.27719") :outer("10_1471302899.27719")
    .param pmc param_1008 :optional :named("!BLOCK")
    .param int has_param_1008 :opt_flag
.annotate 'file', "nano12.rb"
.annotate 'line', 7
    .const 'Sub' $P1014 = "13_1471302899.27719" 
    capture_lex $P1014
    .const 'Sub' $P1011 = "12_1471302899.27719" 
    capture_lex $P1011
    if has_param_1008, optparam_19
    new $P107, "Undef"
    set param_1008, $P107
  optparam_19:
    .lex "!BLOCK", param_1008
    find_lex $P108, "n"
    unless_null $P108, vivify_20
    new $P108, "Undef"
  vivify_20:
    find_lex $P109, "m"
    unless_null $P109, vivify_21
    new $P109, "Undef"
  vivify_21:
    $P110 = "infix:=="($P108, $P109)
    if $P110, if_1009
.annotate 'line', 9
    .const 'Sub' $P1014 = "13_1471302899.27719" 
    capture_lex $P1014
    $P1014()
    goto if_1009_end
  if_1009:
.annotate 'line', 8
    .const 'Sub' $P1011 = "12_1471302899.27719" 
    capture_lex $P1011
    $P1011()
  if_1009_end:
.annotate 'line', 12
    find_lex $P119, "x"
    unless_null $P119, vivify_27
    new $P119, "Undef"
  vivify_27:
    new $P120, "CardinalInteger"
    assign $P120, 1
    $P121 = "infix:-"($P119, $P120)
    store_lex "x", $P121
.annotate 'line', 7
    .return ($P121)
.end


.HLL "cardinal"

.namespace []
.sub "_block1013"  :anon :subid("13_1471302899.27719") :outer("11_1471302899.27719")
    .param pmc param_1015 :optional :named("!BLOCK")
    .param int has_param_1015 :opt_flag
.annotate 'file', "nano12.rb"
.annotate 'line', 9
    if has_param_1015, optparam_22
    new $P115, "Undef"
    set param_1015, $P115
  optparam_22:
    .lex "!BLOCK", param_1015
.annotate 'line', 10
    get_hll_global $P116, "puts"
    unless_null $P116, vivify_23
    new $P116, "Undef"
  vivify_23:
    new $P117, "CardinalString"
    assign $P117, "0"
    $P118 = $P116($P117)
.annotate 'line', 9
    .return ($P118)
.end


.HLL "cardinal"

.namespace []
.sub "_block1010"  :anon :subid("12_1471302899.27719") :outer("11_1471302899.27719")
    .param pmc param_1012 :optional :named("!BLOCK")
    .param int has_param_1012 :opt_flag
.annotate 'file', "nano12.rb"
.annotate 'line', 8
    if has_param_1012, optparam_24
    new $P111, "Undef"
    set param_1012, $P111
  optparam_24:
    .lex "!BLOCK", param_1012
    get_hll_global $P112, "puts"
    unless_null $P112, vivify_25
    new $P112, "Undef"
  vivify_25:
    find_lex $P113, "n"
    unless_null $P113, vivify_26
    new $P113, "Undef"
  vivify_26:
    $P114 = $P112($P113)
    .return ($P114)
.end

