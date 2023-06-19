#> asset:artifact/2008.desert_eagle/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function
#   asset:artifact/2008.desert_eagle/trigger/1.trigger
#   asset:artifact/2008.desert_eagle/trigger/schedule_loop
#   asset:artifact/2008.desert_eagle/trigger/tick/

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    execute as @s[tag=!1JS.Off] run function asset:artifact/common/check_condition/mainhand
    execute as @s[tag=1JS.Off] run function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く
    # 火薬の所持チェック
        # execute store result score $1JS.GunpowderCount Temporary run clear @s gunpowder 0
        # execute if score $1JS.GunpowderCount Temporary matches 0 run tag @s remove CanUsed
        # execute if score $1JS.GunpowderCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
        # scoreboard players reset $1JS.GunpowderCount Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/2008.desert_eagle/trigger/3.main