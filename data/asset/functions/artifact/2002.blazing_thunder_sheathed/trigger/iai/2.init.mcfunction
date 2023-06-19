#> asset:artifact/2002.blazing_thunder_sheathed/trigger/iai/2.init
#
# 居合抜きマーカーの初期化
#
# @within function asset:artifact/2002.blazing_thunder_sheathed/trigger/iai/1.summon

# プレイヤー向きにTP
    execute at @p[tag=1JM.Owner] run tp @s ^ ^ ^-0.01 facing entity @p[tag=1JM.Owner] feet

# Motion付与
    data modify storage lib: Argument.VectorMagnitude set value 9
    execute as @s at @s facing entity @p[tag=1JM.Owner] feet run function lib:motion/
    data remove storage lib: Argument

# リセット
    tag @s remove 1JM.RushInit