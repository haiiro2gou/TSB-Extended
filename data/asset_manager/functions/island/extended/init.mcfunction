#> asset_manager:island/extended/init
# @within function asset_manager:island/extended/tick

# 終わってたら加算
    execute if entity @s[tag=DispelledCursedArtifact] run scoreboard players add $Island Global 1

# 処理終了の印
    tag @s add Extended.ArtifactInit