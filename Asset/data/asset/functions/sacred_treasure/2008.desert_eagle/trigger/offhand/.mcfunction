#> asset:sacred_treasure/2008.desert_eagle/trigger/offhand/
#
# 左手発射の銃撃処理
#
# @within function
#   asset:sacred_treasure/2008.desert_eagle/trigger/3.main

# 左から発射
    execute positioned ~ ~1.5 ~ positioned ^0.4 ^ ^ rotated ~1 ~ run function asset:sacred_treasure/2008.desert_eagle/trigger/3.1.bullet

# リセット
    execute as @s[scores={1JS.OffTimer=..0}] run scoreboard players reset @s 1JS.OffTimer