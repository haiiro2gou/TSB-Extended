#> asset:sacred_treasure/2010.peeping_goggles/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2010.peeping_goggles/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# 手持ちアイテムチェック
    function lib:array/session/open
    execute if entity @s[nbt={SelectedItem:{tag:{TSB:{Shard:1b}}}}] store result score $1JU.Rarity Temporary run data get entity @s SelectedItem.tag.TSB.ShardRarity 1

# 初期設定
    execute if score $1JU.Rarity Temporary matches 1 run data modify storage lib: Array set from storage asset:sacred_treasure RarityRegistry[1]
    execute if score $1JU.Rarity Temporary matches 2 run data modify storage lib: Array set from storage asset:sacred_treasure RarityRegistry[2]
    execute if score $1JU.Rarity Temporary matches 3 run data modify storage lib: Array set from storage asset:sacred_treasure RarityRegistry[3]
    execute if score $1JU.Rarity Temporary matches 4 run data modify storage lib: Array set from storage asset:sacred_treasure RarityRegistry[4]
    execute store result score $1JU.Base Temporary run scoreboard players get $Random.Base Global
    execute store result score $1JU.Carry Temporary run scoreboard players get $Random.Carry Global

# 神器の名前を取得
    execute store result score $Argument.Index Lib run function asset:sacred_treasure/2010.peeping_goggles/trigger/random
    execute store result score $1JU.Length Temporary if data storage lib: Array[]
    scoreboard players operation $Argument.Index Lib %= $1JU.Length Temporary
    function lib:array/move
    data modify storage api: Argument.ID set from storage lib: Array[-1]
    function api:sacred_treasure/box/from_id
    data modify storage asset:temp Name set from block 10000 0 10000 Items[-1].tag.TSB.rawName
    title @s times 10 40 10
    title @s title [{"nbt":"Name","storage":"asset:temp","interpret":true}]
    data remove storage asset:temp Name

# 代償
    effect give @s blindness 2 0 true
    execute if score @s 1JU.CoolTime matches 1.. run function asset:sacred_treasure/2010.peeping_goggles/trigger/damage

# 演出
    playsound block.enchantment_table.use player @s ~ ~ ~ 0.5 0
    playsound block.beacon.deactivate player @s ~ ~ ~ 0.6 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 1 1
    particle minecraft:witch ~ ~1 ~ 0 0.5 0 2 100 normal

# ループ
    scoreboard players set @s 1JU.CoolTime 100
    schedule function asset:sacred_treasure/2010.peeping_goggles/trigger/schedule_loop 1t replace

# リセット
    function lib:array/session/close
    scoreboard players reset $1JU.Base Temporary
    scoreboard players reset $1JU.Carry Temporary
    scoreboard players reset $1JU.Length Temporary
    scoreboard players reset $1JU.Rarity Temporary
    data remove storage lib: Array
