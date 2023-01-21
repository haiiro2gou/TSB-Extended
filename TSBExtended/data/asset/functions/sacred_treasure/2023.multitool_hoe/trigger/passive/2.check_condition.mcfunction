#> asset:sacred_treasure/2023.multitool_hoe/trigger/passive/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/2023.multitool_hoe/trigger/passive/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    execute unless score @s 1K3.Count matches 1.. run tag @s remove CanUsed
    scoreboard players reset @s 1K3.Count

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/2019.multitool_stick/trigger/passive/3.main