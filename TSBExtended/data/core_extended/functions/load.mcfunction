#> core_extended:load
#
# #load時に毎回実行される処理群
#
# @within tag/function minecraft:load


# ⚠️ リリース時のみtrueにすること。 これをtrueにした場合、ワールドに不可逆的な登録処理が発生します。 ⚠️
    data modify storage global Extended.IsProduction set value false

# load順変更 (不要の可能性アリ)
#    datapack disable "file/TheSkyBlessing.zip"
#    datapack disable "file/TSBExtended.zip"
#    datapack enable "file/TSBExtended.zip" first
#    datapack enable "file/TheSkyBlessing.zip" after "file/TSBExtended.zip"

# 初回限定ロード
    execute if data storage global {Extended:{IsProduction:1b}} unless data storage global Extended.Version run function core_extended:load_once
    execute if data storage global {Extended:{IsProduction:0b}} run function core_extended:load_once

# マイグレーション
    function core_extended:migration/
