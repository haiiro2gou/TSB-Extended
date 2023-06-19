#> asset:artifact/2002.blazing_thunder_sheathed/trigger/iai/1.summon
#
# 居合抜き用のマーカー召喚
#
# @within function asset:artifact/2002.blazing_thunder_sheathed/trigger/iai/

# 召喚
    summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["Friend","Projectile","1JM.Rush","1JM.RushInit"]}
    scoreboard players operation @e[type=armor_stand,tag=1JM.RushInit] 1JM.UserID = @s UserID
    tag @s add 1JM.Owner
    execute as @e[type=armor_stand,tag=1JM.RushInit,sort=nearest,limit=1] at @s run function asset:artifact/2002.blazing_thunder_sheathed/trigger/iai/2.init
    tag @s remove 1JM.Owner