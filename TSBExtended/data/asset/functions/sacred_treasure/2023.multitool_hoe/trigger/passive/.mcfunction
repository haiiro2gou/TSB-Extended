#> asset:sacred_treasure/2023.multitool_hoe/trigger/passive/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/check.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2023} run function asset:sacred_treasure/2023.multitool_hoe/trigger/passive/check