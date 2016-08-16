
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471303943.93495")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "nano08.rb"
.annotate 'line', 0
    .const 'Sub' $P1012 = "13_1471303943.93495" 
    capture_lex $P1012
    .const 'Sub' $P1009 = "12_1471303943.93495" 
    capture_lex $P1009
    .const 'Sub' $P1006 = "11_1471303943.93495" 
    capture_lex $P1006
.annotate 'line', 1
    if has_param_1002, optparam_15
    new $P100, "Undef"
    set param_1002, $P100
  optparam_15:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    new $P101, "CardinalInteger"
    assign $P101, 1
    set $P1003, $P101
    .lex "n", $P1003
.annotate 'line', 4
    find_lex $P103, "n"
    unless_null $P103, vivify_16
    new $P103, "Undef"
  vivify_16:
    new $P104, "CardinalInteger"
    assign $P104, 1
    $P105 = "infix:=="($P103, $P104)
    if $P105, if_1004
.annotate 'line', 6
    .const 'Sub' $P1009 = "12_1471303943.93495" 
    capture_lex $P1009
    $P115 = $P1009()
    set $P102, $P115
.annotate 'line', 4
    goto if_1004_end
  if_1004:
.annotate 'line', 5
    .const 'Sub' $P1006 = "11_1471303943.93495" 
    capture_lex $P1006
    $P110 = $P1006()
    set $P102, $P110
  if_1004_end:
.annotate 'line', 1
    .return ($P102)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post14") :outer("10_1471303943.93495")
.annotate 'file', "nano08.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303943.93495" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1011" :init :load :anon :subid("13_1471303943.93495") :outer("10_1471303943.93495")
.annotate 'file', "nano08.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1008"  :anon :subid("12_1471303943.93495") :outer("10_1471303943.93495")
    .param pmc param_1010 :optional :named("!BLOCK")
    .param int has_param_1010 :opt_flag
.annotate 'file', "nano08.rb"
.annotate 'line', 6
    if has_param_1010, optparam_17
    new $P111, "Undef"
    set param_1010, $P111
  optparam_17:
    .lex "!BLOCK", param_1010
.annotate 'line', 7
    get_hll_global $P112, "puts"
    unless_null $P112, vivify_18
    new $P112, "Undef"
  vivify_18:
    new $P113, "CardinalString"
    assign $P113, "0"
    $P114 = $P112($P113)
.annotate 'line', 6
    .return ($P114)
.end


.HLL "cardinal"

.namespace []
.sub "_block1005"  :anon :subid("11_1471303943.93495") :outer("10_1471303943.93495")
    .param pmc param_1007 :optional :named("!BLOCK")
    .param int has_param_1007 :opt_flag
.annotate 'file', "nano08.rb"
.annotate 'line', 5
    if has_param_1007, optparam_19
    new $P106, "Undef"
    set param_1007, $P106
  optparam_19:
    .lex "!BLOCK", param_1007
    get_hll_global $P107, "puts"
    unless_null $P107, vivify_20
    new $P107, "Undef"
  vivify_20:
    find_lex $P108, "n"
    unless_null $P108, vivify_21
    new $P108, "Undef"
  vivify_21:
    $P109 = $P107($P108)
    .return ($P109)
.end

