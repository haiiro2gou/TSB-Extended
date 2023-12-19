#> asset:artifact/2035.cup_of_second_coming/trigger/schedule_loop
# @within function
#   asset:artifact/2035.cup_of_second_coming/trigger/2.check_condition
#   asset:artifact/2035.cup_of_second_coming/trigger/rejoin_process
#   asset:artifact/2035.cup_of_second_coming/trigger/schedule_loop

# 1KJ.FailLogCT
    execute as @a[scores={1KJ.FailLogCT=1..}] run scoreboard players remove @s 1KJ.FailLogCT 1
    execute as @a[scores={1KJ.FailLogCT=..0}] run scoreboard players reset @s 1KJ.FailLogCT

# ループ呼び出し
    execute if entity @a[scores={1KJ.FailLogCT=1..}] run schedule function asset:artifact/2035.cup_of_second_coming/trigger/schedule_loop 1t replace