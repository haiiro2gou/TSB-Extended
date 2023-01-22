#> asset:sacred_treasure/2019.multitool_stick/trigger/passive/main
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/2019.multitool_stick/trigger/passive/check
#   asset:sacred_treasure/2020.multitool_pickaxe/trigger/passive/check
#   asset:sacred_treasure/2021.multitool_shovel/trigger/passive/check
#   asset:sacred_treasure/2022.multitool_axe/trigger/passive/check
#   asset:sacred_treasure/2023.multitool_hoe/trigger/passive/check
#   asset:sacred_treasure/2024.multitool_shear/trigger/passive/check

# メイン処理
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 2025
    execute unless data storage asset:context Items.mainhand.id run function api:sacred_treasure/replace/from_id