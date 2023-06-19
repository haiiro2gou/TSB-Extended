#> asset:artifact/2023.multitool_hoe/trigger/equip/
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/equip

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/main.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2023} run function asset:artifact/2020.multitool_pickaxe/trigger/equip/main