#> asset:sacred_treasure/2010.peeping_goggles/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/2010.peeping_goggles/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/head
# 他にアイテム等確認する場合はここに書く
    execute unless entity @s[nbt={SelectedItem:{tag:{TSB:{Shard:1b}}}}] run tag @s remove CanUsed
    execute unless entity @s[nbt={SelectedItem:{tag:{TSB:{Shard:1b}}}}] run tellraw @s [{"text":"何も見えてこない..."}]

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/2010.peeping_goggles/trigger/3.main