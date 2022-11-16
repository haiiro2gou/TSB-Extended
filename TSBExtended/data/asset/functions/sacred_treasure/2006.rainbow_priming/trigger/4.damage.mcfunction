#> asset:sacred_treasure/2006.rainbow_priming/trigger/4.damage
#
# 近接攻撃をした時の処理
#
# @within function asset:sacred_treasure/2006.rainbow_priming/trigger/3.main

# 攻撃した対象にダメージ
    # 数値を代入
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $81 Const
        scoreboard players add $RandomDamage Temporary 320
        execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正
        function api:damage/modifier
    # ダメージ
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/
# 対象に効果付与
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run scoreboard players add @s 1JQ.Burning 2
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run scoreboard players set @s 1JQ.Tick 100

# 対象以外の近くの敵にダメージ
    # 数値を代入
        execute store result storage api: Argument.Damage float 0.5 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正
        function api:damage/modifier_continuation
    # ダメージ
        execute as @e[tag=Victim,distance=..6] at @s as @e[type=#lib:living,type=!player,tag=!Victim,distance=..4] run function api:damage/
# 近くの敵にも効果付与
    execute as @e[tag=Victim,distance=..6] at @s as @e[type=#lib:living,type=!player,tag=!Victim,distance=..4] run scoreboard players add @s 1JQ.Burning 1
    execute as @e[tag=Victim,distance=..6] at @s as @e[type=#lib:living,type=!player,tag=!Victim,distance=..4] run scoreboard players set @s 1JQ.Tick 100

# 自分にもダメージ
    # 数値を代入
        execute store result storage api: Argument.Damage float 0.05 run attribute @s generic.max_health get
    # 補整しない
        data modify storage api: Argument.FixedDamage set value true
    # ダメージ
        function api:damage/modifier_continuation
        function api:damage/

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run scoreboard players set @s 1JQ.Particle 10
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s run particle minecraft:lava ~ ~0.5 ~ 0 0.5 0 1 30
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s run playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 1 0

# リセット
    scoreboard players reset $RandomDamage Temporary
    function api:damage/reset