#> asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/main
#
# フルセット時のメイン処理
#
# @within function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/schedule_loop

# 光度取得
    function api:data_get/light_level
    execute store result score $1JV.Light Temporary run data get storage api: LightLevel 1

# 演出
    execute if score $1JV.Light Temporary matches 0..5 run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/particle/0-5
    execute if score $1JV.Light Temporary matches 6..10 run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/particle/6-10
    execute if score $1JV.Light Temporary matches 11..15 run function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/particle/11-15

# リセット
    scoreboard players reset $1JV.Light Temporary