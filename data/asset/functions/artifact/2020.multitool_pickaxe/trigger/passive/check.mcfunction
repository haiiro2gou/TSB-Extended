#> asset:artifact/2020.multitool_pickaxe/trigger/passive/check
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/2020.multitool_pickaxe/trigger/passive/

execute if score @s 1K4.Count matches 1.. run function asset:artifact/2019.multitool_stick/trigger/passive/main
scoreboard players reset @s 1K4.Count