#> asset:artifact/2011.crystal_headgear/trigger/fullset/10t_modifier
#
# 4tick毎のmodifier
#
# @within function asset:artifact/2011.crystal_headgear/trigger/fullset/schedule_loop

# リセット
    data modify storage api: Argument.UUID set value [I;1,1,2011,0]
    function api:modifier/max_mp/remove
    data modify storage api: Argument.UUID set value [I;1,1,2011,0]
    function api:modifier/mp_regen/remove

# 光度取得
    function api:data_get/light_level
    execute store result score $1JV.Light Temporary run data get storage api: LightLevel 1

# 最大MP -60% ~ +30%
    scoreboard players remove $1JV.Light Temporary 10
    data modify storage api: Argument set value {Amount:-1,UUID:[I;1,1,2011,0],Operation:"multiply"}
    execute store result storage api: Argument.Amount double 0.06 run scoreboard players get $1JV.Light Temporary
    function api:modifier/max_mp/add

# MP回復量 -75% ~ +150%
    scoreboard players add $1JV.Light Temporary 5
    data modify storage api: Argument set value {Amount:-1,UUID:[I;1,1,2011,0],Operation:"multiply_base"}
    execute store result storage api: Argument.Amount double 0.10 run scoreboard players get $1JV.Light Temporary
    function api:modifier/mp_regen/add

# リセット
    scoreboard players reset $1JV.Light Temporary
