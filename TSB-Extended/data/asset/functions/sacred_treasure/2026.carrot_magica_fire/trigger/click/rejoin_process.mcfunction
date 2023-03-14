#> asset:sacred_treasure/2026.carrot_magica_fire/trigger/click/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ発火
    execute if entity @a[scores={1KA.ErrorCT=1..}] run schedule function asset:sacred_treasure/2026.carrot_magica_fire/trigger/click/schedule_loop 1t replace
    execute if entity @a[scores={1KA.Tick=1..}] run schedule function asset:sacred_treasure/2026.carrot_magica_fire/trigger/click/schedule_loop 1t replace
