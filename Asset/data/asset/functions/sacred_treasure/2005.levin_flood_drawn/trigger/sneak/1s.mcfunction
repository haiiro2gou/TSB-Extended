#> asset:sacred_treasure/2005.levin_flood_drawn/trigger/sneak/1s
#
# 1秒スニークした時にmainhandに当該神器のidが入った状態でトリガーする
#
# @within tag/function asset:sacred_treasure/sneak/1s

execute if data storage asset:context id{mainhand:2005} run function asset:sacred_treasure/2005.levin_flood_drawn/trigger/sneak/main