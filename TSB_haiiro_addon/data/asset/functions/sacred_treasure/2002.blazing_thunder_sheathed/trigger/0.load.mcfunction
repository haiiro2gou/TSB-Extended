#> asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:sacred_treasure/load

#> 定義類はここに
# @within function
#   asset:sacred_treasure/2002.blazing_thunder_sheathed/trigger/**
#   asset:sacred_treasure/2003.blazing_thunder_drawn/trigger/**
    scoreboard objectives add 1JM.ChargeTime dummy
    scoreboard objectives add 1JM.CoolTime dummy
    scoreboard objectives add 1JM.IaiTime dummy