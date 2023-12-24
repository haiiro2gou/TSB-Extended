#> asset:artifact/2019.multitool_stick/trigger/keep_sneak/3.main
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/2019.multitool_stick/trigger/keep_sneak/2.check_condition
#   asset:artifact/2020.multitool_pickaxe/trigger/keep_sneak/2.check_condition
#   asset:artifact/2021.multitool_shovel/trigger/keep_sneak/2.check_condition
#   asset:artifact/2022.multitool_axe/trigger/keep_sneak/2.check_condition
#   asset:artifact/2023.multitool_hoe/trigger/keep_sneak/2.check_condition
#   asset:artifact/2024.multitool_shears/trigger/keep_sneak/2.check_condition

#> private
# @private
    #declare score_holder $10per
    #declare score_holder $2019
    #declare score_holder $1K3.ToolBase
    scoreboard players set $2019 Temporary 2019

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/mainhand

    execute store result score $10per Temporary run scoreboard players get @s 1K3.Tick
    scoreboard players operation $10per Temporary %= $10 Const
    execute if score $10per Temporary matches 1.. run function asset:artifact/2019.multitool_stick/trigger/add_mp
    scoreboard players reset $10per Temporary

# 演出
    execute unless score @s 1K3.Tick matches 1.. run playsound entity.minecart.riding master @a ~ ~ ~ 0.3 1.5

# メイン処理
    function asset:artifact/2019.multitool_stick/trigger/keep_sneak/adjust/
    scoreboard players operation $1K3.Tool Temporary += $2019 Temporary
    execute store result score $1K3.ToolBase Temporary run data get storage asset:context Items.mainhand.tag.TSB.ID
    execute unless score $1K3.Tool Temporary = $1K3.ToolBase Temporary store result storage api: Argument.ID int 1 run scoreboard players get $1K3.Tool Temporary
    execute unless score $1K3.Tool Temporary = $1K3.ToolBase Temporary store result storage asset:artifact RemainingCount int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    execute unless score $1K3.Tool Temporary = $1K3.ToolBase Temporary store result storage asset:artifact RemainingCountMax int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCountMax
    execute unless score $1K3.Tool Temporary = $1K3.ToolBase Temporary run data modify storage asset:artifact DataExtension set value {EquipCount:2}
    execute unless score $1K3.Tool Temporary = $1K3.ToolBase Temporary run function api:artifact/replace/from_id

# ループ点火
    scoreboard players set @s 1K3.Equipped 2
    execute unless score @s 1K3.Tick matches 1.. run scoreboard players set @s 1K3.Tick 10
    schedule function asset:artifact/2019.multitool_stick/trigger/keep_sneak/schedule_loop 1t replace

# リセット
    scoreboard players reset $2019 Temporary
    scoreboard players reset $1K3.Tool Temporary
    scoreboard players reset $1K3.ToolBase Temporary