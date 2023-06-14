#> asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/dis_equip/schedule
#
# 1tick遅延処理
#
# @within function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/dis_equip/

execute as @a[tag=1JN.DisEquip] at @s run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/dis_equip/main
tag @a remove 1JN.DisEquip