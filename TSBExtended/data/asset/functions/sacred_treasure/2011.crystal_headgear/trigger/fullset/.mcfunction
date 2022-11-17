#> asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/
#
# 全て装備したときの効果
#
# @within function
#   asset:sacred_treasure/2011.crystal_headgear/trigger/3.main
#   asset:sacred_treasure/2012.crystal_chestpiece/trigger/3.main
#   asset:sacred_treasure/2013.crystal_greaves/trigger/3.main
#   asset:sacred_treasure/2014.crystal_sabatons/trigger/3.main

# 演出


# MP最大値+70
    data modify storage api: Argument.UUID set value [I;1,1,2011,0]
    data modify storage api: Argument.Amount set value 70
    data modify storage api: Argument.Operation set value "add"
    function api:player_modifier/mp_max/add

# MP回復量+8%
    data modify storage api: Argument.UUID set value [I;1,1,2011,0]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/mp_regen/add

# フルセット用Tagを付与
    tag @s add 1JV.Fullset

# スケジュールループ開始
    # schedule function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/loop 1t replace