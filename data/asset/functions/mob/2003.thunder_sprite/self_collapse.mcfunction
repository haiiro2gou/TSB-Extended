#> asset:mob/2003.thunder_sprite/self_collapse
#
# 自己崩壊して雷をばらまく
#
# @within function
#   asset:mob/2003.thunder_sprite/tick/2.tick

# 演出
    summon lightning_bolt ~ ~ ~
    summon lightning_bolt ~ ~ ~
    summon lightning_bolt ~ ~ ~
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 24f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '{"translate":"%1$sは%2$sによって感電した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate":"%2$sの存在は%1$sにとって青天の霹靂であった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @e[type=player,tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/

# リセット
    function api:damage/reset

# 自滅
    effect give @s instant_damage 1 20 true
    tp ~ -160 ~
