#> asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/melee/
#
# 近接攻撃をした時該当するidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/attack/melee

execute if data storage asset:context id{mainhand:2007} run tag @s add 1JR.Melee
execute if data storage asset:context id{mainhand:2007} run function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/melee/main