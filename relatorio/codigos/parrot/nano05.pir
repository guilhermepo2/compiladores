
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471302779.23036")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "nano05.rb"
.annotate 'line', 0
    .const 'Sub' $P1005 = "11_1471302779.23036" 
    capture_lex $P1005
.annotate 'line', 1
    if has_param_1002, optparam_13
    new $P100, "Undef"
    set param_1002, $P100
  optparam_13:
    .lex "!BLOCK", param_1002
.annotate 'line', 2
    new $P101, "CardinalInteger"
    assign $P101, 2
    set $P1003, $P101
    .lex "n", $P1003
.annotate 'line', 3
    get_hll_global $P102, "puts"
    unless_null $P102, vivify_14
    new $P102, "Undef"
  vivify_14:
    find_lex $P103, "n"
    unless_null $P103, vivify_15
    new $P103, "Undef"
  vivify_15:
    $P104 = $P102($P103)
.annotate 'line', 1
    .return ($P104)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post12") :outer("10_1471302779.23036")
.annotate 'file', "nano05.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471302779.23036" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1004" :init :load :anon :subid("11_1471302779.23036") :outer("10_1471302779.23036")
.annotate 'file', "nano05.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end

