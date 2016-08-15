
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471304120.2282")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro06.rb"
.annotate 'line', 0
    .const 'Sub' $P1028 = "17_1471304120.2282" 
    capture_lex $P1028
    .const 'Sub' $P1025 = "16_1471304120.2282" 
    capture_lex $P1025
    .const 'Sub' $P1022 = "15_1471304120.2282" 
    capture_lex $P1022
    .const 'Sub' $P1018 = "14_1471304120.2282" 
    capture_lex $P1018
    .const 'Sub' $P1014 = "13_1471304120.2282" 
    capture_lex $P1014
    .const 'Sub' $P1010 = "12_1471304120.2282" 
    capture_lex $P1010
    .const 'Sub' $P1006 = "11_1471304120.2282" 
    capture_lex $P1006
.annotate 'line', 1
    if has_param_1002, optparam_19
    new $P100, "Undef"
    set param_1002, $P100
  optparam_19:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    get_hll_global $P101, "puts"
    unless_null $P101, vivify_20
    new $P101, "Undef"
  vivify_20:
    new $P102, "CardinalString"
    assign $P102, "Digite um numero 1 a 5:"
    $P101($P102)
.annotate 'line', 4
    get_hll_global $P103, "gets"
    unless_null $P103, vivify_21
    new $P103, "Undef"
  vivify_21:
    $P104 = $P103."chomp"()
    $P105 = $P104."to_i"()
    set $P1003, $P105
    .lex "numero", $P1003
.annotate 'line', 6
    find_lex $P107, "numero"
    unless_null $P107, vivify_22
    new $P107, "Undef"
  vivify_22:
    new $P108, "CardinalInteger"
    assign $P108, 1
    $P109 = "infix:=="($P107, $P108)
    if $P109, if_1004
.annotate 'line', 8
    find_lex $P116, "numero"
    unless_null $P116, vivify_23
    new $P116, "Undef"
  vivify_23:
    new $P117, "CardinalInteger"
    assign $P117, 2
    $P118 = "infix:=="($P116, $P117)
    if $P118, if_1008
.annotate 'line', 10
    find_lex $P125, "numero"
    unless_null $P125, vivify_24
    new $P125, "Undef"
  vivify_24:
    new $P126, "CardinalInteger"
    assign $P126, 3
    $P127 = "infix:=="($P125, $P126)
    if $P127, if_1012
.annotate 'line', 12
    find_lex $P134, "numero"
    unless_null $P134, vivify_25
    new $P134, "Undef"
  vivify_25:
    new $P135, "CardinalInteger"
    assign $P135, 4
    $P136 = "infix:=="($P134, $P135)
    if $P136, if_1016
.annotate 'line', 14
    find_lex $P143, "numero"
    unless_null $P143, vivify_26
    new $P143, "Undef"
  vivify_26:
    new $P144, "CardinalInteger"
    assign $P144, 5
    $P145 = "infix:=="($P143, $P144)
    if $P145, if_1020
.annotate 'line', 16
    .const 'Sub' $P1025 = "16_1471304120.2282" 
    capture_lex $P1025
    $P155 = $P1025()
    set $P142, $P155
.annotate 'line', 14
    goto if_1020_end
  if_1020:
.annotate 'line', 15
    .const 'Sub' $P1022 = "15_1471304120.2282" 
    capture_lex $P1022
    $P150 = $P1022()
    set $P142, $P150
  if_1020_end:
.annotate 'line', 6
    set $P133, $P142
.annotate 'line', 12
    goto if_1016_end
  if_1016:
.annotate 'line', 13
    .const 'Sub' $P1018 = "14_1471304120.2282" 
    capture_lex $P1018
    $P141 = $P1018()
    set $P133, $P141
  if_1016_end:
.annotate 'line', 6
    set $P124, $P133
.annotate 'line', 10
    goto if_1012_end
  if_1012:
.annotate 'line', 11
    .const 'Sub' $P1014 = "13_1471304120.2282" 
    capture_lex $P1014
    $P132 = $P1014()
    set $P124, $P132
  if_1012_end:
.annotate 'line', 6
    set $P115, $P124
.annotate 'line', 8
    goto if_1008_end
  if_1008:
.annotate 'line', 9
    .const 'Sub' $P1010 = "12_1471304120.2282" 
    capture_lex $P1010
    $P123 = $P1010()
    set $P115, $P123
  if_1008_end:
.annotate 'line', 6
    set $P106, $P115
    goto if_1004_end
  if_1004:
.annotate 'line', 7
    .const 'Sub' $P1006 = "11_1471304120.2282" 
    capture_lex $P1006
    $P114 = $P1006()
    set $P106, $P114
  if_1004_end:
.annotate 'line', 1
    .return ($P106)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post18") :outer("10_1471304120.2282")
.annotate 'file', "micro06.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471304120.2282" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1027" :init :load :anon :subid("17_1471304120.2282") :outer("10_1471304120.2282")
.annotate 'file', "micro06.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1024"  :anon :subid("16_1471304120.2282") :outer("10_1471304120.2282")
    .param pmc param_1026 :optional :named("!BLOCK")
    .param int has_param_1026 :opt_flag
.annotate 'file', "micro06.rb"
.annotate 'line', 16
    if has_param_1026, optparam_27
    new $P151, "Undef"
    set param_1026, $P151
  optparam_27:
    .lex "!BLOCK", param_1026
.annotate 'line', 17
    get_hll_global $P152, "puts"
    unless_null $P152, vivify_28
    new $P152, "Undef"
  vivify_28:
    new $P153, "CardinalString"
    assign $P153, "Numero invalido!!!"
    $P154 = $P152($P153)
.annotate 'line', 16
    .return ($P154)
.end


.HLL "cardinal"

.namespace []
.sub "_block1021"  :anon :subid("15_1471304120.2282") :outer("10_1471304120.2282")
    .param pmc param_1023 :optional :named("!BLOCK")
    .param int has_param_1023 :opt_flag
.annotate 'file', "micro06.rb"
.annotate 'line', 15
    if has_param_1023, optparam_29
    new $P146, "Undef"
    set param_1023, $P146
  optparam_29:
    .lex "!BLOCK", param_1023
    get_hll_global $P147, "puts"
    unless_null $P147, vivify_30
    new $P147, "Undef"
  vivify_30:
    new $P148, "CardinalString"
    assign $P148, "Cinco"
    $P149 = $P147($P148)
    .return ($P149)
.end


.HLL "cardinal"

.namespace []
.sub "_block1017"  :anon :subid("14_1471304120.2282") :outer("10_1471304120.2282")
    .param pmc param_1019 :optional :named("!BLOCK")
    .param int has_param_1019 :opt_flag
.annotate 'file', "micro06.rb"
.annotate 'line', 13
    if has_param_1019, optparam_31
    new $P137, "Undef"
    set param_1019, $P137
  optparam_31:
    .lex "!BLOCK", param_1019
    get_hll_global $P138, "puts"
    unless_null $P138, vivify_32
    new $P138, "Undef"
  vivify_32:
    new $P139, "CardinalString"
    assign $P139, "Quatro"
    $P140 = $P138($P139)
    .return ($P140)
.end


.HLL "cardinal"

.namespace []
.sub "_block1013"  :anon :subid("13_1471304120.2282") :outer("10_1471304120.2282")
    .param pmc param_1015 :optional :named("!BLOCK")
    .param int has_param_1015 :opt_flag
.annotate 'file', "micro06.rb"
.annotate 'line', 11
    if has_param_1015, optparam_33
    new $P128, "Undef"
    set param_1015, $P128
  optparam_33:
    .lex "!BLOCK", param_1015
    get_hll_global $P129, "puts"
    unless_null $P129, vivify_34
    new $P129, "Undef"
  vivify_34:
    new $P130, "CardinalString"
    assign $P130, "Tres"
    $P131 = $P129($P130)
    .return ($P131)
.end


.HLL "cardinal"

.namespace []
.sub "_block1009"  :anon :subid("12_1471304120.2282") :outer("10_1471304120.2282")
    .param pmc param_1011 :optional :named("!BLOCK")
    .param int has_param_1011 :opt_flag
.annotate 'file', "micro06.rb"
.annotate 'line', 9
    if has_param_1011, optparam_35
    new $P119, "Undef"
    set param_1011, $P119
  optparam_35:
    .lex "!BLOCK", param_1011
    get_hll_global $P120, "puts"
    unless_null $P120, vivify_36
    new $P120, "Undef"
  vivify_36:
    new $P121, "CardinalString"
    assign $P121, "Dois"
    $P122 = $P120($P121)
    .return ($P122)
.end


.HLL "cardinal"

.namespace []
.sub "_block1005"  :anon :subid("11_1471304120.2282") :outer("10_1471304120.2282")
    .param pmc param_1007 :optional :named("!BLOCK")
    .param int has_param_1007 :opt_flag
.annotate 'file', "micro06.rb"
.annotate 'line', 7
    if has_param_1007, optparam_37
    new $P110, "Undef"
    set param_1007, $P110
  optparam_37:
    .lex "!BLOCK", param_1007
    get_hll_global $P111, "puts"
    unless_null $P111, vivify_38
    new $P111, "Undef"
  vivify_38:
    new $P112, "CardinalString"
    assign $P112, "Um"
    $P113 = $P111($P112)
    .return ($P113)
.end

