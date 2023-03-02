#> asset:mob/2004.frestchika_full_tuned/tick/2.melee/3.tackle
#
#
#
# @within function asset:mob/2004.frestchika_full_tuned/tick/2.melee/1.melee

# 自身を前進させる
    execute positioned ^ ^ ^1 run function asset:mob/2004.frestchika_full_tuned/tick/move/teleport

# 前進した先にプレイヤーがいたらスコアを飛ばす
    execute at @s if entity @p[distance=..1] run scoreboard players set @s 1JO.Tick 1000