#> asset:sacred_treasure/2019.multitool_stick/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/2019.multitool_stick/trigger/1.trigger

#> score_holder
# @private
    #declare score_holder $1K3.CharcoalCount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    # 木炭を持ってるかチェック
        execute unless score @s 1K3.Tick matches 1.. store result score $1K3.CharcoalCount Temporary run clear @s charcoal 0
        execute unless score @s 1K3.Tick matches 1.. if score $1K3.CharcoalCount Temporary matches 0 run tag @s remove CanUsed
        execute unless score @s 1K3.Tick matches 1.. if score $1K3.CharcoalCount Temporary matches 0 run function lib:message/sacred_treasure/dont_have_require_items
        execute unless score @s 1K3.Tick matches 1.. run scoreboard players reset $1K3.CharcoalCount Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/2019.multitool_stick/trigger/3.main