#> asset:sacred_treasure/2014.crystal_sabatons/trigger/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2014.crystal_sabatons/trigger/3.main
#   asset:sacred_treasure/2014.crystal_sabatons/trigger/rejoin_process
#   asset:sacred_treasure/2014.crystal_sabatons/trigger/schedule_loop

# MP削り
    execute as @a[tag=1JY.Equipped] if score @s 1JY.Tick matches 0 run data modify storage api: Argument.Fluctuation set value -3
    execute as @a[tag=1JY.Equipped] if score @s 1JY.Tick matches 0 run function api:mp/fluctuation
    execute as @a[tag=1JY.Equipped] run scoreboard players add @s 1JY.Tick 1
    execute as @a[tag=1JY.Equipped] run scoreboard players operation @s 1JY.Tick %= $20 Const

# 再帰
    execute if entity @a[tag=1JY.Equipped,limit=1] run schedule function asset:sacred_treasure/2014.crystal_sabatons/trigger/schedule_loop 1t replace