#> asset:sacred_treasure/2006.rainbow_priming/trigger/melee/main
#
# 近接攻撃をした時の処理
#
# @within function asset:sacred_treasure/2006.rainbow_priming/trigger/melee/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:sacred_treasure IgnoreItemUpdate set value true
    function asset:sacred_treasure/common/use/mainhand

# 攻撃した対象にダメージ
    # 数値を代入
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $81 Const
        scoreboard players add $RandomDamage Temporary 320
        execute store result storage lib: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正
        function api:damage/modifier
    # ダメージ
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/
# 対象以外の近くの敵にダメージ
    # 数値を代入
        execute store result storage lib: Argument.Damage float 0.5 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正
        function api:damage/modifier_continuation
    # ダメージ
        execute as @e[tag=Victim,distance=..6] at @s as @e[type=#lib:living,type=!player,tag=!Victim] run function api:damage/

# 自分にもダメージ
    # 数値を代入
        execute store result storage lib: Argument.Damage float 0.05 run attribute @s generic.max_health get
    # 補整しない
        data modify storage lib: Argument.FixedDamage set value true
    # ダメージ
        function api:damage/modifier_continuation
        function api:damage/

# リセット
    scoreboard players reset $RandomDamage Temporary
    function api:damage/reset