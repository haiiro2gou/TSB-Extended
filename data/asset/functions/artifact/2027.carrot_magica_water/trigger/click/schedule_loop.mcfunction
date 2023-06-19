#> asset:sacred_treasure/2027.carrot_magica_water/trigger/click/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2027.carrot_magica_water/trigger/click/2.check_condition
#   asset:sacred_treasure/2027.carrot_magica_water/trigger/click/3.main
#   asset:sacred_treasure/2027.carrot_magica_water/trigger/click/rejoin_process
#   asset:sacred_treasure/2027.carrot_magica_water/trigger/click/schedule_loop

# 1KB.ErrorCT
    execute as @a[scores={1KB.ErrorCT=1..}] run scoreboard players remove @s 1KB.ErrorCT 1
    execute as @a[scores={1KB.ErrorCT=..0}] run scoreboard players reset @s 1KB.ErrorCT

# 1KB.Tick
    execute as @a[scores={1KB.Tick=1..}] run scoreboard players remove @s 1KB.Tick 1
    execute as @a[scores={1KB.Tick=..0}] run scoreboard players reset @s 1KB.Tick

# ループ
    execute if entity @a[scores={1KB.ErrorCT=1..}] run schedule function asset:sacred_treasure/2027.carrot_magica_water/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KB.Tick=1..}] run schedule function asset:sacred_treasure/2027.carrot_magica_water/trigger/click/schedule_loop 1t replace
