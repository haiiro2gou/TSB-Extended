#> asset:sacred_treasure/2005.levin_flood_drawn/trigger/equip/
#
# 装備した部位にのみそのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/equip

execute if data storage asset:context id{mainhand:2005} unless score @s 1JO.ChargeTime matches 200.. run function asset:sacred_treasure/2005.levin_flood_drawn/trigger/equip/main