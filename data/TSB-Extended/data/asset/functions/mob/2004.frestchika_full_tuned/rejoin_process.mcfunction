#> asset:mob/2004.frestchika_full_tuned/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# Schedule
    execute if entity @e[type=armor_stand,tag=1JO.ArmorStandDeath,limit=1] run schedule function asset:mob/2004.frestchika_full_tuned/death/schedule 1t
