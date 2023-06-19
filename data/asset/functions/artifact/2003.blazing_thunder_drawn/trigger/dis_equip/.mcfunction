#> asset:artifact/2003.blazing_thunder_drawn/trigger/dis_equip/
#
# 右手から離したときの処理
#
# @within tag/function asset:artifact/dis_equip

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/main.mcfを実行する
    tag @s add 1JN.DisEquip
    execute if data storage asset:context id{mainhand:2003} run schedule function asset:artifact/2003.blazing_thunder_drawn/trigger/dis_equip/schedule 1t replace