#> asset:mob/2003.frestchika_full_tuned/death/schedule
#
#
#
# @within function
#        asset:mob/2003.frestchika_full_tuned/death/2.death
#        asset:mob/2003.frestchika_full_tuned/death/schedule
#        asset:mob/2003.frestchika_full_tuned/rejoin_process

# ファンクション
    execute as @e[type=armor_stand,tag=1JN.ArmorStandDeath] at @s run function asset:mob/2003.frestchika_full_tuned/death/3.death_animation

# Schedule
    execute if entity @e[type=armor_stand,tag=1JN.ArmorStandDeath,limit=1] run schedule function asset:mob/2003.frestchika_full_tuned/death/schedule 1t