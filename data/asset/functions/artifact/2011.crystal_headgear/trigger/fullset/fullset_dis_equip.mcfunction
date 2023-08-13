#> asset:artifact/2011.crystal_headgear/trigger/fullset/fullset_dis_equip
#
# フルセット効果を消すよ
#
# @within function
#   asset:artifact/2011.crystal_headgear/trigger/dis_equip/main
#   asset:artifact/2012.crystal_chestpiece/trigger/dis_equip/main
#   asset:artifact/2013.crystal_greaves/trigger/dis_equip/main
#   asset:artifact/2014.crystal_sabatons/trigger/dis_equip/main

# 演出
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1.5

# 最大MP
    data modify storage api: Argument.UUID set value [I;1,1,2011,0]
    function api:modifier/max_mp/remove

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,2011,0]
    function api:modifier/mp_regen/remove

# リセット
    tag @s remove 1JV.Fullset
    scoreboard players reset @s 1JV.Tick