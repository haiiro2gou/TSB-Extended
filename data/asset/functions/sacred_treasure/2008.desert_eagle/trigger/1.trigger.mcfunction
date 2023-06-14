#> asset:sacred_treasure/2008.desert_eagle/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2008,offhand:2008} run tag @s add 1JS.Double
    execute if data storage asset:context id{mainhand:2008} as @s[tag=!1JS.Double] run tag @s add 1JS.Main
    execute if data storage asset:context id{offhand:2008} as @s[tag=!1JS.Double] run tag @s add 1JS.Off
    execute if data storage asset:context id{auto:2008} run function asset:sacred_treasure/2008.desert_eagle/trigger/2.check_condition
    tag @s remove 1JS.Double
    tag @s remove 1JS.Main
    tag @s remove 1JS.Off