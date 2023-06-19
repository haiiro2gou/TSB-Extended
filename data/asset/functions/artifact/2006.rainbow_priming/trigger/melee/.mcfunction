#> asset:artifact/2006.rainbow_priming/trigger/melee/
#
# 近接攻撃をした時該当するidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/attack/melee

execute if data storage asset:context id{mainhand:2006} run tag @s add 1JQ.Melee
execute if data storage asset:context id{mainhand:2006} run function asset:artifact/2006.rainbow_priming/trigger/melee/main