#> asset:artifact/2029.carrot_magica_air/trigger/click/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/2029.carrot_magica_air/trigger/click/1.trigger

#> private
# @private
    #define score_holder $1KD.Current
    #define tag 1KD.NotEnoughMP

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    # MPチェック
        function api:mp/get_current
        execute store result score $1KD.Current Temporary run data get storage api: Return.CurrentMP
        execute unless score $1KD.Current Temporary matches 30.. run tag @s add 1KD.NotEnoughMP
        tellraw @s[tag=1KD.NotEnoughMP] {"text":"MPが足りない！","color":"red"}
        tag @s[tag=1KD.NotEnoughMP] remove CanUsed
        scoreboard players reset $1KD.Current Temporary
        data remove storage api: Return.CurrentMP
        tag @s remove 1KD.NotEnoughMP
    # CTチェック
        execute if entity @s[scores={1KD.Tick=1..}] run tag @s remove CanUsed
        execute if entity @s[scores={1KD.Tick=1..}] unless score @s 1KD.ErrorCT matches 1.. run tellraw @s {"text":"クールダウンが終わっていません。","color":"red"}

    # 使用不可ならループ発火
        execute if entity @s[tag=!CanUsed] unless score @s 1KD.ErrorCT matches 1.. run scoreboard players set @s 1KD.ErrorCT 20
        schedule function asset:artifact/2029.carrot_magica_air/trigger/click/schedule_loop 1t replace

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/2029.carrot_magica_air/trigger/click/3.main
