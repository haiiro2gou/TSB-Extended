#> asset:sacred_treasure/2012.crystal_chestpiece/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{chest:2012} run function asset:sacred_treasure/2012.crystal_chestpiece/trigger/dis_equip/main