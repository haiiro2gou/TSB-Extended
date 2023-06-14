#> asset:sacred_treasure/2010.peeping_goggles/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:2010} run function asset:sacred_treasure/2010.peeping_goggles/trigger/2.check_condition