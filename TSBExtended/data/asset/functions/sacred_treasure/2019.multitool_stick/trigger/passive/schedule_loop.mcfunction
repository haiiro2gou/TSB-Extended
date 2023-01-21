#> asset:sacred_treasure/2019.multitool_stick/trigger/passive/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2019.multitool_stick/trigger/passive/3.main
#   asset:sacred_treasure/2019.multitool_stick/trigger/passive/rejoin_process
#   asset:sacred_treasure/2019.multitool_stick/trigger/passive/schedule_loop

execute as @a[scores={1K3.Tick=1..}] run scoreboard players remove @s 1K3.Tick 1
execute as @a[scores={1K3.Tick=1..},predicate=!lib:is_sneaking] run function asset:sacred_treasure/2019.multitool_stick/trigger/passive/reset
execute as @a[scores={1K3.Tick=..0}] run function asset:sacred_treasure/2019.multitool_stick/trigger/passive/reset
execute as @a[scores={1K3.Tick=..0}] run scoreboard players reset @s 1K3.Tick

execute if entity @a[scores={1K3.Tick=1..},limit=1] run schedule function asset:sacred_treasure/2019.multitool_stick/trigger/passive/schedule_loop 1t replace