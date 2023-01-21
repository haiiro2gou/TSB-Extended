#> asset:sacred_treasure/2024.multitool_shear/trigger/passive/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2019} run function asset:sacred_treasure/2024.multitool_shear/trigger/passive/2.check_condition