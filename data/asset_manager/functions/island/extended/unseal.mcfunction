#> asset_manager:island/extended/unseal
# @within function asset:artifact/2035.cup_of_second_coming/trigger/3.main

# テレポーターを無効化する
    function oh_my_dat:please
    data modify storage api: Argument.ID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.ID
    data modify storage api: Argument.ActivationState set value "InvisibleDeactivate"
    function api:teleporter/set_activation_state/from_id
# DispelPhaseをなかったことにする
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 0b
# Unsealトリガーを吐く
    data modify storage asset:context id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.ID
    function #asset:island/unseal
# 解放！
    tag @s add Extended.ArtifactUnsealed