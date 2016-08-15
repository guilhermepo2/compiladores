
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471303809.1351")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro10.rb"
.annotate 'line', 0
    .const 'Sub' $P1022 = "16_1471303809.1351" 
    capture_lex $P1022
    .const 'Sub' $P1019 = "15_1471303809.1351" 
    capture_lex $P1019
    .const 'Sub' $P1016 = "14_1471303809.1351" 
    capture_lex $P1016
    .const 'Sub' $P1003 = "11_1471303809.1351" 
    capture_lex $P1003
.annotate 'line', 1
    if has_param_1002, optparam_18
    new $P100, "Undef"
    set param_1002, $P100
  optparam_18:
    .lex "!BLOCK", param_1002
.annotate 'line', 11
    get_hll_global $P119, "puts"
    unless_null $P119, vivify_26
    new $P119, "Undef"
  vivify_26:
    new $P120, "CardinalString"
    assign $P120, "Digite um numero:"
    $P119($P120)
.annotate 'line', 12
    get_hll_global $P121, "gets"
    unless_null $P121, vivify_27
    new $P121, "Undef"
  vivify_27:
    $P122 = $P121."chomp"()
    $P123 = $P122."to_i"()
    set $P1013, $P123
    .lex "numero", $P1013
.annotate 'line', 13
    get_global $P124, "fatorial"
    unless_null $P124, vivify_28
    new $P124, "Undef"
  vivify_28:
    find_lex $P125, "numero"
    unless_null $P125, vivify_29
    new $P125, "Undef"
  vivify_29:
    $P126 = $P124($P125)
    set $P1014, $P126
    .lex "fat", $P1014
.annotate 'line', 15
    get_hll_global $P127, "puts"
    unless_null $P127, vivify_30
    new $P127, "Undef"
  vivify_30:
    new $P128, "CardinalString"
    assign $P128, "O fatorial de "
    .const 'Sub' $P1016 = "14_1471303809.1351" 
    capture_lex $P1016
    $S100 = $P1016()
    concat $P131, $P128, $S100
    new $P132, "CardinalString"
    assign $P132, "e: "
    concat $P133, $P131, $P132
    .const 'Sub' $P1019 = "15_1471303809.1351" 
    capture_lex $P1019
    $S101 = $P1019()
    concat $P136, $P133, $S101
    $P137 = $P127($P136)
.annotate 'line', 1
    .return ($P137)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post17") :outer("10_1471303809.1351")
.annotate 'file', "micro10.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303809.1351" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1021" :init :load :anon :subid("16_1471303809.1351") :outer("10_1471303809.1351")
.annotate 'file', "micro10.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "fatorial"  :subid("11_1471303809.1351") :outer("10_1471303809.1351")
    .param pmc param_1004
    .param pmc param_1005 :optional :named("!BLOCK")
    .param int has_param_1005 :opt_flag
.annotate 'file', "micro10.rb"
.annotate 'line', 1
    .const 'Sub' $P1011 = "13_1471303809.1351" 
    capture_lex $P1011
    .const 'Sub' $P1008 = "12_1471303809.1351" 
    capture_lex $P1008
.annotate 'line', 3
    .lex "n", param_1004
    if has_param_1005, optparam_19
    new $P101, "Undef"
    set param_1005, $P101
  optparam_19:
    .lex "!BLOCK", param_1005
.annotate 'line', 4
    find_lex $P103, "n"
    unless_null $P103, vivify_20
    new $P103, "Undef"
  vivify_20:
    new $P104, "CardinalInteger"
    assign $P104, 0
    $P105 = "infix:<="($P103, $P104)
    if $P105, if_1006
.annotate 'line', 6
    .const 'Sub' $P1011 = "13_1471303809.1351" 
    capture_lex $P1011
    $P118 = $P1011()
    set $P102, $P118
.annotate 'line', 4
    goto if_1006_end
  if_1006:
.annotate 'line', 5
    .const 'Sub' $P1008 = "12_1471303809.1351" 
    capture_lex $P1008
    $P108 = $P1008()
    set $P102, $P108
  if_1006_end:
.annotate 'line', 1
    .return ($P102)
.end


.HLL "cardinal"

.namespace []
.sub "_block1010"  :anon :subid("13_1471303809.1351") :outer("11_1471303809.1351")
    .param pmc param_1012 :optional :named("!BLOCK")
    .param int has_param_1012 :opt_flag
.annotate 'file', "micro10.rb"
.annotate 'line', 6
    if has_param_1012, optparam_21
    new $P109, "Undef"
    set param_1012, $P109
  optparam_21:
    .lex "!BLOCK", param_1012
.annotate 'line', 7
    find_lex $P110, "n"
    unless_null $P110, vivify_22
    new $P110, "Undef"
  vivify_22:
    get_hll_global $P111, "fatorial"
    unless_null $P111, vivify_23
    new $P111, "Undef"
  vivify_23:
    find_lex $P112, "n"
    unless_null $P112, vivify_24
    new $P112, "Undef"
  vivify_24:
    new $P113, "CardinalInteger"
    assign $P113, 1
    $P114 = "infix:-"($P112, $P113)
    $P115 = $P111($P114)
    $P116 = "infix:*"($P110, $P115)
    $P117 = "circumfix:( )"($P116)
    .return($P117)
.annotate 'line', 6
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1007"  :anon :subid("12_1471303809.1351") :outer("11_1471303809.1351")
    .param pmc param_1009 :optional :named("!BLOCK")
    .param int has_param_1009 :opt_flag
.annotate 'file', "micro10.rb"
.annotate 'line', 5
    if has_param_1009, optparam_25
    new $P106, "Undef"
    set param_1009, $P106
  optparam_25:
    .lex "!BLOCK", param_1009
    new $P107, "CardinalInteger"
    assign $P107, 1
    .return($P107)
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1015"  :anon :subid("14_1471303809.1351") :outer("10_1471303809.1351")
    .param pmc param_1017 :optional :named("!BLOCK")
    .param int has_param_1017 :opt_flag
.annotate 'file', "micro10.rb"
.annotate 'line', 15
    if has_param_1017, optparam_31
    new $P129, "Undef"
    set param_1017, $P129
  optparam_31:
    .lex "!BLOCK", param_1017
    find_lex $P130, "numero"
    unless_null $P130, vivify_32
    new $P130, "Undef"
  vivify_32:
    .return ($P130)
.end


.HLL "cardinal"

.namespace []
.sub "_block1018"  :anon :subid("15_1471303809.1351") :outer("10_1471303809.1351")
    .param pmc param_1020 :optional :named("!BLOCK")
    .param int has_param_1020 :opt_flag
.annotate 'file', "micro10.rb"
.annotate 'line', 15
    if has_param_1020, optparam_33
    new $P134, "Undef"
    set param_1020, $P134
  optparam_33:
    .lex "!BLOCK", param_1020
    find_lex $P135, "fat"
    unless_null $P135, vivify_34
    new $P135, "Undef"
  vivify_34:
    .return ($P135)
.end

