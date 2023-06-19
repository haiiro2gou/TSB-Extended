#> asset:artifact/2011.crystal_headgear/trigger/fullset/schedule_loop
#
# ループ処理
#
# @within function
#   asset:artifact/2011.crystal_headgear/trigger/fullset/
#   asset:artifact/2011.crystal_headgear/trigger/fullset/schedule_loop
#   asset:artifact/2011.crystal_headgear/trigger/rejoin_process

# メイン処理
    execute as @a[tag=1JV.Fullset] at @s run function asset:artifact/2011.crystal_headgear/trigger/fullset/main

# 10t処理
    execute as @a[tag=1JV.Fullset] if score @s 1JV.Tick matches 0 run function asset:artifact/2011.crystal_headgear/trigger/fullset/10t_modifier
    execute as @a[tag=1JV.Fullset] run scoreboard players add @s 1JV.Tick 1
    execute as @a[tag=1JV.Fullset] run scoreboard players operation @s 1JV.Tick %= $10 Const

# 再帰
    execute if entity @a[tag=1JV.Fullset,limit=1] run schedule function asset:artifact/2011.crystal_headgear/trigger/fullset/schedule_loop 1t replace
