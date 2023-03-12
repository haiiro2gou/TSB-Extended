#> asset:mob/2004.frestchika_full_tuned/tick/1.thunder/1.thunder
#
#
#
# @within function asset:mob/2004.frestchika_full_tuned/tick/4.skill_active

# 最初に実行するの
    execute if score @s 1JO.Tick matches 0 run function asset:mob/2004.frestchika_full_tuned/tick/1.thunder/2.first_tick

# 腕を変える
    execute if score @s 1JO.Tick matches 100 if entity @s run data modify entity @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [265f,340f,0f]

# 雷召喚
    execute if score @s 1JO.Tick matches 150 rotated ~ 0 positioned ^0 ^ ^-5 run function asset:mob/2004.frestchika_full_tuned/tick/1.thunder/3.thunder_summon
    execute if score @s 1JO.Tick matches 170 rotated ~ 0 positioned ^4.33013 ^ ^-2.5 run function asset:mob/2004.frestchika_full_tuned/tick/1.thunder/3.thunder_summon
    execute if score @s 1JO.Tick matches 190 rotated ~ 0 positioned ^4.33013 ^ ^2.5 run function asset:mob/2004.frestchika_full_tuned/tick/1.thunder/3.thunder_summon
    execute if score @s 1JO.Tick matches 210 rotated ~ 0 positioned ^0 ^ ^5 run function asset:mob/2004.frestchika_full_tuned/tick/1.thunder/3.thunder_summon
    execute if score @s 1JO.Tick matches 230 rotated ~ 0 positioned ^-4.33013 ^ ^2.5 run function asset:mob/2004.frestchika_full_tuned/tick/1.thunder/3.thunder_summon
    execute if score @s 1JO.Tick matches 250 rotated ~ 0 positioned ^-4.33013 ^ ^-2.5 run function asset:mob/2004.frestchika_full_tuned/tick/1.thunder/3.thunder_summon

# リセット
    execute if score @s 1JO.Tick matches 300 run function asset:mob/2004.frestchika_full_tuned/tick/reset