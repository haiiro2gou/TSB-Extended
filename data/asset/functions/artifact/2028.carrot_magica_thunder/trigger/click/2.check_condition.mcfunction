#> asset:artifact/2028.carrot_magica_thunder/trigger/click/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/2028.carrot_magica_thunder/trigger/click/1.trigger

#> private
# @private
    #define score_holder $1KC.Current
    #define tag 1KC.NotEnoughMP

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    # MPチェック
        function api:mp/get_current
        execute store result score $1KC.Current Temporary run data get storage api: Return.CurrentMP
        execute unless score $1KC.Current Temporary matches 40.. run tag @s add 1KC.NotEnoughMP
        tellraw @s[tag=1KC.NotEnoughMP] {"text":"MPが足りない！","color":"red"}
        tag @s[tag=1KC.NotEnoughMP] remove CanUsed
        scoreboard players reset $1KC.Current Temporary
        data remove storage api: Return.CurrentMP
        tag @s remove 1KC.NotEnoughMP
    # CTチェック
        execute if entity @s[scores={1KC.Tick=1..}] run tag @s remove CanUsed
        execute if entity @s[scores={1KC.Tick=1..}] unless score @s 1KC.ErrorCT matches 1.. run tellraw @s {"text":"クールダウンが終わっていません。","color":"red"}

    # 使用不可ならループ発火
        execute if entity @s[tag=!CanUsed] unless score @s 1KC.ErrorCT matches 1.. run scoreboard players set @s 1KC.ErrorCT 20
        schedule function asset:artifact/2028.carrot_magica_thunder/trigger/click/schedule_loop 1t replace

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/2028.carrot_magica_thunder/trigger/click/3.main
