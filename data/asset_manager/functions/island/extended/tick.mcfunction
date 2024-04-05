#> asset_manager:island/extended/tick
# @within function core:tick/

# 本来のtick処理に送る
    execute unless entity @s[tag=DispelledCursedArtifact,tag=!Extended.ArtifactUnsealed] run function asset_manager:island/tick/
