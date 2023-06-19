#> asset:artifact/2030.carrot_magica_earth/trigger/attack/melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2030.carrot_magica_earth/trigger/attack/melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出

# ダメージ
    # 範囲呼び出し
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s as @e[type=#lib:living,type=!player,tag=!Victim,distance=..4] run function asset:artifact/2030.carrot_magica_earth/trigger/attack/melee/4.range
    # 乱数
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $46 Const
        scoreboard players add $RandomDamage Temporary 150
    # 数値を代入
        execute store result storage api: Argument.Damage double 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正
        function api:damage/modifier
    # 処理
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/
    # リセット
        scoreboard players reset $RandomDamage Temporary
        function api:damage/reset