#> asset:mob/2001.levin_flood_square/tick/3.1.damage
#
# ダメージ処理
#
# @within function asset:mob/2001.levin_flood_square/tick/3.damage_and_vfx

#> private
# @private
    #declare tag 1JL.This

# タグ付け
    execute as @e[type=#lib:living,tag=!Friend,tag=!Uninterferable,tag=!Object,distance=..5] run scoreboard players add @s 1JL.Charge 1
    execute as @e[type=#lib:living,tag=!Friend,tag=!Uninterferable,tag=!Object,distance=..5] run scoreboard players set @s 1JL.ChargeTime 200
    schedule function asset:mob/2001.levin_flood_square/schedule_loop 1t replace
    tag @s add 1JL.This

# ダメージ処理
    # 101を定義
        scoreboard players set $101 Temporary 101
    # 乱数を取得
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $101 Temporary
    # 与ダメージ
        scoreboard players add $RandomDamage Temporary 30
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "Water"
        data modify storage api: Argument.DamageType set value "Projectile"
    # ダメージ
        execute as @a if score @s UserID = @e[type=marker,tag=1JL.This,distance=..1,limit=1] 1JL.UserID run function api:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,tag=!Object,distance=..5] run function api:damage/

# リセット
    tag @s remove 1JL.This
    scoreboard players reset $101 Temporary
    scoreboard players reset $RandomDamage Temporary
    function api:damage/reset
