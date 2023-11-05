#> asset:artifact/2031.carrot_magica_light/trigger/sneak/main
#
# スニークした時のメイン処理
#
# @within function asset:artifact/2031.carrot_magica_light/trigger/sneak/1s

# 演出
    playsound block.portal.ambient player @a ~ ~ ~ 0.7 2

# 次を呼び出す
    data modify storage api: Argument.ID set value 2032
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
