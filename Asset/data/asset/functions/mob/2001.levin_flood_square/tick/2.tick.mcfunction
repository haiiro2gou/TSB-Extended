#> asset:mob/2001.levin_flood_square/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/2001.levin_flood_square/tick/1.trigger

# 実行時間
    scoreboard players operation $Temp Temporary = @s 1JL.Tick

# 攻撃
    execute if score @s 1JL.Tick matches 0.. run scoreboard players operation $Temp Temporary %= $5 Const
    execute if score @s 1JL.Tick matches 0.. if score $Temp Temporary matches 0 at @s run function asset:mob/2001.levin_flood_square/tick/3.2.damage_and_vfx

# tick
    scoreboard players add @s 1JL.Tick 1

# リセット
    scoreboard players reset $Temp Temporary
# kill
    execute if score @s 1JL.Tick matches 70.. run kill @s