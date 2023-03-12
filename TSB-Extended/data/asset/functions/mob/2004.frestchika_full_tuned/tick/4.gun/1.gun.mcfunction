#> asset:mob/2004.frestchika_full_tuned/tick/4.gun/1.gun
#
#
#
# @within function asset:mob/2004.frestchika_full_tuned/tick/4.skill_active

# 最初に実行
    execute if score @s 1JO.Tick matches 0 as @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] run function asset:mob/2004.frestchika_full_tuned/tick/4.gun/2.first_tick

# 発砲
    execute if score @s 1JO.Tick matches 150..300 run function asset:mob/2004.frestchika_full_tuned/tick/4.gun/3.ready

# 向き転換
    execute if score @s 1JO.Tick matches 300 facing entity @p feet run function asset:mob/2004.frestchika_full_tuned/tick/move/teleport

# 発砲
    execute if score @s 1JO.Tick matches 450..600 run function asset:mob/2004.frestchika_full_tuned/tick/4.gun/3.ready

# # リセット
    execute if score @s 1JO.Tick matches 800 at @s run function asset:mob/2004.frestchika_full_tuned/tick/reset