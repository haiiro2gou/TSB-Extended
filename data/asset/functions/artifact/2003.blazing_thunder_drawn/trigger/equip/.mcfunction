#> asset:artifact/2003.blazing_thunder_drawn/trigger/equip/
#
# 装備した部位にのみそのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/equip

execute if data storage asset:context id{mainhand:2003} unless score @s 1JM.ChargeTime matches 200.. run function asset:artifact/2003.blazing_thunder_drawn/trigger/equip/main