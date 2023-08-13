#> asset:artifact/2011.crystal_headgear/trigger/fullset/
#
# 全て装備したときの効果
#
# @within function
#   asset:artifact/2011.crystal_headgear/trigger/3.main
#   asset:artifact/2012.crystal_chestpiece/trigger/3.main
#   asset:artifact/2013.crystal_greaves/trigger/3.main
#   asset:artifact/2014.crystal_sabatons/trigger/3.main

# 演出
    playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 0.5 1.8
    particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 1 100 normal

# 光度取得
    function api:data_get/light_level
    execute store result score $1JV.Light Temporary run data get storage api: LightLevel 1

# 最大MP -15% ~ +30%
    scoreboard players remove $1JV.Light Temporary 5
    data modify storage api: Argument set value {Amount:-1,UUID:[I;1,1,2011,0],Operation:"multiply_base"}
    execute store result storage api: Argument.Amount double 0.03 run scoreboard players get $1JV.Light Temporary
    function api:modifier/max_mp/add

# MP回復量 -100% ~ +50%
    scoreboard players remove $1JV.Light Temporary 5
    data modify storage api: Argument set value {Amount:-1,UUID:[I;1,1,2011,0],Operation:"multiply_base"}
    execute store result storage api: Argument.Amount double 0.10 run scoreboard players get $1JV.Light Temporary
    function api:modifier/mp_regen/add

# フルセット用Tagを付与
    tag @s add 1JV.Fullset
    scoreboard players set @s 1JV.Tick 0

# スケジュールループ開始
    schedule function asset:artifact/2011.crystal_headgear/trigger/fullset/schedule_loop 1t replace