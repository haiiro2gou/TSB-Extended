#> asset:artifact/2005.levin_flood_drawn/trigger/reset/main
# @within function
#   asset:artifact/2005.levin_flood_drawn/trigger/reset/
#   asset:artifact/2005.levin_flood_drawn/trigger/sneak/1s

# 演出
    particle minecraft:rain ~ ~1 ~ 1 1 1 0 50
    playsound minecraft:entity.generic.drink player @a ~ ~ ~ 0.3 0.4
    playsound minecraft:entity.generic.drink player @a ~ ~ ~ 0.5 0.7

# 置き換え
    data modify storage api: Argument.ID set value 2004
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id

# リセット
    tag @s remove 1JP.Reset
    scoreboard players reset @s 1JO.ChargeTime