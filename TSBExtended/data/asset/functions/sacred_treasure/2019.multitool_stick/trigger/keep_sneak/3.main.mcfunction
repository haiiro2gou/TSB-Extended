#> asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:sacred_treasure IgnoreItemUpdate set value true
    function asset:sacred_treasure/common/use/mainhand

#> private
# @private
    #declare score_holder $10per
    execute store result score $10per Temporary run scoreboard players get @s 1K3.Tick
    scoreboard players operation $10per Temporary %= $10 Const
    execute if score $10per Temporary matches 1.. run function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/add_mp
    scoreboard players reset $10per Temporary

# メイン処理


# ループ点火
    execute unless score @s 1K3.Tick matches 1.. run scoreboard players set @s 1K3.Tick 10
    schedule function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/schedule_loop 1t replace
