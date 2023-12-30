#> asset:artifact/2033.soul_charm/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/dis_equip

execute if data storage asset:context id{hotbar:[2033]} run function asset:artifact/2033.soul_charm/trigger/dis_equip/main