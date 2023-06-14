#> asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/adjust/
#
# ツール自動調整
#
# @within function
#   asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/3.main

# タグからツールを合わせるよ
    tag @s add 1K3.Marker
    execute at @s anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/adjust/loop
    tag @s remove 1K3.Marker
    execute unless score $1K3.Tool Temporary matches 0.. run scoreboard players set $1K3.Tool Temporary 0