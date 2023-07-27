#> asset:mob/2001.levin_flood_square/schedule_loop
# @within function
#   asset:mob/2001.levin_flood_square/rejoin_process
#   asset:mob/2001.levin_flood_square/schedule_loop
#   asset:mob/2001.levin_flood_square/tick/3.1.damage

# charge
    execute as @e[scores={1JL.ChargeTime=1..}] run scoreboard players remove @s 1JL.ChargeTime 1
    execute as @e[scores={1JL.ChargeTime=1..}] at @s anchored eyes run particle dust 0.788 0.733 0.251 1 ~ ~ ~ 0.2 0.3 0.2 0 5
    execute as @e[scores={1JL.ChargeTime=..0}] run scoreboard players reset @s 1JL.Charge
    execute as @e[scores={1JL.ChargeTime=..0}] run scoreboard players reset @s 1JL.ChargeTime

# loop
    execute if entity @e[scores={1JL.ChargeTime=1..}] run schedule function asset:mob/2001.levin_flood_square/schedule_loop 1t replace