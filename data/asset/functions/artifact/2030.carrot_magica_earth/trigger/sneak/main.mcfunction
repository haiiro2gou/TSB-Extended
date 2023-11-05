#> asset:artifact/2030.carrot_magica_earth/trigger/sneak/main
#
# スニークした時のメイン処理
#
# @within function asset:artifact/2030.carrot_magica_earth/trigger/sneak/1s

# 演出
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 0.7 2

# 次を呼び出す
    data modify storage api: Argument.ID set value 2031
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
