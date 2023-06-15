#> asset:artifact/2008.desert_eagle/trigger/double/
#
# 右手発射の銃撃処理
#
# @within function asset:artifact/2008.desert_eagle/trigger/3.main

# 右手から撃つ
    execute positioned ~ ~1.5 ~ positioned ^-0.4 ^ ^ rotated ~-1 ~ run function asset:artifact/2008.desert_eagle/trigger/3.1.bullet

# 左手に処理を回す
    execute as @s[tag=1JS.Double] run scoreboard players set @s 1JS.OffTimer 5
    execute as @s[tag=1JS.Double] run schedule function asset:artifact/2008.desert_eagle/trigger/schedule_loop 1t replace