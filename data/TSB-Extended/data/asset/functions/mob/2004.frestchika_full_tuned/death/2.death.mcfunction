#> asset:mob/2004.frestchika_full_tuned/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/2004.frestchika_full_tuned/death/1.trigger

# 死亡アニメーションをするためのアマスタを召喚する
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["1JO.ArmorStandDeath","1JO.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[15f,0f,-15f],RightArm:[15f,0f,15f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20144}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20143}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20147}}]}
# アマスタに位置をあわせる
    execute at @e[type=armor_stand,tag=1JO.ArmorStand,distance=..3,sort=nearest,limit=1] run tp @e[type=armor_stand,tag=1JO.ArmorStandThis,distance=..3] @s
# タグを消す
    tag @e[type=armor_stand,tag=1JO.ArmorStandThis] remove 1JO.ArmorStandThis

# もともといるアマスタには死んでもらう(複数召喚されてる場合、もし巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=1JO.ArmorStand]

# ボスドロ
    data modify storage api: Argument.ID set value 613
    data modify storage api: Argument.Important set value true
    function api:sacred_treasure/spawn/from_id

# ボスドロ
    data modify storage api: Argument.ID set value 948
    data modify storage api: Argument.Important set value true
    function api:sacred_treasure/spawn/from_id

# スケジュールループを開始する
    schedule function asset:mob/2004.frestchika_full_tuned/death/schedule 1t