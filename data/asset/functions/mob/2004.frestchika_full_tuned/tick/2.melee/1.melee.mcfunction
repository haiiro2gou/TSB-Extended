#> asset:mob/2004.frestchika_full_tuned/tick/2.melee/1.melee
#
#
#
# @within function asset:mob/2004.frestchika_full_tuned/tick/4.skill_active

# 最初に実行するの
    execute if score @s 1JO.Tick matches 0 as @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/2.first_tick

# 突進をしてあたったらスコアを飛ばす
    execute if score @s 1JO.Tick matches 100..130 run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/3.tackle
    execute if score @s 1JO.Tick matches 100..130 at @s run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/3.tackle
    execute if score @s 1JO.Tick matches 100..130 at @s run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/3.tackle
# 演出
    execute if score @s 1JO.Tick matches 100 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.7
# 向き転換
    execute if score @s 1JO.Tick matches 150 facing entity @p feet run function asset:mob/2004.frestchika_full_tuned/tick/move/teleport
# 再突進
    execute if score @s 1JO.Tick matches 200..230 at @s run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/3.tackle
    execute if score @s 1JO.Tick matches 200..230 at @s run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/3.tackle
    execute if score @s 1JO.Tick matches 200..230 at @s run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/3.tackle
# 演出
    execute if score @s 1JO.Tick matches 200 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.7
# 突進で見つからなかった場合、スコアを飛ばす
    execute if score @s 1JO.Tick matches 410 run scoreboard players set @s 1JO.Tick 20000

# 突進でプレイヤーが見つかってスコアが飛んだ先
    execute if score @s 1JO.Tick matches 10010 positioned ^ ^ ^1 run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/4.slash
    execute if score @s 1JO.Tick matches 10010 run item replace entity @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20147}
    execute if score @s 1JO.Tick matches 10010 run data modify entity @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [197f,197f,296f]

    execute if score @s 1JO.Tick matches 10040 facing entity @p feet run function asset:mob/2004.frestchika_full_tuned/tick/move/teleport
    execute if score @s 1JO.Tick matches 10040 run data modify entity @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [201f,0f,314f]
    execute if score @s 1JO.Tick matches 10060 run data modify entity @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [332f,0f,302f]
    execute if score @s 1JO.Tick matches 10060 positioned ^ ^ ^1 run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/4.slash
    execute if score @s 1JO.Tick matches 10060 at @s rotated ~-40 ~ run function asset:mob/2004.frestchika_full_tuned/tick/move/teleport

    execute if score @s 1JO.Tick matches 10090 run data modify entity @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [34f,163f,302f]
    execute if score @s 1JO.Tick matches 10120 run data modify entity @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [56f,0f,74f]
    execute if score @s 1JO.Tick matches 10120 at @s rotated ~40 ~ run function asset:mob/2004.frestchika_full_tuned/tick/move/teleport
    execute if score @s 1JO.Tick matches 10120 at @s positioned ^ ^ ^1 run function asset:mob/2004.frestchika_full_tuned/tick/2.melee/4.slash

    execute if score @s 1JO.Tick matches 10200 run scoreboard players set @s 1JO.Tick 20000
# 共通リセット
    execute if score @s 1JO.Tick matches 20000 at @s run function asset:mob/2004.frestchika_full_tuned/tick/reset