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

#> private
# @private
    #declare score_holder $1K3.Use

# メイン処理
    execute store result score $1K3.Use Temporary run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    scoreboard players remove $1K3.Use Temporary 1
    execute if score $1K3.Use Temporary matches ..0 run data modify storage api: Argument.ID set value 2025
    execute if score $1K3.Use Temporary matches 1.. store result storage api: Argument.ID int 1 run data get storage asset:context Items.mainhand.tag.TSB.ID
    execute if score $1K3.Use Temporary matches 1.. store result storage asset:sacred_treasure RemainingCount int 1 run scoreboard players get $1K3.Use Temporary
    execute if score $1K3.Use Temporary matches 1.. store result storage asset:sacred_treasure RemainingCountMAX int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCountMAX
    function api:sacred_treasure/replace/from_id
    data modify storage asset:context Items.mainhand set from entity @s SelectedItem

# リセット
    scoreboard players reset $1K3.Use Temporary