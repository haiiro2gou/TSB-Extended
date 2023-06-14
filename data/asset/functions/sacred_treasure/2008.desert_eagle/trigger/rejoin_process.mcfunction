#> asset:sacred_treasure/2008.desert_eagle/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @a[scores={1JS.OffTimer=1..},limit=1] run schedule function asset:sacred_treasure/2008.desert_eagle/trigger/schedule_loop 1t replace