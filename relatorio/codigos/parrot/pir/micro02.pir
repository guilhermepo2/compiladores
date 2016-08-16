
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471303693.22907")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro02.rb"
.annotate 'line', 0
    .const 'Sub' $P1025 = "17_1471303693.22907" 
    capture_lex $P1025
    .const 'Sub' $P1016 = "14_1471303693.22907" 
    capture_lex $P1016
    .const 'Sub' $P1007 = "11_1471303693.22907" 
    capture_lex $P1007
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
    assign $P102, "Escreva o primeiro numero:"
    $P101($P102)
.annotate 'line', 4
    get_hll_global $P103, "gets"
    unless_null $P103, vivify_21
    new $P103, "Undef"
  vivify_21:
    $P104 = $P103."chomp"()
    $P105 = $P104."to_i"()
    set $P1003, $P105
    .lex "num1", $P1003
.annotate 'line', 5
    get_hll_global $P106, "puts"
    unless_null $P106, vivify_22
    new $P106, "Undef"
  vivify_22:
    new $P107, "CardinalString"
    assign $P107, "Escreva o segundo numero:"
    $P106($P107)
.annotate 'line', 6
    get_hll_global $P108, "gets"
    unless_null $P108, vivify_23
    new $P108, "Undef"
  vivify_23:
    $P109 = $P108."chomp"()
    $P110 = $P109."to_i"()
    set $P1004, $P110
    .lex "num2", $P1004
.annotate 'line', 9
    find_lex $P112, "num1"
    unless_null $P112, vivify_24
    new $P112, "Undef"
  vivify_24:
    find_lex $P113, "num2"
    unless_null $P113, vivify_25
    new $P113, "Undef"
  vivify_25:
    $P114 = "infix:>"($P112, $P113)
    if $P114, if_1005
.annotate 'line', 11
    .const 'Sub' $P1016 = "14_1471303693.22907" 
    capture_lex $P1016
    $P140 = $P1016()
    set $P111, $P140
.annotate 'line', 9
    goto if_1005_end
  if_1005:
.annotate 'line', 10
    .const 'Sub' $P1007 = "11_1471303693.22907" 
    capture_lex $P1007
    $P127 = $P1007()
    set $P111, $P127
  if_1005_end:
.annotate 'line', 1
    .return ($P111)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post18") :outer("10_1471303693.22907")
.annotate 'file', "micro02.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303693.22907" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1024" :init :load :anon :subid("17_1471303693.22907") :outer("10_1471303693.22907")
.annotate 'file', "micro02.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1015"  :anon :subid("14_1471303693.22907") :outer("10_1471303693.22907")
    .param pmc param_1017 :optional :named("!BLOCK")
    .param int has_param_1017 :opt_flag
.annotate 'file', "micro02.rb"
.annotate 'line', 11
    .const 'Sub' $P1022 = "16_1471303693.22907" 
    capture_lex $P1022
    .const 'Sub' $P1019 = "15_1471303693.22907" 
    capture_lex $P1019
    if has_param_1017, optparam_26
    new $P128, "Undef"
    set param_1017, $P128
  optparam_26:
    .lex "!BLOCK", param_1017
.annotate 'line', 12
    get_hll_global $P129, "puts"
    unless_null $P129, vivify_27
    new $P129, "Undef"
  vivify_27:
    new $P130, "CardinalString"
    assign $P130, "O segundo numero, "
    .const 'Sub' $P1019 = "15_1471303693.22907" 
    capture_lex $P1019
    $S102 = $P1019()
    concat $P133, $P130, $S102
    new $P134, "CardinalString"
    assign $P134, ", e maior que o primeiro, "
    concat $P135, $P133, $P134
    .const 'Sub' $P1022 = "16_1471303693.22907" 
    capture_lex $P1022
    $S103 = $P1022()
    concat $P138, $P135, $S103
    $P139 = $P129($P138)
.annotate 'line', 11
    .return ($P139)
.end


.HLL "cardinal"

.namespace []
.sub "_block1018"  :anon :subid("15_1471303693.22907") :outer("14_1471303693.22907")
    .param pmc param_1020 :optional :named("!BLOCK")
    .param int has_param_1020 :opt_flag
.annotate 'file', "micro02.rb"
.annotate 'line', 12
    if has_param_1020, optparam_28
    new $P131, "Undef"
    set param_1020, $P131
  optparam_28:
    .lex "!BLOCK", param_1020
    find_lex $P132, "num2"
    unless_null $P132, vivify_29
    new $P132, "Undef"
  vivify_29:
    .return ($P132)
.end


.HLL "cardinal"

.namespace []
.sub "_block1021"  :anon :subid("16_1471303693.22907") :outer("14_1471303693.22907")
    .param pmc param_1023 :optional :named("!BLOCK")
    .param int has_param_1023 :opt_flag
.annotate 'file', "micro02.rb"
.annotate 'line', 12
    if has_param_1023, optparam_30
    new $P136, "Undef"
    set param_1023, $P136
  optparam_30:
    .lex "!BLOCK", param_1023
    find_lex $P137, "num1"
    unless_null $P137, vivify_31
    new $P137, "Undef"
  vivify_31:
    .return ($P137)
.end


.HLL "cardinal"

.namespace []
.sub "_block1006"  :anon :subid("11_1471303693.22907") :outer("10_1471303693.22907")
    .param pmc param_1008 :optional :named("!BLOCK")
    .param int has_param_1008 :opt_flag
.annotate 'file', "micro02.rb"
.annotate 'line', 10
    .const 'Sub' $P1013 = "13_1471303693.22907" 
    capture_lex $P1013
    .const 'Sub' $P1010 = "12_1471303693.22907" 
    capture_lex $P1010
    if has_param_1008, optparam_32
    new $P115, "Undef"
    set param_1008, $P115
  optparam_32:
    .lex "!BLOCK", param_1008
    get_hll_global $P116, "puts"
    unless_null $P116, vivify_33
    new $P116, "Undef"
  vivify_33:
    new $P117, "CardinalString"
    assign $P117, "O primeiro numero, "
    .const 'Sub' $P1010 = "12_1471303693.22907" 
    capture_lex $P1010
    $S100 = $P1010()
    concat $P120, $P117, $S100
    new $P121, "CardinalString"
    assign $P121, ", e maior que o segundo, "
    concat $P122, $P120, $P121
    .const 'Sub' $P1013 = "13_1471303693.22907" 
    capture_lex $P1013
    $S101 = $P1013()
    concat $P125, $P122, $S101
    $P126 = $P116($P125)
    .return ($P126)
.end


.HLL "cardinal"

.namespace []
.sub "_block1009"  :anon :subid("12_1471303693.22907") :outer("11_1471303693.22907")
    .param pmc param_1011 :optional :named("!BLOCK")
    .param int has_param_1011 :opt_flag
.annotate 'file', "micro02.rb"
.annotate 'line', 10
    if has_param_1011, optparam_34
    new $P118, "Undef"
    set param_1011, $P118
  optparam_34:
    .lex "!BLOCK", param_1011
    find_lex $P119, "num1"
    unless_null $P119, vivify_35
    new $P119, "Undef"
  vivify_35:
    .return ($P119)
.end


.HLL "cardinal"

.namespace []
.sub "_block1012"  :anon :subid("13_1471303693.22907") :outer("11_1471303693.22907")
    .param pmc param_1014 :optional :named("!BLOCK")
    .param int has_param_1014 :opt_flag
.annotate 'file', "micro02.rb"
.annotate 'line', 10
    if has_param_1014, optparam_36
    new $P123, "Undef"
    set param_1014, $P123
  optparam_36:
    .lex "!BLOCK", param_1014
    find_lex $P124, "num2"
    unless_null $P124, vivify_37
    new $P124, "Undef"
  vivify_37:
    .return ($P124)
.end

