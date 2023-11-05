#> asset:artifact/2026.carrot_magica_fire/trigger/sneak/main
#
# スニークした時のメイン処理
#
# @within function asset:artifact/2026.carrot_magica_fire/trigger/sneak/1s

# 演出
    playsound entity.player.swim player @a ~ ~ ~ 0.7 2

# 次を呼び出す
    data modify storage api: Argument.ID set value 2027
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
