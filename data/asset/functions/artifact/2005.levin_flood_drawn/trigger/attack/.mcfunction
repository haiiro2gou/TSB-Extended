#> asset:artifact/2005.levin_flood_drawn/trigger/attack/
#
# 装備した部位にのみそのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/attack/melee

execute if data storage asset:context id{mainhand:2005} run function asset:artifact/2005.levin_flood_drawn/trigger/attack/check_condition