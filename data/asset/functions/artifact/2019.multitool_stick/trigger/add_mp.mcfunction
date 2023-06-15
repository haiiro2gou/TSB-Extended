#> asset:artifact/2019.multitool_stick/trigger/add_mp
#
# mp回復処理
#
# @within function asset:artifact/2019.multitool_stick/trigger/**

data modify storage api: Argument.Fluctuation set value 5
data modify storage api: Argument.DisableLog set value true
function api:mp/fluctuation