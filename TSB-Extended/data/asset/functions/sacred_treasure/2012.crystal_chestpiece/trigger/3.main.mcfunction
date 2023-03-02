#> asset:sacred_treasure/2012.crystal_chestpiece/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2012.crystal_chestpiece/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run particle minecraft:end_rod ~ ~1 ~ 0.3 0.3 0.3 0.3 15
    execute unless data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.5 2

# 最大体力 -25%
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-07DC00000005 "MaxHealthDown" -0.25 multiply_base

# 最大MP -25%
    data modify storage api: Argument set value {Amount:-0.25d,UUID:[I;1,1,2012,5],Operation:"multiply_base"}
    function api:modifier/mp_max/add

# 魔法攻撃力 +10%
    data modify storage api: Argument set value {Amount:0.10d,UUID:[I;1,1,2012,5],Operation:"multiply_base"}
    function api:modifier/attack/magic/add

# 2013があるなら処理起動
    execute if data storage asset:context id.all{legs:2013} run function asset:sacred_treasure/2013.crystal_greaves/trigger/3.main

# フルセット処理
    execute if data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/