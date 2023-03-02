#> asset:sacred_treasure/2004.levin_flood_sheathed/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/2004.levin_flood_sheathed/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] unless score @s 1JO.CoolTime matches 1.. run function asset:sacred_treasure/2004.levin_flood_sheathed/trigger/3.main
    execute if entity @s[tag=CanUsed,tag=!1JO.InCooldown] if score @s 1JO.CoolTime matches 1.. run tellraw @s {"text":""}
    execute if entity @s[tag=CanUsed] if score @s 1JO.CoolTime matches 1.. run tag @s add 1JO.InCooldown