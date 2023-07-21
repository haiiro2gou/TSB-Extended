#> asset:artifact/2004.levin_flood_sheathed/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/2004.levin_flood_sheathed/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed,tag=!1JO.InCooldown,tag=!DevPrivilege] if score @s 1JO.CoolTime matches 1.. run tellraw @s {"text":"刀の形が定まらない…","color":"red"}
    execute if entity @s[tag=CanUsed,tag=!DevPrivilege] if score @s 1JO.CoolTime matches 1.. run tag @s add 1JO.InCooldown
    execute if entity @s[tag=CanUsed] unless entity @s[tag=!DevPrivilege,scores={1JO.CoolTime=1..}] run function asset:artifact/2004.levin_flood_sheathed/trigger/3.main