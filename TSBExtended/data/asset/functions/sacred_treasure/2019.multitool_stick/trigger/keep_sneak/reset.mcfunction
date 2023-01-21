#> asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/reset
#
# デフォルトに戻す処理
#
# @within function asset:sacred_treasure/2019.multitool_stick/trigger/keep_sneak/schedule_loop

# デフォルトに戻しましょうねー
    data modify storage api: Argument.ID set value 2019
    data modify storage api: Argument.Slot set value "mainhand"
    function api:sacred_treasure/give/from_id