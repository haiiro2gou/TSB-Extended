#> api:mp/set_max
#
# プレイヤーのMPの最大値を設定します
#
# @input
#   as player
#   storage api: Argument.MPMax
# @api

#> temp
# @private
    #declare score_holder $MPMax
    #declare score_holder $MPPercentage

# 取得
    execute store result score $MPMax Temporary run data get storage api: Argument.MPMax

# 現在MP補正
    execute store result score $MPPercentage Temporary run scoreboard players get @s MP
    scoreboard players operation $MPPercentage Temporary *= $100 Const
    scoreboard players operation $MPPercentage Temporary /= @s MPMax
    scoreboard players operation $MPPercentage Temporary *= $MPMax Temporary
    execute store result storage api: Argument.MP float 0.01 run scoreboard players get $MPPercentage Temporary
    function api:mp/set

# セット
    scoreboard players operation @s MPMax = $MPMax Temporary

# リセット
    scoreboard players reset $MPMax Temporary
    scoreboard players reset $MPPercentage Temporary
    data remove storage api: Argument.MPMax
