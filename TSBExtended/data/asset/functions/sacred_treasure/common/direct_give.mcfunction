#> asset:sacred_treasure/common/direct_give
#
# 神器を直接入手します
#
# @api
# @input storage asset:sacred_treasure
# @output item 神器
# @within function asset:sacred_treasure/common/give

# slot指定なし
    execute unless data storage asset:context Slot run loot give @s mine 10000 0 10000 debug_stick

# slot指定あり
    execute if data storage asset:context {Slot:1b} unless entity @s[nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:1b} if entity @s[nbt={SelectedItem:{}}] run loot give @s mine 10000 0 10000
    execute if data storage asset:context {Slot:2b} unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:2b} if entity @s[nbt={Inventory:[{Slot:-106b}]}] run loot give @s mine 10000 0 10000
    execute if data storage asset:context {Slot:3b} unless entity @s[nbt={Inventory:[{Slot: 100b}]}] run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:3b} if entity @s[nbt={Inventory:[{Slot:100b}]}] run loot give @s mine 10000 0 10000
    execute if data storage asset:context {Slot:4b} unless entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:4b} if entity @s[nbt={Inventory:[{Slot:101b}]}] run loot give @s mine 10000 0 10000
    execute if data storage asset:context {Slot:5b} unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:5b} if entity @s[nbt={Inventory:[{Slot:102b}]}] run loot give @s mine 10000 0 10000
    execute if data storage asset:context {Slot:6b} unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:6b} if entity @s[nbt={Inventory:[{Slot:103b}]}] run loot give @s mine 10000 0 10000
    execute if data storage asset:context {Slot:7b} run loot give @s mine 10000 0 10000
