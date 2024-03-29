#> asset:mob/2001.levin_flood_square/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/2001.levin_flood_square/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit","1JL.Marker"]}
# ID (int)
    data modify storage asset:mob ID set value 2001
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false

execute as @e[type=marker,tag=MobInit,distance=..0.01] run scoreboard players set @s 1JL.Tick -30
scoreboard players operation @e[type=marker,tag=MobInit,distance=..0.01] 1JL.UserID = @p[tag=this] UserID

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon