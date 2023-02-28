#> asset:sacred_treasure/2010.peeping_goggles/trigger/random
#
# 乱数を回す
#
# @within function asset:sacred_treasure/2010.peeping_goggles/trigger/3.main

# 乱数を1回す
    scoreboard players operation $1JU.Base Temporary *= $31743 Const
    scoreboard players operation $1JU.Base Temporary += $1JU.Carry Temporary
    scoreboard players operation $1JU.Carry Temporary = $1JU.Base Temporary
    scoreboard players operation $1JU.Carry Temporary /= $65536 Const
    scoreboard players operation $1JU.Base Temporary %= $65536 Const

# 値を返す
    scoreboard players get $1JU.Base Temporary