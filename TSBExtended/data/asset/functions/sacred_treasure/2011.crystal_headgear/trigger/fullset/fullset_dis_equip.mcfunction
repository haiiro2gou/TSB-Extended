#> asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/fullset_dis_equip
#
# フルセット効果を消すよ
#
# @within function
#   asset:sacred_treasure/2011.crystal_headgear/trigger/dis_equip/main
#   asset:sacred_treasure/2012.crystal_chestpiece/trigger/dis_equip/main
#   asset:sacred_treasure/2013.crystal_greaves/trigger/dis_equip/main
#   asset:sacred_treasure/2014.crystal_sabatons/trigger/dis_equip/main

# 演出

# 最大MP
    data modify storage api: Argument.UUID set value [I;1,1,2011,0]
    function api:player_modifier/mp_max/remove

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,2011,0]
    function api:player_modifier/mp_regen/remove

# リセット
    tag @s remove 1JV.Fullset