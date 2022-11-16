#> asset:sacred_treasure/2006.rainbow_priming/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @a[scores={1JQ.CoolTime=1..},limit=1] run schedule function asset:sacred_treasure/2006.rainbow_priming/trigger/schedule_loop 1t replace
execute if entity @a[scores={1JQ.Tick=1..},limit=1] run schedule function asset:sacred_treasure/2006.rainbow_priming/trigger/schedule_loop 1t replace