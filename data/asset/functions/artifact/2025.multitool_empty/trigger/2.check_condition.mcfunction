#> asset:artifact/2025.multitool_empty/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/2025.multitool_empty/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 燃料チェック
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/lava_bucket
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/coal_block
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/dried_kelp_block
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/blaze_rod
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/coal
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/charcoal
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/boats
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/scaffolding
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/logs
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_planks
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_pressure_plates
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_fences
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_fence_gates
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_stairs
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_trapdoors
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/crafting_table
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/cartography_table
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/fletching_table
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/smithing_table
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/loom
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/bookshelf
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/lectern
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/chests
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/barrel
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/daylight_detector
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/jukebox
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/note_block
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/banners
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_slabs
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/bow
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/fishing_rod
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/ladder
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_buttons
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_tools
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wooden_signs
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/bowl
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/saplings
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/stick
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wool
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/wool_carpets
        execute unless data storage asset:temp 1K9.FuelCount run function asset:artifact/2025.multitool_empty/trigger/fuel/bamboo
        execute unless data storage asset:temp 1K9.FuelCount as @s[tag=DevPrivilege] run data modify storage asset:temp 1K9.FuelCount set value 20000
        execute unless data storage asset:temp 1K9.FuelCount run tag @s remove CanUsed
        execute unless data storage asset:temp 1K9.FuelCount run function lib:message/artifact/dont_have_require_items

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/2025.multitool_empty/trigger/3.main

# リセット
    data remove storage asset:temp 1K9