#> asset:artifact/2029.carrot_magica_air/trigger/sneak/main
#
# スニークした時のメイン処理
#
# @within function asset:artifact/2029.carrot_magica_air/trigger/sneak/1s

# 演出
    playsound block.grass.break player @a ~ ~ ~ 0.6 1.3
    playsound block.grass.break player @a ~ ~ ~ 0.7 0.5

# 次を呼び出す
    data modify storage api: Argument.ID set value 2030
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id
