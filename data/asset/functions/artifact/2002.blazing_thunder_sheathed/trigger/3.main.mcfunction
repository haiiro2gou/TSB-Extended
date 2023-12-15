#> asset:artifact/2002.blazing_thunder_sheathed/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2002.blazing_thunder_sheathed/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand
    tag @s remove 1JM.InCooldown
    stopsound @a * entity.item.break

# 居合抜き
    scoreboard players set @s 1JM.IaiTime 3

# 抜刀する
    playsound block.beacon.activate player @a ~ ~ ~ 1 2
    scoreboard players set @s 1JM.ChargeTime 200
    scoreboard players set @s 1JM.CoolTime 300
    data modify storage api: Argument.ID set value 2003
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id

# ループ起動
    function asset:artifact/2002.blazing_thunder_sheathed/trigger/schedule_loop