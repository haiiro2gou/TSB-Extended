#> asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/reset
#
# デフォルトに戻す処理
#
# @within function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/schedule_loop

#> private
# @private
    #declare score_holder $1K3.ID

# storage入手
    function oh_my_dat:please
    function api:data_get/selected_item
    execute store result score $1K3.ID Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data.tag.TSB.ID

# デフォルトに戻しましょうねー
    execute if score $1K3.ID Temporary matches 2019..2024 run data modify storage api: Argument.ID set value 2019
    execute if score $1K3.ID Temporary matches 2019..2024 store result storage asset:sacred_treasure RemainingCount int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data.tag.TSB.RemainingCount
    execute if score $1K3.ID Temporary matches 2019..2024 store result storage asset:sacred_treasure RemainingCountMAX int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data.tag.TSB.RemainingCountMAX
    execute if score $1K3.ID Temporary matches 2019..2024 run function api:sacred_treasure/replace/from_id

# リセット
    scoreboard players reset $1K3.ID Temporary