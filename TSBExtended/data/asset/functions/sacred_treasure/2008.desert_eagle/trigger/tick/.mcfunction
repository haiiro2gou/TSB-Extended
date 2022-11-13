#> asset:sacred_treasure/2008.desert_eagle/trigger/tick/
#
# tick trigger
#
# @within tag/function asset:sacred_treasure/tick

# tag check
    execute if data storage asset:context id{offhand:2008} if score @s 1JS.OffTimer matches ..0 run tag @s add 1JS.Off
    execute if data storage asset:context id{offhand:2008} if score @s 1JS.OffTimer matches ..0 run function asset:sacred_treasure/2008.desert_eagle/trigger/2.check_condition
    execute if score @s 1JS.OffTimer matches ..0 run scoreboard players reset @s 1JS.OffTimer
    tag @s remove 1JS.Off