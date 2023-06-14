#> asset:sacred_treasure/2006.rainbow_priming/trigger/5.change
#
# 神器の形態変換
#
# @within function asset:sacred_treasure/2006.rainbow_priming/trigger/3.main

# 神器切り替え
    data modify storage api: Argument.ID set value 2007
    data modify storage api: Argument.Slot set value 1
    function api:sacred_treasure/give/from_id

# 演出
    playsound minecraft:entity.generic.burn player @a ~ ~ ~ 0.5 0
    particle minecraft:cloud ~ ~1 ~ 1 1 1 0.1 15 normal