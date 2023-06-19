#> asset:artifact/2004.levin_flood_sheathed/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2004.levin_flood_sheathed/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand
    tag @s remove 1JO.InCooldown

# 抜刀処理
    playsound ambient.underwater.exit player @s ~ ~ ~ 0.7 0.7
    playsound entity.player.swim player @s ~ ~ ~ 0.5 0.7
    data modify storage api: Argument.ID set value 2005
    function api:artifact/give/from_id

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2001
    function api:mob/summon

# ループ起動
    schedule function asset:artifact/2004.levin_flood_sheathed/trigger/schedule_loop 1t replace

# リセット
    scoreboard players set @s 1JO.CoolTime 400