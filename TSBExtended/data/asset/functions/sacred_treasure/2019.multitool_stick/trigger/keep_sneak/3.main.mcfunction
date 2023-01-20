#> asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/3.main
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/2.check_condition
#   asset:sacred_treasure/2020.multitool_pickaxe/trigger/keep_sneak/2.check_condition
#   asset:sacred_treasure/2021.multitool_shovel/trigger/keep_sneak/2.check_condition
#   asset:sacred_treasure/2022.multitool_axe/trigger/keep_sneak/2.check_condition
#   asset:sacred_treasure/2023.multitool_hoe/trigger/keep_sneak/2.check_condition
#   asset:sacred_treasure/2024.multitool_shear/trigger/keep_sneak/2.check_condition

#> private
# @private
    #declare score_holder $10per

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:sacred_treasure IgnoreItemUpdate set value true
    function asset:sacred_treasure/common/use/mainhand

    execute store result score $10per Temporary run scoreboard players get @s 1K3.Tick
    scoreboard players operation $10per Temporary %= $10 Const
    execute if score $10per Temporary matches 1.. run function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/add_mp
    scoreboard players reset $10per Temporary

# メイン処理

    execute unless data storage api: Argument.ID run data modify storage api: Argument.ID set value 2019

    execute store result storage asset:sacred_treasure RemainingCount int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    execute store result storage asset:sacred_treasure RemainingCountMAX int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCountMAX
    function api:sacred_treasure/give/from_id

# ループ点火
    execute unless score @s 1K3.Tick matches 1.. run scoreboard players set @s 1K3.Tick 10
    schedule function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/schedule_loop 1t replace
