
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471303817.60888")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro11.rb"
.annotate 'line', 0
    .const 'Sub' $P1034 = "18_1471303817.60888" 
    capture_lex $P1034
    .const 'Sub' $P1031 = "17_1471303817.60888" 
    capture_lex $P1031
    .const 'Sub' $P1028 = "16_1471303817.60888" 
    capture_lex $P1028
    .const 'Sub' $P1024 = "15_1471303817.60888" 
    capture_lex $P1024
    .const 'Sub' $P1003 = "11_1471303817.60888" 
    capture_lex $P1003
.annotate 'line', 1
    if has_param_1002, optparam_20
    new $P100, "Undef"
    set param_1002, $P100
  optparam_20:
    .lex "!BLOCK", param_1002
.annotate 'line', 15
    get_hll_global $P115, "puts"
    unless_null $P115, vivify_28
    new $P115, "Undef"
  vivify_28:
    new $P116, "CardinalString"
    assign $P116, "Escreva um numero:"
    $P115($P116)
.annotate 'line', 16
    get_hll_global $P117, "gets"
    unless_null $P117, vivify_29
    new $P117, "Undef"
  vivify_29:
    $P118 = $P117."chomp"()
    $P119 = $P118."to_i"()
    set $P1020, $P119
    .lex "numero", $P1020
.annotate 'line', 18
    get_global $P120, "verifica"
    unless_null $P120, vivify_30
    new $P120, "Undef"
  vivify_30:
    find_lex $P121, "numero"
    unless_null $P121, vivify_31
    new $P121, "Undef"
  vivify_31:
    $P122 = $P120($P121)
    set $P1021, $P122
    .lex "x", $P1021
.annotate 'line', 20
    find_lex $P124, "x"
    unless_null $P124, vivify_32
    new $P124, "Undef"
  vivify_32:
    new $P125, "CardinalInteger"
    assign $P125, 1
    $P126 = "infix:=="($P124, $P125)
    if $P126, if_1022
.annotate 'line', 22
    find_lex $P133, "x"
    unless_null $P133, vivify_33
    new $P133, "Undef"
  vivify_33:
    new $P134, "CardinalInteger"
    assign $P134, 0
    $P135 = "infix:=="($P133, $P134)
    if $P135, if_1026
.annotate 'line', 24
    .const 'Sub' $P1031 = "17_1471303817.60888" 
    capture_lex $P1031
    $P145 = $P1031()
    set $P132, $P145
.annotate 'line', 22
    goto if_1026_end
  if_1026:
.annotate 'line', 23
    .const 'Sub' $P1028 = "16_1471303817.60888" 
    capture_lex $P1028
    $P140 = $P1028()
    set $P132, $P140
  if_1026_end:
.annotate 'line', 20
    set $P123, $P132
    goto if_1022_end
  if_1022:
.annotate 'line', 21
    .const 'Sub' $P1024 = "15_1471303817.60888" 
    capture_lex $P1024
    $P131 = $P1024()
    set $P123, $P131
  if_1022_end:
.annotate 'line', 1
    .return ($P123)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post19") :outer("10_1471303817.60888")
.annotate 'file', "micro11.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303817.60888" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1033" :init :load :anon :subid("18_1471303817.60888") :outer("10_1471303817.60888")
.annotate 'file', "micro11.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "verifica"  :subid("11_1471303817.60888") :outer("10_1471303817.60888")
    .param pmc param_1004
    .param pmc param_1005 :optional :named("!BLOCK")
    .param int has_param_1005 :opt_flag
.annotate 'file', "micro11.rb"
.annotate 'line', 1
    .const 'Sub' $P1017 = "14_1471303817.60888" 
    capture_lex $P1017
    .const 'Sub' $P1013 = "13_1471303817.60888" 
    capture_lex $P1013
    .const 'Sub' $P1008 = "12_1471303817.60888" 
    capture_lex $P1008
.annotate 'line', 3
    .lex "n", param_1004
    if has_param_1005, optparam_21
    new $P101, "Undef"
    set param_1005, $P101
  optparam_21:
    .lex "!BLOCK", param_1005
.annotate 'line', 4
    find_lex $P102, "n"
    unless_null $P102, vivify_22
    new $P102, "Undef"
  vivify_22:
    new $P103, "CardinalInteger"
    assign $P103, 0
    $P104 = "infix:>"($P102, $P103)
    if $P104, if_1006
.annotate 'line', 6
    find_lex $P107, "n"
    unless_null $P107, vivify_23
    new $P107, "Undef"
  vivify_23:
    new $P108, "CardinalInteger"
    assign $P108, 0
    $P109 = "infix:<"($P107, $P108)
    if $P109, if_1011
.annotate 'line', 8
    .const 'Sub' $P1017 = "14_1471303817.60888" 
    capture_lex $P1017
    $P1017()
    goto if_1011_end
  if_1011:
.annotate 'line', 7
    .const 'Sub' $P1013 = "13_1471303817.60888" 
    capture_lex $P1013
    $P1013()
  if_1011_end:
.annotate 'line', 4
    goto if_1006_end
  if_1006:
.annotate 'line', 5
    .const 'Sub' $P1008 = "12_1471303817.60888" 
    capture_lex $P1008
    $P1008()
  if_1006_end:
.annotate 'line', 12
    get_hll_global $P114, "res"
    unless_null $P114, vivify_27
    new $P114, "Undef"
  vivify_27:
    .return($P114)
.annotate 'line', 1
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1016"  :anon :subid("14_1471303817.60888") :outer("11_1471303817.60888")
    .param pmc param_1018 :optional :named("!BLOCK")
    .param int has_param_1018 :opt_flag
.annotate 'file', "micro11.rb"
.annotate 'line', 8
    if has_param_1018, optparam_24
    new $P112, "Undef"
    set param_1018, $P112
  optparam_24:
    .lex "!BLOCK", param_1018
.annotate 'line', 9
    new $P113, "CardinalInteger"
    assign $P113, 0
    set $P1019, $P113
    .lex "res", $P1019
.annotate 'line', 8
    .return ($P1019)
.end


.HLL "cardinal"

.namespace []
.sub "_block1012"  :anon :subid("13_1471303817.60888") :outer("11_1471303817.60888")
    .param pmc param_1014 :optional :named("!BLOCK")
    .param int has_param_1014 :opt_flag
.annotate 'file', "micro11.rb"
.annotate 'line', 7
    if has_param_1014, optparam_25
    new $P110, "Undef"
    set param_1014, $P110
  optparam_25:
    .lex "!BLOCK", param_1014
    new $P111, "CardinalInteger"
    assign $P111, -1
    set $P1015, $P111
    .lex "res", $P1015
    .return ($P1015)
.end


.HLL "cardinal"

.namespace []
.sub "_block1007"  :anon :subid("12_1471303817.60888") :outer("11_1471303817.60888")
    .param pmc param_1009 :optional :named("!BLOCK")
    .param int has_param_1009 :opt_flag
.annotate 'file', "micro11.rb"
.annotate 'line', 5
    if has_param_1009, optparam_26
    new $P105, "Undef"
    set param_1009, $P105
  optparam_26:
    .lex "!BLOCK", param_1009
    new $P106, "CardinalInteger"
    assign $P106, 1
    set $P1010, $P106
    .lex "res", $P1010
    .return ($P1010)
.end


.HLL "cardinal"

.namespace []
.sub "_block1030"  :anon :subid("17_1471303817.60888") :outer("10_1471303817.60888")
    .param pmc param_1032 :optional :named("!BLOCK")
    .param int has_param_1032 :opt_flag
.annotate 'file', "micro11.rb"
.annotate 'line', 24
    if has_param_1032, optparam_34
    new $P141, "Undef"
    set param_1032, $P141
  optparam_34:
    .lex "!BLOCK", param_1032
.annotate 'line', 25
    get_hll_global $P142, "puts"
    unless_null $P142, vivify_35
    new $P142, "Undef"
  vivify_35:
    new $P143, "CardinalString"
    assign $P143, "Numero Negativo"
    $P144 = $P142($P143)
.annotate 'line', 24
    .return ($P144)
.end


.HLL "cardinal"

.namespace []
.sub "_block1027"  :anon :subid("16_1471303817.60888") :outer("10_1471303817.60888")
    .param pmc param_1029 :optional :named("!BLOCK")
    .param int has_param_1029 :opt_flag
.annotate 'file', "micro11.rb"
.annotate 'line', 23
    if has_param_1029, optparam_36
    new $P136, "Undef"
    set param_1029, $P136
  optparam_36:
    .lex "!BLOCK", param_1029
    get_hll_global $P137, "puts"
    unless_null $P137, vivify_37
    new $P137, "Undef"
  vivify_37:
    new $P138, "CardinalString"
    assign $P138, "Zero"
    $P139 = $P137($P138)
    .return ($P139)
.end


.HLL "cardinal"

.namespace []
.sub "_block1023"  :anon :subid("15_1471303817.60888") :outer("10_1471303817.60888")
    .param pmc param_1025 :optional :named("!BLOCK")
    .param int has_param_1025 :opt_flag
.annotate 'file', "micro11.rb"
.annotate 'line', 21
    if has_param_1025, optparam_38
    new $P127, "Undef"
    set param_1025, $P127
  optparam_38:
    .lex "!BLOCK", param_1025
    get_hll_global $P128, "puts"
    unless_null $P128, vivify_39
    new $P128, "Undef"
  vivify_39:
    new $P129, "CardinalString"
    assign $P129, "Numero positivo"
    $P130 = $P128($P129)
    .return ($P130)
.end

