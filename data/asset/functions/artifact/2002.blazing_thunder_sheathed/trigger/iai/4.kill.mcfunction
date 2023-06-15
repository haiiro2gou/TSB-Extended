#> asset:artifact/2002.blazing_thunder_sheathed/trigger/iai/4.kill
#
# 使い終わったマーカーの処理
#
# @within function asset:artifact/2002.blazing_thunder_sheathed/trigger/schedule_loop

tag @s add 1JM.Owner
execute as @e[type=armor_stand,tag=1JM.Rush] if score @s 1JM.UserID = @p[tag=1JM.Owner] UserID run kill @s
tag @s remove 1JM.Owner