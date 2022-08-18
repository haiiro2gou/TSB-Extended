#> asset:sacred_treasure/2001.leap_charm/trigger/give_effect
#
# 効果を付与する
#
# @within function
#   asset:sacred_treasure/2001.leap_charm/trigger/3.main
#   asset:sacred_treasure/2001.leap_charm/trigger/dis_equip/main

#> prv
# @private
    #declare score_holder $1JL.ItemCount

# 所持数チェック
    execute store result score $1JL.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:2001}}}]
# 所持数に応じて効果付与
    execute if score $1JL.ItemCount Temporary matches 1 run effect give @s jump_boost 1000000 0 true
    execute if score $1JL.ItemCount Temporary matches 2 run effect give @s jump_boost 1000000 1 true
    execute if score $1JL.ItemCount Temporary matches 3 run effect give @s jump_boost 1000000 2 true
    execute if score $1JL.ItemCount Temporary matches 4 run effect give @s jump_boost 1000000 3 true
    execute if score $1JL.ItemCount Temporary matches 5 run effect give @s jump_boost 1000000 4 true
    execute if score $1JL.ItemCount Temporary matches 6 run effect give @s jump_boost 1000000 5 true
    execute if score $1JL.ItemCount Temporary matches 7 run effect give @s jump_boost 1000000 6 true
    execute if score $1JL.ItemCount Temporary matches 8 run effect give @s jump_boost 1000000 7 true
    execute if score $1JL.ItemCount Temporary matches 9 run effect give @s jump_boost 1000000 8 true

# リセット
    scoreboard players reset $1JL.ItemCount Temporary