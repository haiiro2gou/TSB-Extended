#> asset:artifact/2028.carrot_magica_thunder/trigger/sneak/main
#
# スニークした時のメイン処理
#
# @within function asset:artifact/2028.carrot_magica_thunder/trigger/sneak/1s

# 演出
    playsound item.elytra.flying player @a ~ ~ ~ 0.7 2

# 次を呼び出す
    data modify storage api: Argument.ID set value 2029
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
