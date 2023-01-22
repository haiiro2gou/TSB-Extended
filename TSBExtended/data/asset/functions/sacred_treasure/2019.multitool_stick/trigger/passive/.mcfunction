#> asset:sacred_treasure/2019.multitool_stick/trigger/passive/
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2019} run function asset:sacred_treasure/2019.multitool_stick/trigger/passive/check