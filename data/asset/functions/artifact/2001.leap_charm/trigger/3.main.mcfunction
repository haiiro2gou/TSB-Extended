#> asset:artifact/2001.leap_charm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2001.leap_charm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# 装備時効果
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 1 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 1
    particle crit ~ ~1 ~ 0 0 0 0.5 10
    effect clear @s jump_boost
    function asset:artifact/2001.leap_charm/trigger/give_effect