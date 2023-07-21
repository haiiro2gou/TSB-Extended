#> asset:mob/2001.levin_flood_square/tick/3.2.damage_and_vfx
#
# ダメージとパーティクルの処理
#
# @within function asset:mob/2001.levin_flood_square/tick/2.tick

# ダメージ処理
    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..5,limit=1] run function asset:mob/2001.levin_flood_square/tick/3.1.damage

# パーティクル
    execute positioned ~ ~0.3 ~ run function asset:mob/2001.levin_flood_square/tick/3.2.vfx