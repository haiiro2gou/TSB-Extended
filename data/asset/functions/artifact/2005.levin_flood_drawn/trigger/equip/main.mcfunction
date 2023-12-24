#> asset:artifact/2005.levin_flood_drawn/trigger/equip/main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2005.levin_flood_drawn/trigger/equip/

#> private
# @private
    #declare score_holder $1JP.ID

# 演出
    particle minecraft:rain ~ ~1 ~ 1 1 1 0 50
    playsound minecraft:entity.generic.drink player @a ~ ~ ~ 0.3 0.4
    playsound minecraft:entity.generic.drink player @a ~ ~ ~ 0.5 0.7

# 装備回数チェック
    execute store result score $1JP.Count Temporary run data get storage asset:context Items.mainhand.tag.TSB.Field.EquipCount 1.0
    scoreboard players remove $1JP.Count Temporary 1
    scoreboard players set $1JP.ID Temporary 2005
    execute unless score $1JP.Count Temporary matches 1.. run scoreboard players remove $1JP.ID Temporary 1
    execute store result storage api: Argument.ID int 1 run scoreboard players get $1JP.ID Temporary
    data modify storage api: Argument.Slot set value "mainhand"
    execute if score $1JP.Count Temporary matches 1.. store result storage asset:artifact DataExtension.EquipCount int 1 run scoreboard players get $1JP.Count Temporary
    function api:artifact/replace/from_id
    data modify storage asset:context Items.mainhand set from entity @s SelectedItem

# リセット
    scoreboard players reset $1JP.Count Temporary
    scoreboard players reset $1JP.ID Temporary