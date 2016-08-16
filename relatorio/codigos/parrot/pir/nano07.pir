
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471302800.66042")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "nano07.rb"
.annotate 'line', 0
    .const 'Sub' $P1009 = "12_1471302800.66042" 
    capture_lex $P1009
    .const 'Sub' $P1006 = "11_1471302800.66042" 
    capture_lex $P1006
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
    find_lex $P103, "n"
    unless_null $P103, vivify_15
    new $P103, "Undef"
  vivify_15:
    new $P104, "CardinalInteger"
    assign $P104, 1
    $P105 = "infix:=="($P103, $P104)
    if $P105, if_1004
    set $P102, $P105
    goto if_1004_end
  if_1004:
.annotate 'line', 4
    .const 'Sub' $P1006 = "11_1471302800.66042" 
    capture_lex $P1006
    $P110 = $P1006()
    set $P102, $P110
  if_1004_end:
.annotate 'line', 1
    .return ($P102)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post13") :outer("10_1471302800.66042")
.annotate 'file', "nano07.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471302800.66042" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1008" :init :load :anon :subid("12_1471302800.66042") :outer("10_1471302800.66042")
.annotate 'file', "nano07.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1005"  :anon :subid("11_1471302800.66042") :outer("10_1471302800.66042")
    .param pmc param_1007 :optional :named("!BLOCK")
    .param int has_param_1007 :opt_flag
.annotate 'file', "nano07.rb"
.annotate 'line', 4
    if has_param_1007, optparam_16
    new $P106, "Undef"
    set param_1007, $P106
  optparam_16:
    .lex "!BLOCK", param_1007
    get_hll_global $P107, "puts"
    unless_null $P107, vivify_17
    new $P107, "Undef"
  vivify_17:
    find_lex $P108, "n"
    unless_null $P108, vivify_18
    new $P108, "Undef"
  vivify_18:
    $P109 = $P107($P108)
    .return ($P109)
.end

