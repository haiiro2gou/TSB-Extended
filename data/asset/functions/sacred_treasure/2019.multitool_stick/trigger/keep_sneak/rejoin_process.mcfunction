#> asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute as @a[tag=1K3.Reset] run tag @s remove 1K3.Reset
execute if entity @a[scores={1K3.Equipped=1..},limit=1] run schedule function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/schedule_loop 1t replace
execute if entity @a[scores={1K3.Tick=1..},limit=1] run schedule function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/schedule_loop 1t replace