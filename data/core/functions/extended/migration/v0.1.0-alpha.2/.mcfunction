#> core:extended/migration/v0.1.0-alpha.2
# @within function core:extended/migration/

# マイグレーション先バージョンの設定
    data modify storage global Extended.Version set value "v0.1.0-alpha.2"

#> from: fb75a93450cb3226b180d69bc3409bcd82a7629e
# @private
    scoreboard players operation $ArtifactIndex Global = $SacredTreasureIndex Global
    scoreboard players reset $SacredTreasureIndex Global

#> from: b715134a6dad58220b8536a9c7f4847e060342fb
# @private
    scoreboard objectives add 1JL.Charge dummy
    scoreboard objectives add 1JL.ChargeTime dummy
    scoreboard objectives add 1JL.Tick dummy
    scoreboard objectives add 1JL.UserID dummy
    scoreboard objectives add 1JO.ChargeTime dummy
    scoreboard objectives add 1JO.CoolTime dummy