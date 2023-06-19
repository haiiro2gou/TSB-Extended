#> asset:artifact/2011.crystal_headgear/trigger/dual_armor/dual_dis_equip
#
# 胴脚補正解除
#
# @within function
#   asset:artifact/2012.crystal_chestpiece/trigger/dis_equip/main
#   asset:artifact/2013.crystal_greaves/trigger/dis_equip/main

# 補正削除
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-07DC00000000
    data modify storage api: Argument.UUID set value [I;1,1,2012,0]
    function api:modifier/mp_max/remove
    data modify storage api: Argument.UUID set value [I;1,1,2012,0]
    function api:modifier/attack/magic/remove

# tag削除
    tag @s remove 1JV.DualArmor