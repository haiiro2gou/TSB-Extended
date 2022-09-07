#> asset:sacred_treasure/2009.desert_eagle_empty/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2009} run tag @s add 1JT.Main
    execute if entity @s[tag=1JT.Main] run function asset:sacred_treasure/2009.desert_eagle_empty/trigger/2.check_condition
    tag @s remove 1JT.Main
    execute if data storage asset:context id{offhand:2009} run tag @s add 1JT.Off
    execute if entity @s[tag=1JT.Off] run function asset:sacred_treasure/2009.desert_eagle_empty/trigger/2.check_condition
    tag @s remove 1JT.Off