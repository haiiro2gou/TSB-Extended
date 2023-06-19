#> asset:artifact/2028.carrot_magica_thunder/trigger/click/schedule_loop
#
# ループ処理
#
# @within function
#   asset:artifact/2028.carrot_magica_thunder/trigger/click/2.check_condition
#   asset:artifact/2028.carrot_magica_thunder/trigger/click/3.main
#   asset:artifact/2028.carrot_magica_thunder/trigger/click/rejoin_process
#   asset:artifact/2028.carrot_magica_thunder/trigger/click/schedule_loop

# 1KC.ErrorCT
    execute as @a[scores={1KC.ErrorCT=1..}] run scoreboard players remove @s 1KC.ErrorCT 1
    execute as @a[scores={1KC.ErrorCT=..0}] run scoreboard players reset @s 1KC.ErrorCT

# 1KC.Tick
    execute as @a[scores={1KC.Tick=1..}] run scoreboard players remove @s 1KC.Tick 1
    execute as @a[scores={1KC.Tick=..0}] run scoreboard players reset @s 1KC.Tick

# ループ
    execute if entity @a[scores={1KC.ErrorCT=1..}] run schedule function asset:artifact/2028.carrot_magica_thunder/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KC.Tick=1..}] run schedule function asset:artifact/2028.carrot_magica_thunder/trigger/click/schedule_loop 1t replace
