#> asset:artifact/2023.multitool_hoe/trigger/passive/
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/check.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2023} run function asset:artifact/2023.multitool_hoe/trigger/passive/check