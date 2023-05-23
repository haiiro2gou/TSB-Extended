#> asset:sacred_treasure/2012.crystal_chestpiece/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/2012.crystal_chestpiece/trigger/dis_equip/

# 演出
    playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.5

# 2012補正解除
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-07DC00000005
    data modify storage api: Argument.UUID set value [I;1,1,2012,5]
    function api:modifier/mp_max/remove
    data modify storage api: Argument.UUID set value [I;1,1,2012,5]
    function api:modifier/attack/magic/remove

# 胴脚補正解除
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-07DC00000000
    data modify storage api: Argument.UUID set value [I;1,1,2012,0]
    function api:modifier/mp_max/remove
    data modify storage api: Argument.UUID set value [I;1,1,2012,0]
    function api:modifier/attack/magic/remove

# フルセット解除
    execute if entity @s[tag=1JV.Fullset] run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/fullset_dis_equip