#> asset:sacred_treasure/2005.levin_flood_drawn/trigger/equip_check
#
# 火雷 -抜刀-の所持チェック
#
# @within function
#   asset:sacred_treasure/2005.levin_flood_drawn/trigger/dis_equip/main

# 所持チェック
    execute store success score @s 1JP.Equipped run clear @s carrot_on_a_stick{TSB:{ID:2005}} 0