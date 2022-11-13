#> asset:sacred_treasure/common/give_slot
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
    execute if data storage asset:context {Slot:1} if entity @s[nbt={SelectedItem:{}}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:1} unless entity @s[nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:2} if entity @s[nbt={Inventory:[{Slot:-106b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:2} unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:3} if entity @s[nbt={Inventory:[{Slot:100b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:3} unless entity @s[nbt={Inventory:[{Slot: 100b}]}] run item replace entity @s armor.feet from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:4} if entity @s[nbt={Inventory:[{Slot:101b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:4} unless entity @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @s armor.legs from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:5} if entity @s[nbt={Inventory:[{Slot:102b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:5} unless entity @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @s armor.chest from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:6} if entity @s[nbt={Inventory:[{Slot:103b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:6} unless entity @s[nbt={Inventory:[{Slot:103b}]}] run item replace entity @s armor.head from block 10000 0 10000 container.0
