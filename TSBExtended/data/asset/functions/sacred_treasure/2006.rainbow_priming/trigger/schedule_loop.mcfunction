#> asset:sacred_treasure/2006.rainbow_priming/trigger/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2006.rainbow_priming/trigger/3.main
#   asset:sacred_treasure/2006.rainbow_priming/trigger/schedule_loop
#   asset:sacred_treasure/2006.rainbow_priming/trigger/rejoin_process

# CoolTime
    execute as @a[scores={1JQ.CoolTime=1..}] run scoreboard players remove @s 1JQ.CoolTime 1
    execute as @a[scores={1JQ.CoolTime=..0}] run scoreboard players reset @s 1JQ.CoolTime

# ループ
    execute if entity @a[scores={1JQ.CoolTime=1..},limit=1] run schedule function asset:sacred_treasure/2006.rainbow_priming/trigger/schedule_loop 1t replace