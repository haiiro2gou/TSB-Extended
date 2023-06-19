#> asset:artifact/2007.rainbow_priming_drawn/trigger/4.damage
#
# ダメージ処理
#
# @within function asset:artifact/2007.rainbow_priming_drawn/trigger/3.main

# 乱数取得
    execute store result score $RandomDamage Temporary run function lib:random/
    scoreboard players operation $RandomDamage Temporary %= $71 Const
    execute as @e[type=#lib:living,type=!player,tag=Victim,scores={1JQ.Burning=2..},distance=..6] run scoreboard players operation $RandomDamage Temporary *= $10 Const

# 対象に攻撃
    # ダメージ = ~700
        execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正
        function api:damage/modifier
    # ダメージ
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/

# 与ダメージの3%を回復 (~21)
    # 回復量
        execute store result storage api: Argument.Heal float 0.03 run scoreboard players get $RandomDamage Temporary
    # 補正
        function api:heal/modifier
    # 回復
        function api:heal/

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,scores={1JQ.Burning=1..},distance=..6] at @s run playsound minecraft:entity.generic.burn player @a ~ ~ ~ 1 0
    execute as @e[type=#lib:living,type=!player,tag=Victim,scores={1JQ.Burning=1..},distance=..6] at @s run particle minecraft:cloud ~ ~1 ~ 1 1 1 0.1 30 normal
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] unless score @s 1JQ.Burning matches 1.. at @s run playsound minecraft:entity.generic.splash player @a ~ ~ ~ 0.5 1.2
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] unless score @s 1JQ.Burning matches 1.. at @s run particle minecraft:falling_water ~ ~1 ~ 0.5 0.5 0.5 1 30 normal

# リセット
    scoreboard players reset $RandomDamage Temporary
    function api:damage/reset
    function api:heal/reset
    execute as @e[type=#lib:living,type=!player,tag=Victim,scores={1JQ.Burning=2..},distance=..6] run scoreboard players remove @s 1JQ.Burning 2