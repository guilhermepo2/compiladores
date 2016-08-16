
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471302788.2895")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "nano06.rb"
.annotate 'line', 0
    .const 'Sub' $P1005 = "11_1471302788.2895" 
    capture_lex $P1005
.annotate 'line', 1
    if has_param_1002, optparam_13
    new $P100, "Undef"
    set param_1002, $P100
  optparam_13:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    new $P101, "CardinalInteger"
    assign $P101, 1
    new $P102, "CardinalInteger"
    assign $P102, 2
    $P103 = "infix:-"($P101, $P102)
    set $P1003, $P103
    .lex "n", $P1003
.annotate 'line', 4
    get_hll_global $P104, "puts"
    unless_null $P104, vivify_14
    new $P104, "Undef"
  vivify_14:
    find_lex $P105, "n"
    unless_null $P105, vivify_15
    new $P105, "Undef"
  vivify_15:
    $P106 = $P104($P105)
.annotate 'line', 1
    .return ($P106)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post12") :outer("10_1471302788.2895")
.annotate 'file', "nano06.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471302788.2895" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1004" :init :load :anon :subid("11_1471302788.2895") :outer("10_1471302788.2895")
.annotate 'file', "nano06.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end

