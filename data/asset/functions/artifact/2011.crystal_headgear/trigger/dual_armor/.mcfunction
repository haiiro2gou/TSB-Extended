#> asset:artifact/2011.crystal_headgear/trigger/dual_armor/
#
# 部位数チェック
#
# @within function
#   asset:artifact/2012.crystal_chestpiece/trigger/3.main
#   asset:artifact/2013.crystal_greaves/trigger/3.main

# 胴脚共存
    execute if data storage asset:context id.all{chest:2012,legs:2013} run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-07DC00000000 "MaxHealthRecover" 0.15 multiply_base
    execute if data storage asset:context id.all{chest:2012,legs:2013} run data modify storage api: Argument set value {Amount:0.15d,UUID:[I;1,1,2012,0],Operation:"multiply_base"}
    execute if data storage asset:context id.all{chest:2012,legs:2013} run function api:modifier/mp_max/add
    execute if data storage asset:context id.all{chest:2012,legs:2013} run data modify storage api: Argument set value {Amount:0.05d,UUID:[I;1,1,2012,0],Operation:"multiply_base"}
    execute if data storage asset:context id.all{chest:2012,legs:2013} run function api:modifier/attack/magic/add

# tag付与
    tag @s add 1JV.DualArmor