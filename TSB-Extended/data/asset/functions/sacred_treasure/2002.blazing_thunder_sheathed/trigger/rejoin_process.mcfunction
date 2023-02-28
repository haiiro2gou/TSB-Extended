#> asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# ループ
    execute if entity @a[scores={1JM.IaiTime=1..}] run schedule function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop 1t replace
    execute if entity @a[scores={1JM.ChargeTime=0..}] run schedule function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop 1t replace
    execute if entity @a[scores={1JM.CoolTime=1..}] run schedule function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop 1t replace

    tag @a remove 1JM.InCooldown