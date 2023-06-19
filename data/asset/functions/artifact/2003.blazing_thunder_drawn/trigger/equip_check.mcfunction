#> asset:artifact/2003.blazing_thunder_drawn/trigger/equip_check
#
# 火雷 -抜刀-の所持チェック
#
# @within function
#   asset:artifact/2003.blazing_thunder_drawn/trigger/dis_equip/main

# 所持チェック
    execute store success score @s 1JN.Equipped run clear @s carrot_on_a_stick{TSB:{ID:2003}} 0