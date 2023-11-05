#> asset:artifact/2032.carrot_magica_dark/trigger/sneak/main
#
# スニークした時のメイン処理
#
# @within function asset:artifact/2032.carrot_magica_dark/trigger/sneak/1s

# 演出
    playsound item.firecharge.use player @a ~ ~ ~ 1 1.4

# 次を呼び出す
    data modify storage api: Argument.ID set value 2026
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
