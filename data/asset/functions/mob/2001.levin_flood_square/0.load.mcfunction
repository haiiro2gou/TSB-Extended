#> asset:mob/2001.levin_flood_square/0.load
#
# MOBに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> score
# @within function
#   asset:artifact/2005.levin_flood_drawn/**
#   asset:mob/2001.levin_flood_square/**
    scoreboard objectives add 1JL.Charge dummy
    scoreboard objectives add 1JL.ChargeTime dummy
    scoreboard objectives add 1JL.Tick dummy
    scoreboard objectives add 1JL.UserID dummy