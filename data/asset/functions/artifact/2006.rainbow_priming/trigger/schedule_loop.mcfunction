#> asset:artifact/2006.rainbow_priming/trigger/schedule_loop
#

# ループ処理
#
# @within function
#   asset:artifact/2006.rainbow_priming/trigger/3.main
#   asset:artifact/2006.rainbow_priming/trigger/schedule_loop
#   asset:artifact/2006.rainbow_priming/trigger/rejoin_process

# CoolTime
    execute as @a[scores={1JQ.CoolTime=1..}] run scoreboard players remove @s 1JQ.CoolTime 1
    execute as @a[scores={1JQ.CoolTime=..0}] run scoreboard players reset @s 1JQ.CoolTime

# Particle
    execute as @e[scores={1JQ.Particle=1..}] at @s rotated 0 0 run function asset:artifact/2006.rainbow_priming/trigger/particle/
    execute as @e[scores={1JQ.Particle=1..}] run scoreboard players remove @s 1JQ.Particle 1
    execute as @e[scores={1JQ.Particle=..0}] run scoreboard players reset @s 1JQ.Particle

# Tick
    execute as @e[scores={1JQ.Burning=1..}] at @s run particle minecraft:lava ~ ~0.5 ~ 0 0.5 0 0.3 1
    execute as @e[scores={1JQ.Burning=1..}] run scoreboard players remove @s 1JQ.Tick 1
    execute as @e[scores={1JQ.Tick=..0}] run scoreboard players remove @s 1JQ.Burning 1
    execute as @e[scores={1JQ.Burning=1..,1JQ.Tick=..0}] run scoreboard players add @s 1JQ.Tick 100
    execute as @e[scores={1JQ.Burning=..0}] run scoreboard players reset @s 1JQ.Tick
    execute as @e[scores={1JQ.Burning=..0}] run scoreboard players reset @s 1JQ.Burning

# ループ
    execute if entity @a[scores={1JQ.CoolTime=1..},limit=1] run schedule function asset:artifact/2006.rainbow_priming/trigger/schedule_loop 1t replace
    execute if entity @e[scores={1JQ.Burning=1..},limit=1] run schedule function asset:artifact/2006.rainbow_priming/trigger/schedule_loop 1t replace
    execute if entity @e[scores={1JQ.Particle=1..},limit=1] run schedule function asset:artifact/2006.rainbow_priming/trigger/schedule_loop 1t replace
