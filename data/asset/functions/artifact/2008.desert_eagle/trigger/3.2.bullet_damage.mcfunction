#> asset:artifact/2008.desert_eagle/trigger/3.2.bullet_damage
#
# 神器のメイン処理部
#
# @within
#   function asset:artifact/2008.desert_eagle/trigger/3.1.bullet

#> private
# @private
    #declare score_holder $401
    #declare score_holder $RandomDamage
    scoreboard players set $401 Temporary 401

# 着弾の演出
    playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 2

# 演出
    execute at @e[tag=1JS.LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 99

# ダメージ設定
    # 乱数取得
        execute store result score $RandomDamage Temporary run function lib:random/
        scoreboard players operation $RandomDamage Temporary %= $401 Temporary
    # 与えるダメージ = 400~800
        scoreboard players add $RandomDamage Temporary 400
        execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.DamageType set value "Projectile"
    # ダメージ
        function api:damage/modifier
        execute as @e[tag=1JS.LandingTarget] at @s run function api:damage/
# リセット
    function api:damage/reset
    scoreboard players reset $401 Temporary
    scoreboard players reset $RandomDamage Temporary

# 着弾タグを消す
    tag @e[tag=1JS.LandingTarget] remove 1JS.LandingTarget
