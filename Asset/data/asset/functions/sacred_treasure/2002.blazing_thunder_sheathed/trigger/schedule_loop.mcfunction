#> asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/3.main
#   asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop
#   asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/rejoin_process

# 居合抜き
    execute as @a[scores={1JM.IaiTime=1..}] at @s run function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/iai/
    execute as @a[scores={1JM.IaiTime=1..}] at @s run scoreboard players remove @s 1JM.IaiTime 1
    execute as @a[scores={1JM.IaiTime=..0}] at @s run function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/iai/4.kill
    execute as @a[scores={1JM.IaiTime=..0}] at @s run scoreboard players reset @s 1JM.IaiTime

# 抜刀
    execute as @a[scores={1JM.ChargeTime=1..}] at @s run scoreboard players remove @s 1JM.ChargeTime 1
    execute as @a[scores={1JM.ChargeTime=1..}] at @s run particle dust 1 1 0 1 ~ ~0.4 ~ 0.7 0.7 0.7 0 7
    execute as @a[scores={1JM.ChargeTime=..0}] at @s unless score @s 1JN.CoolTime matches 1.. run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/3.main

# CT
    execute as @a[scores={1JM.CoolTime=1..}] at @s run scoreboard players remove @s 1JM.CoolTime 1
    execute as @a[scores={1JM.CoolTime=..0}] at @s run scoreboard players reset @s 1JM.CoolTime

# ループ
    execute if entity @a[scores={1JM.IaiTime=1..}] run schedule function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop 1t replace
    execute if entity @a[scores={1JM.ChargeTime=0..}] run schedule function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop 1t replace
    execute if entity @a[scores={1JM.CoolTime=1..}] run schedule function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/schedule_loop 1t replace