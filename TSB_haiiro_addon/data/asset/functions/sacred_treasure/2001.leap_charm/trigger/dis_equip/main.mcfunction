#> asset:sacred_treasure/2001.leap_charm/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/2001.leap_charm/trigger/dis_equip/

# effectの再調整
    effect clear @s jump_boost
    function asset:sacred_treasure/2001.leap_charm/trigger/give_effect

# 音
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 0.8