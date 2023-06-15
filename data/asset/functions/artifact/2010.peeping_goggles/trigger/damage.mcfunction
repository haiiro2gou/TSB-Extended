#> asset:artifact/2010.peeping_goggles/trigger/damage
#
# 遅延自傷処理
#
# @within function
#   asset:artifact/2010.peeping_goggles/trigger/3.main
#   asset:artifact/2010.peeping_goggles/trigger/schedule_loop

# 自傷する
    execute unless score @s 1JU.CoolTime matches 70 store result storage api: Argument.Damage float 0.0120 run attribute @s generic.max_health get 100
    execute if score @s 1JU.CoolTime matches 70 store result storage api: Argument.Damage float 0.00150 run attribute @s generic.max_health get 100
    tellraw @a {"nbt":"Argument.Damage","storage":"api:"}
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは世界の深淵に呑まれた。","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    execute as @s[tag=!PlayerShouldInvulnerable] run function api:damage/

# 演出
    execute unless score @s 1JU.CoolTime matches 70 run particle minecraft:large_smoke ~ ~0.5 ~ 0 0.5 0 0.2 50 normal
    execute unless score @s 1JU.CoolTime matches 70 run playsound minecraft:entity.evoker.prepare_wololo player @a ~ ~ ~ 1 0.9

# リセット
    function api:damage/reset