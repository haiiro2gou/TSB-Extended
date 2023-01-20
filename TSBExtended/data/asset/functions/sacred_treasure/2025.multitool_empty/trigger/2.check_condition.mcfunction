#> asset:sacred_treasure/2025.multitool_empty/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/2025.multitool_empty/trigger/1.trigger

#> private
# @private
    #declare score_holder $1K9.CharcoalCount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 木炭チェック
        execute store result score $1K9.CharcoalCount Temporary run clear @s charcoal 0
        execute as @s[tag=!DevPrivilege] if score $1K9.CharcoalCount Temporary matches 0 run tag @s remove CanUsed
        execute as @s[tag=!DevPrivilege] if score $1K9.CharcoalCount Temporary matches 0 run function lib:message/sacred_treasure/dont_have_require_items
        scoreboard players reset $1K9.CharcoalCount Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/2025.multitool_empty/trigger/3.main