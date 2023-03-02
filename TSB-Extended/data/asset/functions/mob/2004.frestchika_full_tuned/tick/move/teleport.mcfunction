#> asset:mob/2004.frestchika_full_tuned/tick/move/teleport
#
# 彼女をテレポートする時はコレを使う。アマスタ死ぬからね
#
# @within function asset:mob/2004.frestchika_full_tuned/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=1JO.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 1JO.ArmorStandThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=armor_stand,tag=1JO.ArmorStandThis] @s
# タグを消す
    tag @e[type=armor_stand,tag=1JO.ArmorStandThis,distance=..0.01] remove 1JO.ArmorStandThis
