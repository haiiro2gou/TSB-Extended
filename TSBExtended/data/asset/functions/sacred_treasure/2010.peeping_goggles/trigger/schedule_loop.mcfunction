#> asset:sacred_treasure/2010.peeping_goggles/trigger/schedule_loop
#
# ループ処理
#
# @within function
#   asset:sacred_treasure/2010.peeping_goggles/trigger/3.main
#   asset:sacred_treasure/2010.peeping_goggles/trigger/schedule_loop
#   asset:sacred_treasure/2010.peeping_goggles/trigger/rejoin_process

# CoolTime
    execute as @a[scores={1JU.CoolTime=1..}] run scoreboard players remove @s 1JU.CoolTime 1
    execute as @a[scores={1JU.CoolTime=70}] at @s run function asset:sacred_treasure/2010.peeping_goggles/trigger/damage
    execute as @a[scores={1JU.CoolTime=..1}] at @s run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.3 1
    execute as @a[scores={1JU.CoolTime=..0}] run scoreboard players reset @s 1JU.CoolTime

# ループ
    execute if entity @a[scores={1JU.CoolTime=1..},limit=1] run schedule function asset:sacred_treasure/2010.peeping_goggles/trigger/schedule_loop 1t replace