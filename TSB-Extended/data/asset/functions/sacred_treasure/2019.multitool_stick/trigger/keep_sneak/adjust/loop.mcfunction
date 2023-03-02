#> asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/adjust/loop
#
# ループしてブロックサーチ
#
# @within function
#   asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/adjust/
#   asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/adjust/loop

# 割当て
    execute unless score $1K3.Tool Temporary matches 1.. if block ^ ^ ^ #minecraft:mineable/pickaxe run scoreboard players set $1K3.Tool Temporary 1
    execute unless score $1K3.Tool Temporary matches 1.. if block ^ ^ ^ #minecraft:mineable/shovel run scoreboard players set $1K3.Tool Temporary 2
    execute unless score $1K3.Tool Temporary matches 1.. if block ^ ^ ^ #minecraft:mineable/axe run scoreboard players set $1K3.Tool Temporary 3
    execute unless score $1K3.Tool Temporary matches 1.. if block ^ ^ ^ #minecraft:mineable/hoe run scoreboard players set $1K3.Tool Temporary 4
    execute unless score $1K3.Tool Temporary matches 1.. if block ^ ^ ^ #asset:sacred_treasure/2019.multitool_stick/shears run scoreboard players set $1K3.Tool Temporary 5
    execute unless score $1K3.Tool Temporary matches 1.. unless block ^ ^ ^ air run scoreboard players set $1K3.Tool Temporary 0

# ループ
    execute unless score $1K3.Tool Temporary matches 1.. positioned ^ ^ ^0.1 if entity @a[tag=1K3.Marker,distance=..5] run function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/adjust/loop