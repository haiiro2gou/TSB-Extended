#> asset_manager:island/extended/tick
# @within function core:tick/

# Extended
    execute if entity @s[tag=!Extended.ArtifactInit] run function asset_manager:island/extended/init

# 本来のtick処理に送る
    execute unless entity @s[tag=DispelledCursedArtifact,tag=!Extended.ArtifactUnsealed] run function asset_manager:island/tick/