#> asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2003} run function asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/2.check_condition