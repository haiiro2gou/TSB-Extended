#> asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/iai/3.teleport
#
# プレイヤーをマーカーにTPさせる
#
# @within function asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/iai/

execute as @e[tag=1JM.Rush] at @s if score @s 1JM.UserID = @p[tag=1JM.Owner] UserID run tp @p[tag=1JM.Owner] ~ ~ ~
