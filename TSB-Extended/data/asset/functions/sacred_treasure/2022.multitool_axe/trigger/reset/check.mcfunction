#> asset:sacred_treasure/2022.multitool_axe/trigger/reset/check
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/2022.multitool_axe/trigger/reset/

execute if entity @s[tag=1K3.Reset] run function asset:sacred_treasure/2020.multitool_pickaxe/trigger/reset/main
tag @s remove 1K3.Reset