#> asset:sacred_treasure/2022.multitool_axe/trigger/passive/
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/check.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2022} run function asset:sacred_treasure/2022.multitool_axe/trigger/passive/check