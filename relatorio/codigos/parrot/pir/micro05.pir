
.HLL "cardinal"

.namespace []
.include "except_types.pasm"
.sub "_block1000" :load :main :anon :subid("10_1471303721.47548")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "micro05.rb"
.annotate 'line', 0
    .const 'Sub' $P1030 = "17_1471303721.47548" 
    capture_lex $P1030
    .const 'Sub' $P1027 = "16_1471303721.47548" 
    capture_lex $P1027
    .const 'Sub' $P1024 = "15_1471303721.47548" 
    capture_lex $P1024
    .const 'Sub' $P1006 = "11_1471303721.47548" 
    capture_lex $P1006
.annotate 'line', 1
    if has_param_1002, optparam_19
    new $P100, "Undef"
    set param_1002, $P100
  optparam_19:
    .lex "!BLOCK", param_1002
.annotate 'line', 3
    new $P101, "CardinalInteger"
    assign $P101, 0
    set $P1003, $P101
    .lex "h", $P1003
.annotate 'line', 4
    new $P102, "CardinalInteger"
    assign $P102, 0
    set $P1004, $P102
    .lex "m", $P1004
.annotate 'line', 6
    new $P104, "CardinalInteger"
    assign $P104, 1
    new $P105, "CardinalInteger"
    assign $P105, 5
    $P106 = "infix:.."($P104, $P105)
    defined $I100, $P106
    unless $I100, for_undef_20
    iter $P103, $P106
    new $P143, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P143, loop1022_handler
    push_eh $P143
  loop1022_test:
    unless $P103, loop1022_done
    shift $P107, $P103
  loop1022_redo:
.annotate 'line', 7
    .const 'Sub' $P1006 = "11_1471303721.47548" 
    capture_lex $P1006
    $P1006($P107)
  loop1022_next:
    goto loop1022_test
  loop1022_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P144, exception, 'type'
    eq $P144, .CONTROL_LOOP_NEXT, loop1022_next
    eq $P144, .CONTROL_LOOP_REDO, loop1022_redo
  loop1022_done:
    pop_eh 
  for_undef_20:
.annotate 'line', 21
    get_hll_global $P145, "puts"
    unless_null $P145, vivify_35
    new $P145, "Undef"
  vivify_35:
    new $P146, "CardinalString"
    assign $P146, "Foram inseridos "
    .const 'Sub' $P1024 = "15_1471303721.47548" 
    capture_lex $P1024
    $S100 = $P1024()
    concat $P149, $P146, $S100
    new $P150, "CardinalString"
    assign $P150, "homens."
    concat $P151, $P149, $P150
    $P145($P151)
.annotate 'line', 22
    get_hll_global $P152, "puts"
    unless_null $P152, vivify_38
    new $P152, "Undef"
  vivify_38:
    new $P153, "CardinalString"
    assign $P153, "Foram inseridas "
    .const 'Sub' $P1027 = "16_1471303721.47548" 
    capture_lex $P1027
    $S101 = $P1027()
    concat $P156, $P153, $S101
    new $P157, "CardinalString"
    assign $P157, "mulheres."
    concat $P158, $P156, $P157
    $P159 = $P152($P158)
.annotate 'line', 1
    .return ($P159)
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post18") :outer("10_1471303721.47548")
.annotate 'file', "micro05.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471303721.47548" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1029" :init :load :anon :subid("17_1471303721.47548") :outer("10_1471303721.47548")
.annotate 'file', "micro05.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "_block1005"  :anon :subid("11_1471303721.47548") :outer("10_1471303721.47548")
    .param pmc param_1008 :optional
    .param int has_param_1008 :opt_flag
    .param pmc param_1007 :optional :named("!BLOCK")
    .param int has_param_1007 :opt_flag
.annotate 'file', "micro05.rb"
.annotate 'line', 7
    .const 'Sub' $P1020 = "14_1471303721.47548" 
    capture_lex $P1020
    .const 'Sub' $P1017 = "13_1471303721.47548" 
    capture_lex $P1017
    .const 'Sub' $P1013 = "12_1471303721.47548" 
    capture_lex $P1013
    if has_param_1007, optparam_21
    new $P108, "Undef"
    set param_1007, $P108
  optparam_21:
    .lex "!BLOCK", param_1007
.annotate 'line', 6
    if has_param_1008, optparam_22
    new $P109, "Undef"
    set param_1008, $P109
  optparam_22:
    .lex "i", param_1008
.annotate 'line', 7
    get_hll_global $P110, "puts"
    unless_null $P110, vivify_23
    new $P110, "Undef"
  vivify_23:
    new $P111, "CardinalString"
    assign $P111, "Digite o nome:"
    $P110($P111)
.annotate 'line', 8
    get_hll_global $P112, "gets"
    unless_null $P112, vivify_24
    new $P112, "Undef"
  vivify_24:
    $P113 = $P112."chomp"()
    set $P1009, $P113
    .lex "nome", $P1009
.annotate 'line', 9
    get_hll_global $P114, "puts"
    unless_null $P114, vivify_25
    new $P114, "Undef"
  vivify_25:
    new $P115, "CardinalString"
    assign $P115, "H - homem ou M - mulher"
    $P114($P115)
.annotate 'line', 10
    get_hll_global $P116, "gets"
    unless_null $P116, vivify_26
    new $P116, "Undef"
  vivify_26:
    $P117 = $P116."chomp"()
    set $P1010, $P117
    .lex "sexo", $P1010
.annotate 'line', 12
    find_lex $P119, "sexo"
    unless_null $P119, vivify_27
    new $P119, "Undef"
  vivify_27:
    new $P120, "CardinalString"
    assign $P120, "H"
    $P121 = "infix:=="($P119, $P120)
    $P122 = "circumfix:( )"($P121)
    if $P122, if_1011
.annotate 'line', 14
    find_lex $P129, "sexo"
    unless_null $P129, vivify_28
    new $P129, "Undef"
  vivify_28:
    new $P130, "CardinalString"
    assign $P130, "M"
    $P131 = "infix:=="($P129, $P130)
    $P132 = "circumfix:( )"($P131)
    if $P132, if_1015
.annotate 'line', 16
    .const 'Sub' $P1020 = "14_1471303721.47548" 
    capture_lex $P1020
    $P142 = $P1020()
    set $P128, $P142
.annotate 'line', 14
    goto if_1015_end
  if_1015:
.annotate 'line', 15
    .const 'Sub' $P1017 = "13_1471303721.47548" 
    capture_lex $P1017
    $P137 = $P1017()
    set $P128, $P137
  if_1015_end:
.annotate 'line', 12
    set $P118, $P128
    goto if_1011_end
  if_1011:
.annotate 'line', 13
    .const 'Sub' $P1013 = "12_1471303721.47548" 
    capture_lex $P1013
    $P127 = $P1013()
    set $P118, $P127
  if_1011_end:
.annotate 'line', 7
    .return ($P118)
.end


.HLL "cardinal"

.namespace []
.sub "_block1019"  :anon :subid("14_1471303721.47548") :outer("11_1471303721.47548")
    .param pmc param_1021 :optional :named("!BLOCK")
    .param int has_param_1021 :opt_flag
.annotate 'file', "micro05.rb"
.annotate 'line', 16
    if has_param_1021, optparam_29
    new $P138, "Undef"
    set param_1021, $P138
  optparam_29:
    .lex "!BLOCK", param_1021
.annotate 'line', 17
    get_hll_global $P139, "puts"
    unless_null $P139, vivify_30
    new $P139, "Undef"
  vivify_30:
    new $P140, "CardinalString"
    assign $P140, "Sexo so pode ser H ou M!"
    $P141 = $P139($P140)
.annotate 'line', 16
    .return ($P141)
.end


.HLL "cardinal"

.namespace []
.sub "_block1016"  :anon :subid("13_1471303721.47548") :outer("11_1471303721.47548")
    .param pmc param_1018 :optional :named("!BLOCK")
    .param int has_param_1018 :opt_flag
.annotate 'file', "micro05.rb"
.annotate 'line', 15
    if has_param_1018, optparam_31
    new $P133, "Undef"
    set param_1018, $P133
  optparam_31:
    .lex "!BLOCK", param_1018
    find_lex $P134, "m"
    unless_null $P134, vivify_32
    new $P134, "Undef"
  vivify_32:
    new $P135, "CardinalInteger"
    assign $P135, 1
    $P136 = "infix:+"($P134, $P135)
    store_lex "m", $P136
    .return ($P136)
.end


.HLL "cardinal"

.namespace []
.sub "_block1012"  :anon :subid("12_1471303721.47548") :outer("11_1471303721.47548")
    .param pmc param_1014 :optional :named("!BLOCK")
    .param int has_param_1014 :opt_flag
.annotate 'file', "micro05.rb"
.annotate 'line', 13
    if has_param_1014, optparam_33
    new $P123, "Undef"
    set param_1014, $P123
  optparam_33:
    .lex "!BLOCK", param_1014
    find_lex $P124, "h"
    unless_null $P124, vivify_34
    new $P124, "Undef"
  vivify_34:
    new $P125, "CardinalInteger"
    assign $P125, 1
    $P126 = "infix:+"($P124, $P125)
    store_lex "h", $P126
    .return ($P126)
.end


.HLL "cardinal"

.namespace []
.sub "_block1023"  :anon :subid("15_1471303721.47548") :outer("10_1471303721.47548")
    .param pmc param_1025 :optional :named("!BLOCK")
    .param int has_param_1025 :opt_flag
.annotate 'file', "micro05.rb"
.annotate 'line', 21
    if has_param_1025, optparam_36
    new $P147, "Undef"
    set param_1025, $P147
  optparam_36:
    .lex "!BLOCK", param_1025
    find_lex $P148, "h"
    unless_null $P148, vivify_37
    new $P148, "Undef"
  vivify_37:
    .return ($P148)
.end


.HLL "cardinal"

.namespace []
.sub "_block1026"  :anon :subid("16_1471303721.47548") :outer("10_1471303721.47548")
    .param pmc param_1028 :optional :named("!BLOCK")
    .param int has_param_1028 :opt_flag
.annotate 'file', "micro05.rb"
.annotate 'line', 22
    if has_param_1028, optparam_39
    new $P154, "Undef"
    set param_1028, $P154
  optparam_39:
    .lex "!BLOCK", param_1028
    find_lex $P155, "m"
    unless_null $P155, vivify_40
    new $P155, "Undef"
  vivify_40:
    .return ($P155)
.end

