
.HLL "cardinal"

.namespace []
.include "except_types.pasm"
.sub "_block1000" :load :main :anon :subid("10_1471303775.64184")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro07.rb"
.annotate 'line', 0
    .const 'Sub' $P1027 = "16_1471303775.64184" 
    capture_lex $P1027
    .const 'Sub' $P1005 = "11_1471303775.64184" 
    capture_lex $P1005
.annotate 'line', 1
    if has_param_1002, optparam_18
    new $P100, "Undef"
    set param_1002, $P100
  optparam_18:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    new $P101, "CardinalInteger"
    assign $P101, 1
    set $P1003, $P101
    .lex "programa", $P1003
.annotate 'line', 4
    new $P143, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P143, loop1025_handler
    push_eh $P143
  loop1025_test:
    find_lex $P102, "programa"
    unless_null $P102, vivify_19
    new $P102, "Undef"
  vivify_19:
    new $P103, "CardinalInteger"
    assign $P103, 1
    $P104 = "infix:=="($P102, $P103)
    unless $P104, loop1025_done
  loop1025_redo:
.annotate 'line', 5
    .const 'Sub' $P1005 = "11_1471303775.64184" 
    capture_lex $P1005
    $P1005()
  loop1025_next:
    goto loop1025_test
  loop1025_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P144, exception, 'type'
    eq $P144, .CONTROL_LOOP_NEXT, loop1025_next
    eq $P144, .CONTROL_LOOP_REDO, loop1025_redo
  loop1025_done:
    pop_eh 
.annotate 'line', 1
    .return ($P104)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post17") :outer("10_1471303775.64184")
.annotate 'file', "micro07.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303775.64184" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1026" :init :load :anon :subid("16_1471303775.64184") :outer("10_1471303775.64184")
.annotate 'file', "micro07.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1004"  :anon :subid("11_1471303775.64184") :outer("10_1471303775.64184")
    .param pmc param_1006 :optional :named("!BLOCK")
    .param int has_param_1006 :opt_flag
.annotate 'file', "micro07.rb"
.annotate 'line', 5
    .const 'Sub' $P1023 = "15_1471303775.64184" 
    capture_lex $P1023
    .const 'Sub' $P1018 = "14_1471303775.64184" 
    capture_lex $P1018
    .const 'Sub' $P1014 = "13_1471303775.64184" 
    capture_lex $P1014
    .const 'Sub' $P1010 = "12_1471303775.64184" 
    capture_lex $P1010
    if has_param_1006, optparam_20
    new $P105, "Undef"
    set param_1006, $P105
  optparam_20:
    .lex "!BLOCK", param_1006
    get_hll_global $P106, "puts"
    unless_null $P106, vivify_21
    new $P106, "Undef"
  vivify_21:
    new $P107, "CardinalString"
    assign $P107, "Digite um numero: "
    $P106($P107)
.annotate 'line', 6
    get_hll_global $P108, "gets"
    unless_null $P108, vivify_22
    new $P108, "Undef"
  vivify_22:
    $P109 = $P108."chomp"()
    $P110 = $P109."to_i"()
    set $P1007, $P110
    .lex "numero", $P1007
.annotate 'line', 8
    find_lex $P111, "numero"
    unless_null $P111, vivify_23
    new $P111, "Undef"
  vivify_23:
    new $P112, "CardinalInteger"
    assign $P112, 0
    $P113 = "infix:>"($P111, $P112)
    if $P113, if_1008
.annotate 'line', 10
    find_lex $P118, "numero"
    unless_null $P118, vivify_24
    new $P118, "Undef"
  vivify_24:
    new $P119, "CardinalInteger"
    assign $P119, 0
    $P120 = "infix:=="($P118, $P119)
    if $P120, if_1012
.annotate 'line', 12
    find_lex $P125, "numero"
    unless_null $P125, vivify_25
    new $P125, "Undef"
  vivify_25:
    new $P126, "CardinalInteger"
    assign $P126, 0
    $P127 = "infix:<"($P125, $P126)
    unless $P127, if_1016_end
.annotate 'line', 13
    .const 'Sub' $P1018 = "14_1471303775.64184" 
    capture_lex $P1018
    $P1018()
  if_1016_end:
.annotate 'line', 8
    goto if_1012_end
  if_1012:
.annotate 'line', 11
    .const 'Sub' $P1014 = "13_1471303775.64184" 
    capture_lex $P1014
    $P1014()
  if_1012_end:
.annotate 'line', 8
    goto if_1008_end
  if_1008:
.annotate 'line', 9
    .const 'Sub' $P1010 = "12_1471303775.64184" 
    capture_lex $P1010
    $P1010()
  if_1008_end:
.annotate 'line', 16
    get_hll_global $P132, "puts"
    unless_null $P132, vivify_32
    new $P132, "Undef"
  vivify_32:
    new $P133, "CardinalString"
    assign $P133, "Deseja finalizar? (S/N)"
    $P132($P133)
.annotate 'line', 17
    get_hll_global $P134, "gets"
    unless_null $P134, vivify_33
    new $P134, "Undef"
  vivify_33:
    $P135 = $P134."chomp"()
    set $P1020, $P135
    .lex "opc", $P1020
.annotate 'line', 19
    find_lex $P137, "opc"
    unless_null $P137, vivify_34
    new $P137, "Undef"
  vivify_34:
    new $P138, "CardinalString"
    assign $P138, "S"
    $P139 = "infix:=="($P137, $P138)
    if $P139, if_1021
    set $P136, $P139
    goto if_1021_end
  if_1021:
.annotate 'line', 20
    .const 'Sub' $P1023 = "15_1471303775.64184" 
    capture_lex $P1023
    $P142 = $P1023()
    set $P136, $P142
  if_1021_end:
.annotate 'line', 5
    .return ($P136)
.end


.HLL "cardinal"

.namespace []
.sub "_block1017"  :anon :subid("14_1471303775.64184") :outer("11_1471303775.64184")
    .param pmc param_1019 :optional :named("!BLOCK")
    .param int has_param_1019 :opt_flag
.annotate 'file', "micro07.rb"
.annotate 'line', 13
    if has_param_1019, optparam_26
    new $P128, "Undef"
    set param_1019, $P128
  optparam_26:
    .lex "!BLOCK", param_1019
    get_hll_global $P129, "puts"
    unless_null $P129, vivify_27
    new $P129, "Undef"
  vivify_27:
    new $P130, "CardinalString"
    assign $P130, "Negativo"
    $P131 = $P129($P130)
    .return ($P131)
.end


.HLL "cardinal"

.namespace []
.sub "_block1013"  :anon :subid("13_1471303775.64184") :outer("11_1471303775.64184")
    .param pmc param_1015 :optional :named("!BLOCK")
    .param int has_param_1015 :opt_flag
.annotate 'file', "micro07.rb"
.annotate 'line', 11
    if has_param_1015, optparam_28
    new $P121, "Undef"
    set param_1015, $P121
  optparam_28:
    .lex "!BLOCK", param_1015
    get_hll_global $P122, "puts"
    unless_null $P122, vivify_29
    new $P122, "Undef"
  vivify_29:
    new $P123, "CardinalString"
    assign $P123, "O numero e igual a 0"
    $P124 = $P122($P123)
    .return ($P124)
.end


.HLL "cardinal"

.namespace []
.sub "_block1009"  :anon :subid("12_1471303775.64184") :outer("11_1471303775.64184")
    .param pmc param_1011 :optional :named("!BLOCK")
    .param int has_param_1011 :opt_flag
.annotate 'file', "micro07.rb"
.annotate 'line', 9
    if has_param_1011, optparam_30
    new $P114, "Undef"
    set param_1011, $P114
  optparam_30:
    .lex "!BLOCK", param_1011
    get_hll_global $P115, "puts"
    unless_null $P115, vivify_31
    new $P115, "Undef"
  vivify_31:
    new $P116, "CardinalString"
    assign $P116, "Positivo"
    $P117 = $P115($P116)
    .return ($P117)
.end


.HLL "cardinal"

.namespace []
.sub "_block1022"  :anon :subid("15_1471303775.64184") :outer("11_1471303775.64184")
    .param pmc param_1024 :optional :named("!BLOCK")
    .param int has_param_1024 :opt_flag
.annotate 'file', "micro07.rb"
.annotate 'line', 20
    if has_param_1024, optparam_35
    new $P140, "Undef"
    set param_1024, $P140
  optparam_35:
    .lex "!BLOCK", param_1024
    new $P141, "CardinalInteger"
    assign $P141, 0
    store_lex "programa", $P141
    .return ($P141)
.end

