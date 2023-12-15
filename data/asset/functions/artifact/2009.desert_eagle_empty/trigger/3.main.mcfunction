#> asset:artifact/2009.desert_eagle_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2009.desert_eagle_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    execute as @s[tag=1JT.Main] run function asset:artifact/common/use/mainhand
    execute as @s[tag=1JT.Off] run function asset:artifact/common/use/offhand

# 火薬消し
    clear @s gunpowder 2

# リロードする
    stopsound @a * entity.item.break
    playsound block.iron_trapdoor.close ambient @a ~ ~ ~ 1 0.5
    playsound entity.horse.armor master @p ~ ~ ~ 0.6 0.6

    data modify storage api: Argument.ID set value 2008
    execute if entity @s[tag=!1JT.Off] run data modify storage api: Argument.Slot set value "mainhand"
    execute if entity @s[tag=1JT.Off] run data modify storage api: Argument.Slot set value "offhand"
    function api:artifact/replace/from_id