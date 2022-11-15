#> asset:sacred_treasure/2006.rainbow_priming/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2006.rainbow_priming/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/mainhand

# 神器切り替え
    data modify storage api: Argument.ID set value 2007
    data modify storage api: Argument.Slot set value 1
    function api:sacred_treasure/give/from_id