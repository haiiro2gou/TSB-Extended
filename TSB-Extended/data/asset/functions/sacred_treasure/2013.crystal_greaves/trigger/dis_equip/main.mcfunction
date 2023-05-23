#> asset:sacred_treasure/2013.crystal_greaves/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/2013.crystal_greaves/trigger/dis_equip/

# 演出
    playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.5

# 補正解除
    execute if entity @s[tag=1JV.DualArmor] run function asset:sacred_treasure/2011.crystal_headgear/trigger/dual_armor/dual_dis_equip

# フルセット解除
    execute if entity @s[tag=1JV.Fullset] run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/fullset_dis_equip