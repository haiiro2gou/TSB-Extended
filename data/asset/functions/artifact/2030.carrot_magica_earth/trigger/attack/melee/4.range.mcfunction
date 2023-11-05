#> asset:artifact/2030.carrot_magica_earth/trigger/attack/melee/4.range
#
# 範囲攻撃処理
#
# @within function asset:artifact/2030.carrot_magica_earth/trigger/attack/melee/3.main

# ダメージ
    # 乱数
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $46 Const
        scoreboard players add $RandomDamage Temporary 150
    # 数値を代入
        execute store result storage api: Argument.Damage double 0.7 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "None"
    # 補正
        function api:damage/modifier
    # 処理
        function api:damage/
    # リセット
        scoreboard players reset $RandomDamage Temporary
        function api:damage/reset