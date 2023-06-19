#> asset:artifact/2005.levin_flood_drawn/trigger/dis_equip/schedule
#
# 1tick遅延処理
#
# @within function asset:artifact/2005.levin_flood_drawn/trigger/dis_equip/

execute as @a[tag=1JP.DisEquip] at @s run function asset:artifact/2005.levin_flood_drawn/trigger/dis_equip/main
tag @a remove 1JP.DisEquip