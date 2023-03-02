#> core:extended/load
#
# #load時に毎回実行される処理群
#
# @within tag/function minecraft:load


# ⚠️ リリース時のみtrueにすること。 これをtrueにした場合、ワールドに不可逆的な登録処理が発生します。 ⚠️
    data modify storage global Extended.IsProduction set value false

# 初回限定ロード
    execute if data storage global {Extended:{IsProduction:1b}} unless data storage global Extended.Version run function core:extended/load_once_pre
    execute if data storage global {Extended:{IsProduction:0b}} run function core:extended/load_once_pre

# マイグレーション
    function core:extended/migration/
