#> asset:sacred_treasure/2006.rainbow_priming/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:sacred_treasure/load

#> 定義類はここに
# @within function
#   asset:sacred_treasure/2006.rainbow_priming/trigger/**
#   asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/4.damage
    scoreboard objectives add 1JQ.Burning dummy
    scoreboard objectives add 1JQ.CoolTime dummy
    scoreboard objectives add 1JQ.Particle dummy
    scoreboard objectives add 1JQ.Tick dummy