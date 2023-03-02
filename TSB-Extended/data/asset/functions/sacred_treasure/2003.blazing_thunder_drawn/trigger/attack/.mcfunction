#> asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/attack/
#
# 攻撃処理
#
# @within function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/3.main

# 音
    playsound entity.generic.explode player @a ~ ~ ~ 0.5 0.7
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0
# パーティクル
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s run particle lava ~ ~2 ~ 0 1 0 0.01 50

# 201を定義
    scoreboard players set $201 Temporary 201

# ダメージ
    # 乱数
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $201 Temporary
        scoreboard players add $RandomDamage Temporary 400
    # 範囲化
        execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..4] run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/attack/range
    # 数値を代入
        execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正
        function api:damage/modifier
    # ダメージを与える
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/

# リセット
    scoreboard players reset $201 Temporary
    scoreboard players reset $RandomDamage Temporary
    function api:damage/reset