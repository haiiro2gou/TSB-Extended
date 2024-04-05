#> minecraft:extended/check_compat
# @within tag/function minecraft:load

# TSB-Patcherのバージョンチェック
    data modify storage api: Argument.Version.Min set value "v1.0.0"
    data modify storage api: Argument.Version.Target set from storage global Patcher.Version
    function api:version/check/
    data modify storage global Extended.Compatible set from storage api: Return.Compatible

# 条件を満たしていなければリロードさせる
    execute unless data storage api: Return{Compatible: true} run datapack disable "file/TSB-Extended"
    execute unless data storage api: Return{Compatible: true} run datapack enable "file/TSB-Extended" after "file/TSB-Patcher"

# 念のためリセット
    data remove storage api: Argument.Version
