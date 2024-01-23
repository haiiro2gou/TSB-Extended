#> core:extended/load_once_pre
#
#
#
# @within function core:extended/load

# TSB-Patcherのバージョンチェック
    execute if data storage global {GameVersion:"v0.1.6",Patcher:{Version:"v0.4.7"}} run function core:extended/load_once
    execute if data storage global GameVersion unless data storage global {GameVersion:"v0.1.6"} run tellraw @a [{"storage": "global", "nbt": "Prefix.ERROR"},{"text":"TheSkyBlessing v0.1.6を使用してください。","color":"white"}]
    execute if data storage global Patcher.Version unless data storage global {Patcher:{Version:"v0.4.7"}} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"TSB-Patcher v0.4.7を適用してください。","color":"white"}]