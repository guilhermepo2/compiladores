
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471303683.49484")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro01.rb"
.annotate 'line', 0
    .const 'Sub' $P1009 = "12_1471303683.49484" 
    capture_lex $P1009
    .const 'Sub' $P1006 = "11_1471303683.49484" 
    capture_lex $P1006
.annotate 'line', 1
    if has_param_1002, optparam_14
    new $P100, "Undef"
    set param_1002, $P100
  optparam_14:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    get_hll_global $P101, "puts"
    unless_null $P101, vivify_15
    new $P101, "Undef"
  vivify_15:
    new $P102, "CardinalString"
    assign $P102, "Tabela de Conversao: Celsius -> Fahrenheit"
    $P101($P102)
.annotate 'line', 4
    get_hll_global $P103, "puts"
    unless_null $P103, vivify_16
    new $P103, "Undef"
  vivify_16:
    new $P104, "CardinalString"
    assign $P104, "Digite a temperatura em Celsius: "
    $P103($P104)
.annotate 'line', 5
    get_hll_global $P105, "gets"
    unless_null $P105, vivify_17
    new $P105, "Undef"
  vivify_17:
    $P106 = $P105."chomp"()
    $P107 = $P106."to_i"()
    set $P1003, $P107
    .lex "cel", $P1003
.annotate 'line', 6
    new $P108, "CardinalInteger"
    assign $P108, 9
    find_lex $P109, "cel"
    unless_null $P109, vivify_18
    new $P109, "Undef"
  vivify_18:
    $P110 = "infix:*"($P108, $P109)
    new $P111, "CardinalInteger"
    assign $P111, 160
    $P112 = "infix:+"($P110, $P111)
    $P113 = "circumfix:( )"($P112)
    new $P114, "CardinalInteger"
    assign $P114, 5
    $P115 = "infix:/"($P113, $P114)
    set $P1004, $P115
    .lex "far", $P1004
.annotate 'line', 7
    get_hll_global $P116, "puts"
    unless_null $P116, vivify_19
    new $P116, "Undef"
  vivify_19:
    new $P117, "CardinalString"
    assign $P117, "A nova temperatura e: "
    .const 'Sub' $P1006 = "11_1471303683.49484" 
    capture_lex $P1006
    $S100 = $P1006()
    concat $P120, $P117, $S100
    $P121 = $P116($P120)
.annotate 'line', 1
    .return ($P121)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post13") :outer("10_1471303683.49484")
.annotate 'file', "micro01.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303683.49484" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1008" :init :load :anon :subid("12_1471303683.49484") :outer("10_1471303683.49484")
.annotate 'file', "micro01.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1005"  :anon :subid("11_1471303683.49484") :outer("10_1471303683.49484")
    .param pmc param_1007 :optional :named("!BLOCK")
    .param int has_param_1007 :opt_flag
.annotate 'file', "micro01.rb"
.annotate 'line', 7
    if has_param_1007, optparam_20
    new $P118, "Undef"
    set param_1007, $P118
  optparam_20:
    .lex "!BLOCK", param_1007
    find_lex $P119, "far"
    unless_null $P119, vivify_21
    new $P119, "Undef"
  vivify_21:
    .return ($P119)
.end

