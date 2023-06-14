#> asset:sacred_treasure/2029.carrot_magica_air/trigger/click/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2029.carrot_magica_air/trigger/click/2.check_condition
#   asset:sacred_treasure/2029.carrot_magica_air/trigger/click/3.main
#   asset:sacred_treasure/2029.carrot_magica_air/trigger/click/rejoin_process
#   asset:sacred_treasure/2029.carrot_magica_air/trigger/click/schedule_loop

# 1KD.ErrorCT
    execute as @a[scores={1KD.ErrorCT=1..}] run scoreboard players remove @s 1KD.ErrorCT 1
    execute as @a[scores={1KD.ErrorCT=..0}] run scoreboard players reset @s 1KD.ErrorCT

# 1KD.Tick
    execute as @a[scores={1KD.Tick=1..}] run scoreboard players remove @s 1KD.Tick 1
    execute as @a[scores={1KD.Tick=..0}] run scoreboard players reset @s 1KD.Tick

# ループ
    execute if entity @a[scores={1KD.ErrorCT=1..}] run schedule function asset:sacred_treasure/2029.carrot_magica_air/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KD.Tick=1..}] run schedule function asset:sacred_treasure/2029.carrot_magica_air/trigger/click/schedule_loop 1t replace
