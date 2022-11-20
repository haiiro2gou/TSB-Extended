#> asset:sacred_treasure/2013.crystal_greaves/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2013.crystal_greaves/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run particle minecraft:end_rod ~ ~1 ~ 0.3 0.3 0.3 0.3 15
    execute unless data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.5 2

# 2012があるなら補正
    execute if data storage asset:context id.all{chest:2012} run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-07DD00000004 "MaxHealthRecover" 0.15 multiply_base
    execute if data storage asset:context id.all{chest:2012} run data modify storage api: Argument set value {Amount:0.15d,UUID:[I;1,1,2013,4],Operation:"multiply_base"}
    execute if data storage asset:context id.all{chest:2012} run function api:player_modifier/mp_max/add
    execute if data storage asset:context id.all{chest:2012} run data modify storage api: Argument set value {Amount:0.05d,UUID:[I;1,1,2013,4],Operation:"multiply_base"}
    execute if data storage asset:context id.all{chest:2012} run function api:player_modifier/attack/magic/add

# 防御力 20%ダウン
    data modify storage api: Argument set value {Amount:-0.20d,UUID:[I;1,1,2013,4],Operation:"multiply_base"}
    function api:player_modifier/defense/base/add

# フルセット処理
    execute if data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/