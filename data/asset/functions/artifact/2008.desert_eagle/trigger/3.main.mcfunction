#> asset:artifact/2008.desert_eagle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/2008.desert_eagle/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    execute as @s[tag=!1JS.Off] run function asset:artifact/common/use/mainhand
    execute as @s[tag=1JS.Off] run function asset:artifact/common/use/offhand
    execute unless data storage asset:context Items.mainhand.id run stopsound @a * entity.item.break

# 空の銃を渡す
    execute as @s[tag=!1JS.Off] unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 2009
    execute as @s[tag=1JS.Off] unless data storage asset:context Items.offhand.id run data modify storage api: Argument.ID set value 2009
    execute as @s[tag=!1JS.Off] unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.Slot set value "mainhand"
    execute as @s[tag=1JS.Off] unless data storage asset:context Items.offhand.id run data modify storage api: Argument.Slot set value "offhand"
    execute as @s[tag=!1JS.Off] unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id
    execute as @s[tag=1JS.Off] unless data storage asset:context Items.offhand.id run function api:artifact/replace/from_id

# 左右分岐
    execute as @s[tag=1JS.Double] run function asset:artifact/2008.desert_eagle/trigger/double/
    execute as @s[tag=1JS.Main] run function asset:artifact/2008.desert_eagle/trigger/mainhand/
    execute as @s[tag=1JS.Off] run function asset:artifact/2008.desert_eagle/trigger/offhand/

# 演出
    tp @s ~ ~ ~ ~ ~-5
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.8