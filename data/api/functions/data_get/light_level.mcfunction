#> api:data_get/light_level
#
# 対象の光度をstorageに取得します
#
# @input as player
# @output storage api: LightLevel
# @public

#> temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 0
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/1] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 1
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/2] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 2
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/3] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 3
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/4] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 4
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/5] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 5
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/6] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 6
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/7] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 7
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/8] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 8
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/9] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 9
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/10] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 10
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/11] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 11
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/12] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 12
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/13] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 13
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/14] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 14
    execute if score $NotLatestData Temporary matches 1 if entity @s[predicate=api:data_get/light_level/15] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data set value 15
# outputのstorageに移す
    data modify storage api: LightLevel set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.LightLevel.Data