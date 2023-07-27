#> asset:artifact/2005.levin_flood_drawn/trigger/attack/check_condition
# @within function asset:artifact/2005.levin_flood_drawn/trigger/attack/

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/2005.levin_flood_drawn/trigger/attack/main