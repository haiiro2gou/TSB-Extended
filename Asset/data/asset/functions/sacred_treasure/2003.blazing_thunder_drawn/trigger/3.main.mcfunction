#> asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/3.main
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop
#   asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    execute as @s[scores={1JM.ChargeTime=0}] run tag @s add 1JN.Sheath
    execute if entity @s[tag=!1JN.Sheath] run data modify storage asset:sacred_treasure IgnoreItemUpdate set value true
    execute unless entity @s[tag=!1JN.Sheath] run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/add_mp
    function asset:sacred_treasure/common/use/mainhand

# 攻撃処理
    execute if entity @s[tag=!1JN.Sheath] unless score @s 1JN.CoolTime matches 1.. run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/attack/

# 納刀処理
    execute unless entity @s[tag=!1JN.Sheath] unless data storage asset:context Items.mainhand.id run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/sheath

# ループ処理
    scoreboard players set @s 1JN.CoolTime 8
    schedule function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/schedule_loop 1t replace

# リセット
    tag @s remove 1JN.Sheath