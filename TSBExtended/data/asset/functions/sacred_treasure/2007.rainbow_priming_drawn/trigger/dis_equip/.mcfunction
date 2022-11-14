#> asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{mainhand:2007} run function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/dis_equip/main