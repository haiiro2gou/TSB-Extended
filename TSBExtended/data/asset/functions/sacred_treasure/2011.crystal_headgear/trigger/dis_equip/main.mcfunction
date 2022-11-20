#> asset:sacred_treasure/2011.crystal_headgear/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/2011.crystal_headgear/trigger/dis_equip/

# 演出
    playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.5

# 補正解除
    data modify storage api: Argument.UUID set value [I;1,1,2011,6]
    function api:player_modifier/attack/physical/remove
    data modify storage api: Argument.UUID set value [I;1,1,2011,6]
    function api:player_modifier/attack/magic/remove

# フルセット解除
    execute if entity @s[tag=1JV.Fullset] run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/fullset_dis_equip