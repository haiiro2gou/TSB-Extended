#> asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop
#
# ループ処理
#
# @within function
#   asset:artifact/2004.levin_flood_sheathed/trigger/3.main
#   asset:artifact/2004.levin_flood_sheathed/trigger/rejoin_process
#   asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop

# CT
    execute as @a[scores={1JO.CoolTime=1..}] run scoreboard players remove @s 1JO.CoolTime 1
    execute as @a[scores={1JO.CoolTime=..0}] run tag @s remove 1JO.InCooldown
    execute as @a[scores={1JO.CoolTime=..0}] run scoreboard players reset @s 1JO.CoolTime

# charge
    execute as @a[tag=1JP.Reset] run tag @s remove 1JP.Reset
    execute as @a[scores={1JO.ChargeTime=1..}] run scoreboard players remove @s 1JO.ChargeTime 1
    execute as @a[scores={1JO.ChargeTime=..0}] run tag @s add 1JP.Reset
    execute as @a[scores={1JO.ChargeTime=..0}] run scoreboard players reset @s 1JO.ChargeTime

# ループ
    execute if entity @a[scores={1JO.CoolTime=1..},limit=1] run schedule function asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop 1t replace
    execute if entity @a[scores={1JO.ChargeTime=1..},limit=1] run schedule function asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop 1t replace
    execute if entity @a[tag=1JP.Reset,limit=1] run schedule function asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop 1t replace