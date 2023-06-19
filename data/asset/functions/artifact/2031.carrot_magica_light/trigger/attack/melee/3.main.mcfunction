#> asset:artifact/2031.carrot_magica_light/trigger/attack/melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2031.carrot_magica_light/trigger/attack/melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> private
# @private
    #define score_holder $RandomDamage

# 演出

# ダメージ
    # 乱数
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $16 Const
        scoreboard players add $RandomDamage Temporary 50
    # 数値を代入
        execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "None"
    # 補正
        function api:damage/modifier
    # 処理
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/
    # リセット
        function api:damage/reset

# 回復
    # 数値を代入
        execute store result storage api: Argument.Heal float 0.15 run scoreboard players get $RandomDamage Temporary
    # 補正
        function api:heal/modifier
    # 処理
        function api:heal/
    # リセット
        function api:heal/reset

# リセット
    scoreboard players reset $RandomDamage Temporary