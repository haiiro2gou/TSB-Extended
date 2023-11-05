#> asset:artifact/2032.carrot_magica_dark/trigger/click/schedule_loop
#
# ループ処理
#
# @within function
#   asset:artifact/2032.carrot_magica_dark/trigger/click/2.check_condition
#   asset:artifact/2032.carrot_magica_dark/trigger/click/3.main
#   asset:artifact/2032.carrot_magica_dark/trigger/click/rejoin_process
#   asset:artifact/2032.carrot_magica_dark/trigger/click/schedule_loop

# 1KG.ErrorCT
    execute as @a[scores={1KG.ErrorCT=1..}] run scoreboard players remove @s 1KG.ErrorCT 1
    execute as @a[scores={1KG.ErrorCT=..0}] run scoreboard players reset @s 1KG.ErrorCT

# 1KG.Tick
    execute as @a[scores={1KG.Tick=1..}] run scoreboard players remove @s 1KG.Tick 1
    execute as @a[scores={1KG.Tick=..0}] run scoreboard players reset @s 1KG.Tick

# ループ
    execute if entity @a[scores={1KG.ErrorCT=1..}] run schedule function asset:artifact/2032.carrot_magica_dark/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KG.Tick=1..}] run schedule function asset:artifact/2032.carrot_magica_dark/trigger/click/schedule_loop 1t replace
