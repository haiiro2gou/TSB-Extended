#> asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/3.main
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/2.check_condition
#   asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/equip/main

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    execute if entity @s[tag=!1JN.Equip] run data modify storage asset:sacred_treasure IgnoreItemUpdate set value true
    execute unless entity @s[tag=!1JN.Equip] run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/add_mp
    function asset:sacred_treasure/common/use/mainhand

# 納刀処理
    execute unless data storage asset:context Items.mainhand.id run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/sheath/

# 攻撃処理
    execute if entity @s[tag=!1JN.Equip] unless score @s 1JN.CoolTime matches 1.. run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/attack/
    execute if entity @s[tag=!1JN.Equip] run scoreboard players set @s 1JN.CoolTime 8
    execute if entity @s[tag=!1JN.Equip] run schedule function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/schedule_loop 1t replace

# リセット
    tag @s remove 1JN.Equip