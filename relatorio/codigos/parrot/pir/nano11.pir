
.HLL "cardinal"

.namespace []
.include "except_types.pasm"
.sub "_block1000" :load :main :anon :subid("10_1471302890.93109")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "nano11.rb"
.annotate 'line', 0
    .const 'Sub' $P1011 = "12_1471302890.93109" 
    capture_lex $P1011
    .const 'Sub' $P1007 = "11_1471302890.93109" 
    capture_lex $P1007
.annotate 'line', 1
    if has_param_1002, optparam_14
    new $P100, "Undef"
    set param_1002, $P100
  optparam_14:
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
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1009_handler
    push_eh $P114
  loop1009_test:
    find_lex $P104, "x"
    unless_null $P104, vivify_15
    new $P104, "Undef"
  vivify_15:
    find_lex $P105, "n"
    unless_null $P105, vivify_16
    new $P105, "Undef"
  vivify_16:
    $P106 = "infix:>"($P104, $P105)
    unless $P106, loop1009_done
  loop1009_redo:
.annotate 'line', 7
    .const 'Sub' $P1007 = "11_1471302890.93109" 
    capture_lex $P1007
    $P1007()
  loop1009_next:
    goto loop1009_test
  loop1009_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1009_next
    eq $P115, .CONTROL_LOOP_REDO, loop1009_redo
  loop1009_done:
    pop_eh 
.annotate 'line', 1
    .return ($P106)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post13") :outer("10_1471302890.93109")
.annotate 'file', "nano11.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471302890.93109" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1010" :init :load :anon :subid("12_1471302890.93109") :outer("10_1471302890.93109")
.annotate 'file', "nano11.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1006"  :anon :subid("11_1471302890.93109") :outer("10_1471302890.93109")
    .param pmc param_1008 :optional :named("!BLOCK")
    .param int has_param_1008 :opt_flag
.annotate 'file', "nano11.rb"
.annotate 'line', 7
    if has_param_1008, optparam_17
    new $P107, "Undef"
    set param_1008, $P107
  optparam_17:
    .lex "!BLOCK", param_1008
    find_lex $P108, "n"
    unless_null $P108, vivify_18
    new $P108, "Undef"
  vivify_18:
    find_lex $P109, "m"
    unless_null $P109, vivify_19
    new $P109, "Undef"
  vivify_19:
    $P110 = "infix:+"($P108, $P109)
    store_lex "n", $P110
.annotate 'line', 8
    get_hll_global $P111, "puts"
    unless_null $P111, vivify_20
    new $P111, "Undef"
  vivify_20:
    find_lex $P112, "n"
    unless_null $P112, vivify_21
    new $P112, "Undef"
  vivify_21:
    $P113 = $P111($P112)
.annotate 'line', 7
    .return ($P113)
.end

