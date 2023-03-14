#> asset:sacred_treasure/2028.carrot_magica_thunder/trigger/sneak/main
#
# スニークした時のメイン処理
#
# @within function asset:sacred_treasure/2028.carrot_magica_thunder/trigger/sneak/1s

# 演出

# 次を呼び出す
    data modify storage api: Argument.ID set value 2029
    data modify storage api: Argument.Slot set value "mainhand"
    function api:sacred_treasure/replace/from_id
