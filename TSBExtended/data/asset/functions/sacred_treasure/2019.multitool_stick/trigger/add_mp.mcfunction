#> asset:sacred_treasure/2019.multitool_stick/trigger/add_mp
#
# mp回復処理
#
# @within function asset:sacred_treasure/2019.multitool_stick/trigger/*/3.main

data modify storage api: Argument.Fluctuation set value 5
data modify storage api: Argument.DisableLog set value true
function api:mp/fluctuation