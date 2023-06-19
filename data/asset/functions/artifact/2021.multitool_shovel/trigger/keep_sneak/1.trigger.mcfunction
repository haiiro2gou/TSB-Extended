#> asset:artifact/2021.multitool_shovel/trigger/keep_sneak/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2021} run function asset:artifact/2021.multitool_shovel/trigger/keep_sneak/2.check_condition