#> core:extended/load_once_pre
#
#
#
# @within function core:extended/load

# TSB-Patcherのバージョンチェック
    data modify storage api: Argument.Version.Min set value "v1.0.0"
    data modify storage api: Argument.Version.Target set from storage global Patcher.Version
    function api:version/check/
    data modify storage global Extended.Compatible set from storage api: Return.Compatible

# 条件を満たしていればロード
    execute if data storage global {Extended:{Compatible: true}} run function core:extended/load_once
    execute if data storage global {Extended:{Compatible:false}} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"TSB-Patcher v1.0.0+を適用してください。","color":"white"}]
