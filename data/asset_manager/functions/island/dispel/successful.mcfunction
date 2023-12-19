#> asset_manager:island/dispel/successful
#
#
#
# @within function asset_manager:island/dispel/

# 邪魔なスコアをリセットする
    scoreboard players reset @s DispelTime
# 解呪数を1増やす
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run scoreboard players add $Island Global 1
# VFX
    function asset_manager:island/dispel/vfx/dispel
# メッセージ
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run function lib:message/common/dispel_island
    execute if entity @s[tag= Extended.ArtifactUnsealed] run function lib:message/common/reseal_boss
# 祝福を与える
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run data modify storage api: Argument.ID set value 2
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run execute as @p[predicate=lib:is_sneaking,distance=..2] at @s run function api:artifact/give/from_id
# アイテム返す
    function player_manager:lost_item/give_all/
# データ取得
    function oh_my_dat:please
# 二度と祈れないようにする
    tag @s add DispelledCursedArtifact
    tag @s remove Extended.ArtifactUnsealed
# テレポーターを起動する
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run data modify storage api: Argument.ID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.ID
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run data modify storage api: Argument.ActivationState set value "Activate"
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run function api:teleporter/set_activation_state/from_id
# DispelPhaseを進める
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 3b
# Dispelledトリガーを発火する
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run data modify storage asset:context id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.ID
    execute if entity @s[tag=!Extended.ArtifactUnsealed] run function #asset:island/dispelled