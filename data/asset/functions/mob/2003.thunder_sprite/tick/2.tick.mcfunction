#> asset:mob/2003.thunder_sprite/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/2003.thunder_sprite/tick/1.trigger

# 演出
    particle block gold_block ~ ~ ~ 2 0.2 2 1 20

# プレイヤーが近くにいたら発火
    execute if entity @e[type=player,tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/2003.thunder_sprite/self_collapse

# Tick
    scoreboard players remove @s 1JN.Tick 1
    execute if score @s 1JN.Tick matches ..0 run effect give @s instant_damage 1 20 true
    execute if score @s 1JN.Tick matches ..0 run tp ~ -160 ~