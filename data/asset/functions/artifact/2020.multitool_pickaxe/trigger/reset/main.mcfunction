#> asset:artifact/2020.multitool_pickaxe/trigger/reset/main
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/2020.multitool_pickaxe/trigger/reset/check
#   asset:artifact/2021.multitool_shovel/trigger/reset/check
#   asset:artifact/2022.multitool_axe/trigger/reset/check
#   asset:artifact/2023.multitool_hoe/trigger/reset/check
#   asset:artifact/2024.multitool_shears/trigger/reset/check

# デフォルトに戻しましょうねー
    playsound block.lava.extinguish master @a ~ ~ ~ 0.5 0.7
    particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10
    data modify storage api: Argument.ID set value 2019
    execute store result storage asset:artifact RemainingCount int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    execute store result storage asset:artifact RemainingCountMax int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCountMax
    function api:artifact/replace/from_id