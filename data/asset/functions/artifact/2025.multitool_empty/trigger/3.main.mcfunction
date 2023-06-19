#> asset:artifact/2025.multitool_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2025.multitool_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# 燃料を充填
    stopsound @a * entity.item.break
    playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0
    playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2
    data modify storage api: Argument.ID set value 2019
    execute store result storage asset:artifact RemainingCount int 1 run data get storage asset:temp 1K9.FuelCount 0.05
    function api:artifact/give/from_id