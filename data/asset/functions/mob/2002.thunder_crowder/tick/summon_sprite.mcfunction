#> asset:mob/2002.thunder_crowder/summon_sprite
#
# 雑魚の召喚処理
#
# @within function
#   asset:mob/2002.thunder_crowder/tick/2.tick

# 演出

# 召喚
    data modify storage api: Argument.ID set value 2003
    function api:mob/summon
