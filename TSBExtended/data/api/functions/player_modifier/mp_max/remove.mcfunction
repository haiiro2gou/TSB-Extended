#> api:player_modifier/mp_max/remove
#
#
#
# @api

# データ検証
    execute unless data storage api: Argument.UUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" UUID","color":"red"}]
# データが正しいなら消す
    execute if data storage api: Argument.UUID run function api:player_modifier/core/mp_max/remove
    execute store result score @s MPMax run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.MPMax 1
# リセット
    data remove storage api: Argument.UUID