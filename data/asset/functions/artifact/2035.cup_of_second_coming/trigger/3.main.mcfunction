#> asset:artifact/2035.cup_of_second_coming/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2035.cup_of_second_coming/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    execute as @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,tag=!Extended.ArtifactUnsealed,distance=..10,limit=1] at @s run function asset_manager:island/extended/unseal
    tellraw @a {"text":"浄化された天使が力を取り戻し、再び戦うことができるようになった。","color":"green"}