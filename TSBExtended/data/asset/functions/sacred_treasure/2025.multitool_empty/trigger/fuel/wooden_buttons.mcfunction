#> asset:sacred_treasure/2025.multitool_empty/trigger/fuel/wooden_buttons
#
# 所持チェック
#
# @within function asset:sacred_treasure/2025.multitool_empty/trigger/2.check_condition

# 処理
    execute store success score $1K9.Succeed Temporary run clear @s #asset:sacred_treasure/2025.multitool_empty/fuel/wooden_buttons 1
    execute if score $1K9.Succeed Temporary matches 1 run data modify storage asset:temp 1K9.FuelCount set value 100
    scoreboard players reset $1K9.Succeed Temporary