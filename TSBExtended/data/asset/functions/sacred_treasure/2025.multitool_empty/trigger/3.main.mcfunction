#> asset:sacred_treasure/2025.multitool_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2025.multitool_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# 燃料は消費

    clear @s charcoal 1

# 燃料を充填
    stopsound @a * entity.item.break
    playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0
    playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2
    data modify storage api: Argument.ID set value 2019
    data modify storage asset:sacred_treasure RemainingCount set value 80
    function api:sacred_treasure/give/from_id