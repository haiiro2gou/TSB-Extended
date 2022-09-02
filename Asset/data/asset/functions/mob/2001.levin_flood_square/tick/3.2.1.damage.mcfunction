#> asset:mob/2001.levin_flood_square/tick/3.2.1.damage
#
# ダメージ処理
#
# @within function asset:mob/2001.levin_flood_square/tick/3.2.damage_and_vfx

# ダメージ処理
    # 101を定義
        scoreboard players set $101 Temporary 101
    # 乱数を取得
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $101 Temporary
    # 与ダメージ
        scoreboard players add $RandomDamage Temporary 30
        execute store result storage lib: Argument.Damage int 1 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..5] run function lib:damage/

# リセット
    scoreboard players reset $101 Temporary
    scoreboard players reset $RandomDamage Temporary
    function lib:damage/reset