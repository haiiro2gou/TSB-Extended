#> asset:mob/2001.levin_flood_square/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/2001.levin_flood_square/tick/1.trigger

# 攻撃
    scoreboard players operation $Temp Temporary = @s 1JL.Tick
    execute if score @s 1JL.Tick matches 0.. run scoreboard players operation $Temp Temporary %= $5 Const
    execute if score @s 1JL.Tick matches 0.. if score $Temp Temporary matches 0 at @s run function asset:mob/2001.levin_flood_square/tick/3.damage_and_vfx

# 演出
    scoreboard players operation $Temp Temporary = @s 1JL.Tick
    execute if score @s 1JL.Tick matches 0.. run scoreboard players operation $Temp Temporary %= $2 Const
    execute if score @s 1JL.Tick matches 0.. if score $Temp Temporary matches 0 at @s run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.5 1.1 0
    execute if score @s 1JL.Tick matches 0.. if score $Temp Temporary matches 0 at @s run particle dust 0.922 0.91 0.302 1 ~ ~ ~ 2 2 2 0.5 20

# tick
    scoreboard players add @s 1JL.Tick 1

# リセット
    scoreboard players reset $Temp Temporary
# kill
    execute if score @s 1JL.Tick matches 70.. run kill @s