#> asset:sacred_treasure/2020.multitool_pickaxe/trigger/reset/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2020} run function asset:sacred_treasure/2020.multitool_pickaxe/trigger/reset/2.check_condition

# リセット
    tag @s remove 1K3.Reset