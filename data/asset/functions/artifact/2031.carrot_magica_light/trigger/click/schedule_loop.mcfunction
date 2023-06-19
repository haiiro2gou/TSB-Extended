#> asset:artifact/2031.carrot_magica_light/trigger/click/schedule_loop
#
# ループ処理
#
# @within function
#   asset:artifact/2031.carrot_magica_light/trigger/click/2.check_condition
#   asset:artifact/2031.carrot_magica_light/trigger/click/3.main
#   asset:artifact/2031.carrot_magica_light/trigger/click/rejoin_process
#   asset:artifact/2031.carrot_magica_light/trigger/click/schedule_loop

# 1KF.ErrorCT
    execute as @a[scores={1KF.ErrorCT=1..}] run scoreboard players remove @s 1KF.ErrorCT 1
    execute as @a[scores={1KF.ErrorCT=..0}] run scoreboard players reset @s 1KF.ErrorCT

# 1KF.Tick
    execute as @a[scores={1KF.Tick=1..}] run scoreboard players remove @s 1KF.Tick 1
    execute as @a[scores={1KF.Tick=..0}] run scoreboard players reset @s 1KF.Tick

# ループ
    execute if entity @a[scores={1KF.ErrorCT=1..}] run schedule function asset:artifact/2031.carrot_magica_light/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KF.Tick=1..}] run schedule function asset:artifact/2031.carrot_magica_light/trigger/click/schedule_loop 1t replace
