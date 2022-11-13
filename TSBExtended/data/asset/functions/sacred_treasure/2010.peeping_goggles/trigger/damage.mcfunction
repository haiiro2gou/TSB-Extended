#> asset:sacred_treasure/2010.peeping_goggles/trigger/damage
#
# 遅延自傷処理
#
# @within function
#   asset:sacred_treasure/2010.peeping_goggles/trigger/3.main
#   asset:sacred_treasure/2010.peeping_goggles/trigger/schedule_loop

# 自傷する
    function api:data_get/health
    execute unless score @s 1JU.CoolTime matches 70 store result storage lib: Argument.Damage float 1.20 run data get storage api: Health
    execute if score @s 1JU.CoolTime matches 70 store result storage lib: Argument.Damage float 0.15 run data get storage api: Health
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value true
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは世界の深淵に呑まれた。","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    function api:damage/

# 演出
    execute unless score @s 1JU.CoolTime matches 70 run particle minecraft:large_smoke ~ ~0.5 ~ 0 0.5 0 0.2 50 normal
    execute unless score @s 1JU.CoolTime matches 70 run playsound minecraft:entity.evoker.prepare_wololo player @a ~ ~ ~ 1 0.9

# リセット
    function api:damage/reset