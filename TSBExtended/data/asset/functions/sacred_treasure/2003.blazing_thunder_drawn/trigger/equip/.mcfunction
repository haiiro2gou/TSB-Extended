#> asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/equip/
#
# 装備した部位にのみそのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/equip

execute if data storage asset:context id{mainhand:2003} unless score @s 1JM.ChargeTime matches 200.. run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/equip/main