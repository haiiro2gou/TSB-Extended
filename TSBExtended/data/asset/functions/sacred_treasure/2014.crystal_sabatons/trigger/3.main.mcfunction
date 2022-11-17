#> asset:sacred_treasure/2014.crystal_sabatons/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2014.crystal_sabatons/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/feet

# ここから先は神器側の効果の処理を書く

# フルセット処理
    execute if data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/