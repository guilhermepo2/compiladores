
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471303701.96532")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro03.rb"
.annotate 'line', 0
    .const 'Sub' $P1019 = "15_1471303701.96532" 
    capture_lex $P1019
    .const 'Sub' $P1016 = "14_1471303701.96532" 
    capture_lex $P1016
    .const 'Sub' $P1006 = "11_1471303701.96532" 
    capture_lex $P1006
.annotate 'line', 1
    if has_param_1002, optparam_17
    new $P100, "Undef"
    set param_1002, $P100
  optparam_17:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    get_hll_global $P101, "puts"
    unless_null $P101, vivify_18
    new $P101, "Undef"
  vivify_18:
    new $P102, "CardinalString"
    assign $P102, "Digite um numero:"
    $P101($P102)
.annotate 'line', 4
    get_hll_global $P103, "gets"
    unless_null $P103, vivify_19
    new $P103, "Undef"
  vivify_19:
    $P104 = $P103."chomp"()
    $P105 = $P104."to_i"()
    set $P1003, $P105
    .lex "numero", $P1003
.annotate 'line', 6
    find_lex $P107, "numero"
    unless_null $P107, vivify_20
    new $P107, "Undef"
  vivify_20:
    new $P108, "CardinalInteger"
    assign $P108, 100
    $P109 = "infix:>="($P107, $P108)
    if $P109, if_1004
.annotate 'line', 12
    .const 'Sub' $P1016 = "14_1471303701.96532" 
    capture_lex $P1016
    $P130 = $P1016()
    set $P106, $P130
.annotate 'line', 6
    goto if_1004_end
  if_1004:
.annotate 'line', 7
    .const 'Sub' $P1006 = "11_1471303701.96532" 
    capture_lex $P1006
    $P125 = $P1006()
    set $P106, $P125
  if_1004_end:
.annotate 'line', 1
    .return ($P106)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post16") :outer("10_1471303701.96532")
.annotate 'file', "micro03.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303701.96532" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1018" :init :load :anon :subid("15_1471303701.96532") :outer("10_1471303701.96532")
.annotate 'file', "micro03.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1015"  :anon :subid("14_1471303701.96532") :outer("10_1471303701.96532")
    .param pmc param_1017 :optional :named("!BLOCK")
    .param int has_param_1017 :opt_flag
.annotate 'file', "micro03.rb"
.annotate 'line', 12
    if has_param_1017, optparam_21
    new $P126, "Undef"
    set param_1017, $P126
  optparam_21:
    .lex "!BLOCK", param_1017
.annotate 'line', 13
    get_hll_global $P127, "puts"
    unless_null $P127, vivify_22
    new $P127, "Undef"
  vivify_22:
    new $P128, "CardinalString"
    assign $P128, "O numero nao esta no intervalo entre 100 e 200"
    $P129 = $P127($P128)
.annotate 'line', 12
    .return ($P129)
.end


.HLL "cardinal"

.namespace []
.sub "_block1005"  :anon :subid("11_1471303701.96532") :outer("10_1471303701.96532")
    .param pmc param_1007 :optional :named("!BLOCK")
    .param int has_param_1007 :opt_flag
.annotate 'file', "micro03.rb"
.annotate 'line', 7
    .const 'Sub' $P1013 = "13_1471303701.96532" 
    capture_lex $P1013
    .const 'Sub' $P1010 = "12_1471303701.96532" 
    capture_lex $P1010
    if has_param_1007, optparam_23
    new $P110, "Undef"
    set param_1007, $P110
  optparam_23:
    .lex "!BLOCK", param_1007
    find_lex $P112, "numero"
    unless_null $P112, vivify_24
    new $P112, "Undef"
  vivify_24:
    new $P113, "CardinalInteger"
    assign $P113, 200
    $P114 = "infix:<="($P112, $P113)
    if $P114, if_1008
.annotate 'line', 9
    .const 'Sub' $P1013 = "13_1471303701.96532" 
    capture_lex $P1013
    $P124 = $P1013()
    set $P111, $P124
.annotate 'line', 7
    goto if_1008_end
  if_1008:
.annotate 'line', 8
    .const 'Sub' $P1010 = "12_1471303701.96532" 
    capture_lex $P1010
    $P119 = $P1010()
    set $P111, $P119
  if_1008_end:
.annotate 'line', 7
    .return ($P111)
.end


.HLL "cardinal"

.namespace []
.sub "_block1012"  :anon :subid("13_1471303701.96532") :outer("11_1471303701.96532")
    .param pmc param_1014 :optional :named("!BLOCK")
    .param int has_param_1014 :opt_flag
.annotate 'file', "micro03.rb"
.annotate 'line', 9
    if has_param_1014, optparam_25
    new $P120, "Undef"
    set param_1014, $P120
  optparam_25:
    .lex "!BLOCK", param_1014
.annotate 'line', 10
    get_hll_global $P121, "puts"
    unless_null $P121, vivify_26
    new $P121, "Undef"
  vivify_26:
    new $P122, "CardinalString"
    assign $P122, "O numero nao esta no intervalo entre 100 e 200"
    $P123 = $P121($P122)
.annotate 'line', 9
    .return ($P123)
.end


.HLL "cardinal"

.namespace []
.sub "_block1009"  :anon :subid("12_1471303701.96532") :outer("11_1471303701.96532")
    .param pmc param_1011 :optional :named("!BLOCK")
    .param int has_param_1011 :opt_flag
.annotate 'file', "micro03.rb"
.annotate 'line', 8
    if has_param_1011, optparam_27
    new $P115, "Undef"
    set param_1011, $P115
  optparam_27:
    .lex "!BLOCK", param_1011
    get_hll_global $P116, "puts"
    unless_null $P116, vivify_28
    new $P116, "Undef"
  vivify_28:
    new $P117, "CardinalString"
    assign $P117, "O numero esta no intervalo entre 100 e 200"
    $P118 = $P116($P117)
    .return ($P118)
.end

