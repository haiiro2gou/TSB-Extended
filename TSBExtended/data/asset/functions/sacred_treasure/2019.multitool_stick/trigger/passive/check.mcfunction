#> asset:sacred_treasure/2019.multitool_stick/trigger/passive/check
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/2019.multitool_stick/trigger/passive/

execute if score @s 1K3.Count matches 1.. run function asset:sacred_treasure/2019.multitool_stick/trigger/passive/main
scoreboard players reset @s 1K3.Count