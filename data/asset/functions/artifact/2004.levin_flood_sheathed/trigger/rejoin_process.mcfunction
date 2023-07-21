#> asset:artifact/2004.levin_flood_sheathed/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @e[scores={1JO.CoolTime=1..},limit=1] run schedule function asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop 1t replace
execute if entity @e[scores={1JO.ChargeTime=1..},limit=1] run schedule function asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop 1t replace
execute if entity @e[tag=1JP.Reset,limit=1] run schedule function asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop 1t replace