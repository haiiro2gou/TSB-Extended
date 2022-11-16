#> asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/4.damage
#
# ダメージ処理
#
# @within function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/3.main

# 乱数取得
    execute store result score $RandomDamage Temporary run function lib:random/
    scoreboard players operation $RandomDamage Temporary %= $71 Const
    execute as @e[type=#lib:living,type=!player,tag=Victim,scores={1JQ.Burning=1..},distance=..6] run scoreboard players operation $RandomDamage Temporary *= $10 Const

# 対象に攻撃
    # ダメージ量
        execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正
        function api:damage/modifier
    # ダメージ
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/

# 与ダメージの14%を回復
    # 回復量
        execute store result storage api: Argument.Heal float 0.14 run scoreboard players get $RandomDamage Temporary
    # 補正
        function api:heal/modifier
    # 回復
        function api:heal/

# リセット
    scoreboard players reset $RandomDamage Temporary
    function api:damage/reset
    function api:heal/reset