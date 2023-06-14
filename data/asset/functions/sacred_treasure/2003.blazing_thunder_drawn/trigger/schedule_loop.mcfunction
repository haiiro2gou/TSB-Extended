#> asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/3.main
#   asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/schedule_loop
#   asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/rejoin_process

# CT
    execute as @a[scores={1JN.CoolTime=1..}] at @s run scoreboard players remove @s 1JN.CoolTime 1
    execute as @a[scores={1JN.CoolTime=..0}] at @s run scoreboard players reset @s 1JN.CoolTime

# ループ
    execute if entity @a[scores={1JN.CoolTime=1..}] run schedule function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/schedule_loop 1t replace