#> asset:sacred_treasure/2008.desert_eagle/trigger/3.2.bullet_damage
#
# 神器のメイン処理部
#
# @within
#   function asset:sacred_treasure/2008.desert_eagle/trigger/3.1.bullet

# 着弾の演出
    playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 2

# 演出
    execute at @e[tag=1JS.LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 99

# ダメージ設定
    # 与えるダメージ = 1500
        data modify storage api: Argument.Damage set value 400.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # ダメージ
        function api:damage/modifier
        execute as @e[tag=1JS.LandingTarget] at @s run function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @e[tag=1JS.LandingTarget] remove 1JS.LandingTarget