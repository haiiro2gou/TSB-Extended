#> asset:artifact/2008.desert_eagle/trigger/schedule_loop
#
# ループ処理
#
# @within function
#   asset:artifact/2008.desert_eagle/trigger/double/
#   asset:artifact/2008.desert_eagle/trigger/schedule_loop
#   asset:artifact/2008.desert_eagle/trigger/rejoin_process

# OffTimer
    execute as @a[scores={1JS.OffTimer=1..}] run scoreboard players remove @s 1JS.OffTimer 1

# ループ
    execute if entity @a[scores={1JS.OffTimer=1..},limit=1] run schedule function asset:artifact/2008.desert_eagle/trigger/schedule_loop 1t replace