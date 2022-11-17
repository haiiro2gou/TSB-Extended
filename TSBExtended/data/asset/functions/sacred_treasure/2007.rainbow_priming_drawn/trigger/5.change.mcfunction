#> asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/5.change
#
# 神器の形態変換
#
# @within function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/3.main

# 神器切り替え
    data modify storage api: Argument.ID set value 2006
    data modify storage api: Argument.Slot set value 1
    function api:sacred_treasure/give/from_id

# 演出
    playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 0.7 0
    particle minecraft:lava ~ ~0.5 ~ 0 0.5 0 0.3 15