#> asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/5.change
#
# 神器の形態変換
#
# @within function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/3.main

# 神器切り替え
    data modify storage api: Argument.ID set value 2007
    data modify storage api: Argument.Slot set value 1
    function api:sacred_treasure/give/from_id