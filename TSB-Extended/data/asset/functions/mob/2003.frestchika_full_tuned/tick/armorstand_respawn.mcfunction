#> asset:mob/2003.frestchika_full_tuned/tick/armorstand_respawn
#
#
#
# @within function asset:mob/2003.frestchika_full_tuned/tick/2.tick

# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=1JN.ArmorStand] at @s unless entity @e[type=wither_skeleton,tag=1JN.Angel,distance=..0.1] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["1JN.ArmorStand","1JN.ArmorStandThis","Object","Uninterferable"],Pose:{LeftArm:[15f,0f,-15f],RightArm:[15f,0f,15f]},HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20144}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20143}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20147}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=1JN.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=1JN.ArmorStandThis,distance=..0.01] remove 1JN.ArmorStandThis
# スコアも一応戻す
    scoreboard players set @s 1JN.Tick -2
# ヒートをもどす
    tag @s remove 1JN.SkillOverHeat
    scoreboard players set @s 1JN.Heat 0

# スキル発動中に移動した場合困るので消す
    function asset:mob/2003.frestchika_full_tuned/tick/skill_tag_remove

# 強制的にテレポする
    execute at @s run function asset:mob/2003.frestchika_full_tuned/tick/move/spread