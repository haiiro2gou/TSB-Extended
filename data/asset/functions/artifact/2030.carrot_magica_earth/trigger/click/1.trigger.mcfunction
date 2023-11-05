#> asset:artifact/2030.carrot_magica_earth/trigger/click/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2030} run function asset:artifact/2030.carrot_magica_earth/trigger/click/2.check_condition
