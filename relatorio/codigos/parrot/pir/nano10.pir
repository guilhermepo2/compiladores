
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471302878.09803")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "nano10.rb"
.annotate 'line', 0
    .const 'Sub' $P1013 = "13_1471302878.09803" 
    capture_lex $P1013
    .const 'Sub' $P1010 = "12_1471302878.09803" 
    capture_lex $P1010
    .const 'Sub' $P1007 = "11_1471302878.09803" 
    capture_lex $P1007
.annotate 'line', 1
    if has_param_1002, optparam_15
    new $P100, "Undef"
    set param_1002, $P100
  optparam_15:
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
.annotate 'line', 5
    find_lex $P104, "n"
    unless_null $P104, vivify_16
    new $P104, "Undef"
  vivify_16:
    find_lex $P105, "m"
    unless_null $P105, vivify_17
    new $P105, "Undef"
  vivify_17:
    $P106 = "infix:=="($P104, $P105)
    if $P106, if_1005
.annotate 'line', 7
    .const 'Sub' $P1010 = "12_1471302878.09803" 
    capture_lex $P1010
    $P116 = $P1010()
    set $P103, $P116
.annotate 'line', 5
    goto if_1005_end
  if_1005:
.annotate 'line', 6
    .const 'Sub' $P1007 = "11_1471302878.09803" 
    capture_lex $P1007
    $P111 = $P1007()
    set $P103, $P111
  if_1005_end:
.annotate 'line', 1
    .return ($P103)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post14") :outer("10_1471302878.09803")
.annotate 'file', "nano10.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471302878.09803" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1012" :init :load :anon :subid("13_1471302878.09803") :outer("10_1471302878.09803")
.annotate 'file', "nano10.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1009"  :anon :subid("12_1471302878.09803") :outer("10_1471302878.09803")
    .param pmc param_1011 :optional :named("!BLOCK")
    .param int has_param_1011 :opt_flag
.annotate 'file', "nano10.rb"
.annotate 'line', 7
    if has_param_1011, optparam_18
    new $P112, "Undef"
    set param_1011, $P112
  optparam_18:
    .lex "!BLOCK", param_1011
.annotate 'line', 8
    get_hll_global $P113, "puts"
    unless_null $P113, vivify_19
    new $P113, "Undef"
  vivify_19:
    new $P114, "CardinalString"
    assign $P114, "0"
    $P115 = $P113($P114)
.annotate 'line', 7
    .return ($P115)
.end


.HLL "cardinal"

.namespace []
.sub "_block1006"  :anon :subid("11_1471302878.09803") :outer("10_1471302878.09803")
    .param pmc param_1008 :optional :named("!BLOCK")
    .param int has_param_1008 :opt_flag
.annotate 'file', "nano10.rb"
.annotate 'line', 6
    if has_param_1008, optparam_20
    new $P107, "Undef"
    set param_1008, $P107
  optparam_20:
    .lex "!BLOCK", param_1008
    get_hll_global $P108, "puts"
    unless_null $P108, vivify_21
    new $P108, "Undef"
  vivify_21:
    find_lex $P109, "n"
    unless_null $P109, vivify_22
    new $P109, "Undef"
  vivify_22:
    $P110 = $P108($P109)
    .return ($P110)
.end

