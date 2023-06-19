#> asset:artifact/2027.carrot_magica_water/trigger/sneak/main
#
# スニークした時のメイン処理
#
# @within function asset:artifact/2027.carrot_magica_water/trigger/sneak/1s

# 演出
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.6 2

# 次を呼び出す
    data modify storage api: Argument.ID set value 2028
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
