#> asset:artifact/2030.carrot_magica_earth/trigger/click/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ発火
    execute if entity @a[scores={1KE.ErrorCT=1..}] run schedule function asset:artifact/2030.carrot_magica_earth/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KE.Tick=1..}] run schedule function asset:artifact/2030.carrot_magica_earth/trigger/click/schedule_loop 1t replace
