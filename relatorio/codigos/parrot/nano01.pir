
.HLL "cardinal"

.namespace []
.sub "_block1000" :load :main :anon :subid("10_1471301651.1019")
    .param pmc param_1002 :optional :named("!BLOCK")
    .param int has_param_1002 :opt_flag
.annotate 'file', "nano01.rb"
.annotate 'line', 0
    .const 'Sub' $P1004 = "11_1471301651.1019" 
    capture_lex $P1004
.annotate 'line', 1
    if has_param_1002, optparam_13
    new $P100, "Undef"
    set param_1002, $P100
  optparam_13:
    .lex "!BLOCK", param_1002
    .return ()
.end


.HLL "cardinal"

.namespace []
.sub "" :load :init :subid("post12") :outer("10_1471301651.1019")
.annotate 'file', "nano01.rb"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1471301651.1019" 
    .local pmc block
    set block, $P1001
.end


.HLL "parrot"

.namespace []
.sub "_block1003" :init :load :anon :subid("11_1471301651.1019") :outer("10_1471301651.1019")
.annotate 'file', "nano01.rb"
.annotate 'line', 0
$P0 = compreg "cardinal"
unless null $P0 goto have_cardinal
load_bytecode "cardinal.pbc"
have_cardinal:
    .return ()
.end

