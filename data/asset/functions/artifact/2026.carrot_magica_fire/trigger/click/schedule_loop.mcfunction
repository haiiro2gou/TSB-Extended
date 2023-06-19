#> asset:artifact/2026.carrot_magica_fire/trigger/click/schedule_loop
#
# ループ処理
#
# @within function
#   asset:artifact/2026.carrot_magica_fire/trigger/click/2.check_condition
#   asset:artifact/2026.carrot_magica_fire/trigger/click/3.main
#   asset:artifact/2026.carrot_magica_fire/trigger/click/rejoin_process
#   asset:artifact/2026.carrot_magica_fire/trigger/click/schedule_loop

# 1KA.ErrorCT
    execute as @a[scores={1KA.ErrorCT=1..}] run scoreboard players remove @s 1KA.ErrorCT 1
    execute as @a[scores={1KA.ErrorCT=..0}] run scoreboard players reset @s 1KA.ErrorCT

# 1KA.Tick
    execute as @a[scores={1KA.Tick=1..}] run scoreboard players remove @s 1KA.Tick 1
    execute as @a[scores={1KA.Tick=..0}] run scoreboard players reset @s 1KA.Tick

# ループ
    execute if entity @a[scores={1KA.ErrorCT=1..}] run schedule function asset:artifact/2026.carrot_magica_fire/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KA.Tick=1..}] run schedule function asset:artifact/2026.carrot_magica_fire/trigger/click/schedule_loop 1t replace
