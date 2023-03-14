#> asset:sacred_treasure/2030.carrot_magica_earth/trigger/click/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2030.carrot_magica_earth/trigger/click/2.check_condition
#   asset:sacred_treasure/2030.carrot_magica_earth/trigger/click/3.main
#   asset:sacred_treasure/2030.carrot_magica_earth/trigger/click/rejoin_process
#   asset:sacred_treasure/2030.carrot_magica_earth/trigger/click/schedule_loop

# 1KE.ErrorCT
    execute as @a[scores={1KE.ErrorCT=1..}] run scoreboard players remove @s 1KE.ErrorCT 1
    execute as @a[scores={1KE.ErrorCT=..0}] run scoreboard players reset @s 1KE.ErrorCT

# 1KE.Tick
    execute as @a[scores={1KE.Tick=1..}] run scoreboard players remove @s 1KE.Tick 1
    execute as @a[scores={1KE.Tick=..0}] run scoreboard players reset @s 1KE.Tick

# ループ
    execute if entity @a[scores={1KE.ErrorCT=1..}] run schedule function asset:sacred_treasure/2030.carrot_magica_earth/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KE.Tick=1..}] run schedule function asset:sacred_treasure/2030.carrot_magica_earth/trigger/click/schedule_loop 1t replace
