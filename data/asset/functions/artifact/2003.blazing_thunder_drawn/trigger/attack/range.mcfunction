#> asset:artifact/2003.blazing_thunder_drawn/trigger/attack/range
#
# 範囲攻撃処理
#
# @within function asset:artifact/2003.blazing_thunder_drawn/trigger/attack/

# パーティクル
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s as @e[type=#lib:living,type=!player,tag=!Victim,tag=!Friend,tag=!Uninterferable,tag=!Object,distance=..3] at @s run particle flame ~ ~1.5 ~ 0 0.5 0 0.01 64

# 範囲ダメージ(Victimに与えるダメージの0.6倍)
    execute store result storage api: Argument.Damage float 0.6 run scoreboard players get $RandomDamage Temporary
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
# 補正
    function api:damage/modifier
# ダメージ
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s as @e[type=#lib:living,type=!player,tag=!Victim,tag=!Friend,tag=!Uninterferable,tag=!Object,distance=..3] at @s run function api:damage/

# リセット
    function api:damage/reset