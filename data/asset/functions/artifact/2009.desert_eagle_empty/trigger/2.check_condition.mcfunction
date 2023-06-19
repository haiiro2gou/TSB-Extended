#> asset:artifact/2009.desert_eagle_empty/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/2009.desert_eagle_empty/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    execute as @s[tag=1JT.Main] run function asset:artifact/common/check_condition/mainhand
    execute as @s[tag=1JT.Off] run function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く
    # 火薬の所持チェック
        execute store result score $1JT.GunpowderCount Temporary run clear @s gunpowder 0
        execute as @a[tag=!DevPrivilege] if score $1JT.GunpowderCount Temporary matches 0 run tag @s remove CanUsed
        execute as @a[tag=!DevPrivilege] if score $1JT.GunpowderCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
        scoreboard players reset $1JT.GunpowderCount Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/2009.desert_eagle_empty/trigger/3.main