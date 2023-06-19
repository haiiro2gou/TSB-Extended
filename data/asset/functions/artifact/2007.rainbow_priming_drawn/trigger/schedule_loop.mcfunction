#> asset:artifact/2007.rainbow_priming_drawn/trigger/schedule_loop
#

# ループ処理
#
# @within function
#   asset:artifact/2007.rainbow_priming_drawn/trigger/3.main
#   asset:artifact/2007.rainbow_priming_drawn/trigger/schedule_loop
#   asset:artifact/2007.rainbow_priming_drawn/trigger/rejoin_process

# CoolTime
    execute as @a[scores={1JR.CoolTime=1..}] run scoreboard players remove @s 1JR.CoolTime 1
    execute as @a[scores={1JR.CoolTime=..0}] run scoreboard players reset @s 1JR.CoolTime

# 再帰
    execute if entity @a[scores={1JR.CoolTime=1..},limit=1] run schedule function asset:artifact/2007.rainbow_priming_drawn/trigger/schedule_loop 1t replace