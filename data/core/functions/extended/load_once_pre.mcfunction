#> core:extended/load_once_pre
#
#
#
# @within function core:extended/load

# TSBの後にロードするように
    execute unless data storage global Patcher.Version run datapack disable "file/TSB-Extended"
    execute unless data storage global Patcher.Version run datapack enable "file/TSB-Extended" after "file/TheSkyBlessing"

    execute if data storage global {GameVersion:"v0.1.6",Patcher:{Version:"v1.0.0"}} run function core:extended/load_once
    execute if data storage global GameVersion unless data storage global {GameVersion:"v0.1.6"} run tellraw @a [{"storage": "global", "nbt": "Prefix.ERROR"},{"text":"TheSkyBlessing v0.1.6を使用してください。","color":"white"}]
    execute if data storage global Patcher.Version unless data storage global {Patcher:{Version:"v1.0.0"}} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"TSB-Patcher v1.0.0を適用してください。","color":"white"}]