#> asset:mob/2002.thunder_crowder/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/2002.thunder_crowder/tick/1.trigger

#> private
# @private
    #declare score_holder $1JM.Count

# 演出

# Tick
    scoreboard players add @s 1JM.Tick 1
    scoreboard players operation @s 1JM.Tick %= $20 Const

# スプライト数チェック
    execute store result score $1JM.Count Temporary if entity @e[type=vex,tag=1JN.Sprite,distance=..10]

# プレイヤーが近くにいて、スプライトが少なければ召喚
    execute if score @s 1JM.Tick matches 0 if score $1JM.Count Temporary matches ..10 if entity @e[type=player,tag=!PlayerShouldInvulnerable,distance=..6] run function asset:mob/2002.thunder_crowder/tick/summon_sprite

# 火の玉ストレート
    execute as @e[type=small_fireball,distance=..2] at @s run function asset:mob/2002.thunder_crowder/tick/summon_sprite
    execute as @e[type=small_fireball,distance=..2] run kill @s

# リセット
    scoreboard players reset $1JM.Count Temporary