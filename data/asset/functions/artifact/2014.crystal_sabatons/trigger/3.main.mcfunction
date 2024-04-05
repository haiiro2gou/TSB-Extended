#> asset:artifact/2014.crystal_sabatons/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2014.crystal_sabatons/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id{head:2011,chest:2012,legs:2013,feet:2014} run particle minecraft:end_rod ~ ~1 ~ 0.3 0.3 0.3 0.3 15
    execute unless data storage asset:context id{head:2011,chest:2012,legs:2013,feet:2014} run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.5 2

# MP回復量 +20%
    data modify storage api: Argument set value {Amount:0.20d,UUID:[I;1,1,2014,3],Operation:"multiply_base"}
    function api:modifier/mp_regen/add

# 他部位チェック
    execute if data storage asset:context id{head:2011,chest:2012,legs:2013,feet:2014} run function asset:artifact/2011.crystal_headgear/trigger/fullset/

# ループ処理
    tag @s add 1JY.Equipped
    schedule function asset:artifact/2014.crystal_sabatons/trigger/schedule_loop 1t replace
