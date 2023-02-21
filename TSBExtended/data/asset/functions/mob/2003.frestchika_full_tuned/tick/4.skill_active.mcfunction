#> asset:mob/2003.frestchika_full_tuned/tick/4.skill_active
#
#
#
# @within function asset:mob/2003.frestchika_full_tuned/tick/2.tick

# 雷
    execute if entity @s[tag=1JN.SkillThunder] run function asset:mob/2003.frestchika_full_tuned/tick/1.thunder/1.thunder
# 剣
    execute if entity @s[tag=1JN.SkillMelee] run function asset:mob/2003.frestchika_full_tuned/tick/2.melee/1.melee
# 剣2
    execute if entity @s[tag=1JN.SkillMelee2] run function asset:mob/2003.frestchika_full_tuned/tick/3.melee2/1.melee2
# 銃
    execute if entity @s[tag=1JN.SkillGun] run function asset:mob/2003.frestchika_full_tuned/tick/4.gun/1.gun


# オーバーヒート
    execute if entity @s[tag=1JN.SkillOverHeat] run function asset:mob/2003.frestchika_full_tuned/tick/999.overheat/1.overheat