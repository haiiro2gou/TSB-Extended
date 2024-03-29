#> asset:artifact/2019.multitool_stick/trigger/keep_sneak/schedule_loop
#
# ループ処理
#
# @within function
#   asset:artifact/2019.multitool_stick/trigger/keep_sneak/3.main
#   asset:artifact/2019.multitool_stick/trigger/keep_sneak/rejoin_process
#   asset:artifact/2019.multitool_stick/trigger/keep_sneak/schedule_loop

execute as @a[tag=1K3.Reset] run tag @s remove 1K3.Reset

execute as @a[scores={1K3.Equipped=1..}] run scoreboard players remove @s 1K3.Equipped 1
execute as @a[scores={1K3.Equipped=..0}] run tag @s add 1K3.Reset
execute as @a[scores={1K3.Equipped=..0}] run scoreboard players reset @s 1K3.Equipped

execute as @a[scores={1K3.Tick=1..}] run scoreboard players remove @s 1K3.Tick 1
execute as @a[scores={1K3.Tick=..0}] run scoreboard players reset @s 1K3.Tick

execute if entity @a[scores={1K3.Equipped=1..},limit=1] run schedule function asset:artifact/2019.multitool_stick/trigger/keep_sneak/schedule_loop 1t replace
execute if entity @a[scores={1K3.Tick=1..},limit=1] run schedule function asset:artifact/2019.multitool_stick/trigger/keep_sneak/schedule_loop 1t replace