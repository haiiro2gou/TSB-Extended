#> asset_manager:common/context_slot/pop
#
#
#
# @within function
#   api:mob/summon
#   api:sacred_treasure/*/from_id*

# idを掃除
    data remove storage asset:context Slot
# idを戻す
    data modify storage asset:context Slot set from storage asset:context SlotStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context SlotStashStack[-1]