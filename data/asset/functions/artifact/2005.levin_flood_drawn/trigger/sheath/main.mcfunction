#> asset:artifact/2005.levin_flood_drawn/trigger/sheath/main
#
# 納刀メイン処理
#
# @within function asset:artifact/2005.levin_flood_drawn/trigger/sheath/

# メイン処理
    # 演出
        playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
        playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
        playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
        playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
        playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
        playsound block.beacon.deactivate player @a ~ ~ ~ 1 2
    # 納刀
        execute if entity @s[tag=1JP.DisEquip] unless entity @s[scores={1JP.Equipped=0}] run clear @s carrot_on_a_stick{TSB:{ID:2005}} 1
        execute unless entity @s[tag=1JP.DisEquip,scores={1JP.Equipped=0}] run data modify storage api: Argument.ID set value 2004
        execute unless entity @s[tag=1JP.DisEquip,scores={1JP.Equipped=0}] run function api:artifact/give/from_id

# 連続納刀防止
    tag @s add 1JP.SheathCD
    schedule function asset:artifact/2005.levin_flood_drawn/trigger/sheath/schedule 2t replace

# リセット
    scoreboard players reset @s 1JO.ChargeTime