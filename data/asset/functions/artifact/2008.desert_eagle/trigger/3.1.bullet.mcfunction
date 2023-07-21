#> asset:artifact/2008.desert_eagle/trigger/3.1.bullet
#
# 再起する弾
#
# @within function
#   asset:artifact/2008.desert_eagle/trigger/*/
#   asset:artifact/2008.desert_eagle/trigger/3.1.bullet

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add 1JS.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add 1JS.Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add 1JS.LandingTarget

# 演出
    particle dust 0.161 0.161 0.161 1 ~ ~ ~ 0 0 0 0 0

# 着弾
    execute if entity @s[tag=1JS.Landing] run function asset:artifact/2008.desert_eagle/trigger/3.2.bullet_damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!1JS.Landing,distance=..80] run function asset:artifact/2008.desert_eagle/trigger/3.1.bullet

# タグを消す
    tag @s remove 1JS.Landing