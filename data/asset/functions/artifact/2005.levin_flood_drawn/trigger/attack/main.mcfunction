#> asset:artifact/2005.levin_flood_drawn/trigger/attack/main
# @within function asset:artifact/2005.levin_flood_drawn/trigger/attack/check_condition

#> private
# @private
    #declare score_holder $1JP.Damage
    #declare score_holder $1JP.Modifier
    #declare score_holder
    #declare score_holder $201
    scoreboard players set $201 Temporary 201


# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] anchored eyes run particle dust 0.78 0.769 0.125 1 ~ ~ ~ 0.3 0.3 0.3 0 20

# 対象把握
    execute store result score $1JP.Count Temporary as @e[type=#lib:living,type=!player,tag=Victim,distance=..6,limit=1] at @s if entity @e[type=#lib:living,type=!player,tag=!Friend,tag=!Uninterferable,tag=!Object,scores={1JL.Charge=1..},distance=..4]
    execute unless score $1JP.Count Temporary matches 0.. run scoreboard players set $1JP.Count Temporary 0

# ダメージ
    # 乱数範囲
        execute store result score $1JP.Damage Temporary run function lib:random/
        scoreboard players operation $1JP.Damage Temporary %= $201 Temporary
        scoreboard players add $1JP.Damage Temporary 60
    # 範囲補正
        scoreboard players add $1JP.Count Temporary 5
        scoreboard players operation $1JP.Damage Temporary *= $1JP.Count Temporary
        execute store result storage api: Argument.Damage double 0.2 run scoreboard players get $1JP.Damage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ適用
        function api:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6,limit=1] at @s if score @s 1JL.Charge matches 1.. as @e[type=#lib:living,type=!player,tag=!Friend,tag=!Uninterferable,tag=!Object,distance=..4] run function api:damage/
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6,limit=1] at @s unless score @s 1JL.Charge matches 1.. run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $201 Temporary
    scoreboard players reset $1JP.Count Temporary
    scoreboard players reset $1JP.Damage Temporary
    execute as @e[scores={1JL.Charge=1..}] run scoreboard players remove @s 1JL.Charge 1
    execute as @e[scores={1JL.Charge=..0}] run scoreboard players reset @s 1JL.ChargeTime
    execute as @e[scores={1JL.Charge=..0}] run scoreboard players reset @s 1JL.Charge
