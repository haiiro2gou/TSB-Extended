#> asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/sheath
#
# 納刀処理
#
# @within function
#   asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/3.main

# 納刀処理
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
    playsound block.beacon.deactivate player @a ~ ~ ~ 1 2

    clear @s debug_stick 1
    effect give @s slowness 2 1 true

    data modify storage api: Argument.ID set value 2002
    function api:sacred_treasure/give/from_id

# リセット
    scoreboard players reset @s 1JM.ChargeTime