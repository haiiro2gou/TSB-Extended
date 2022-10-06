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
    execute if score $1JU.Rarity Temporary matches 1 run data modify storage lib: Array set from storage asset:sacred_treasure RarityRegistry[1]
    execute if score $1JU.Rarity Temporary matches 2 run data modify storage lib: Array set from storage asset:sacred_treasure RarityRegistry[2]
    execute if score $1JU.Rarity Temporary matches 3 run data modify storage lib: Array set from storage asset:sacred_treasure RarityRegistry[3]
    execute if score $1JU.Rarity Temporary matches 4 run data modify storage lib: Array set from storage asset:sacred_treasure RarityRegistry[4]
    execute store result score $1JU.Length Temporary if data storage lib: Array[]
    execute store result score $1JU.Base Temporary run scoreboard players get $Random.Base Global
    execute store result score $1JU.Carry Temporary run scoreboard players get $Random.Carry Global
    scoreboard players operation $1JU.Base Temporary *= $31743 Const
    scoreboard players operation $1JU.Base Temporary += $1JU.Carry Temporary
    scoreboard players operation $1JU.Carry Temporary = $1JU.Base Temporary
    scoreboard players operation $1JU.Carry Temporary /= $65536 Const
    scoreboard players operation $1JU.Base Temporary %= $65536 Const
    scoreboard players operation $Argument.Index Lib = $1JU.Base Temporary
    scoreboard players operation $Argument.Index Lib %= $1JU.Length Temporary
    function lib:array/move


# リセット
    function lib:array/session/close
    scoreboard players reset $1JU.Base Temporary
    scoreboard players reset $1JU.Carry Temporary
    scoreboard players reset $1JU.Length Temporary
    scoreboard players reset $1JU.Rarity Temporary
    data remove storage lib: Array
